#include "NetworkThread.h"
#include <QDebug>
#include <QDataStream>
#include <QtEndian>
#include <QCoreApplication>
#include <functional>

NetworkThread::NetworkThread(QObject *parent)
    : QThread(parent)
    , socket(nullptr)
    , serverPort(0)
    , shouldStop(false)
    , shouldConnect(false)
    , shouldDisconnect(false)
    , connectedState(false)
    , connectionInProgress(false)
    , expectedDataSize(0)
    , readingHeader(true)
{
    qDebug() << "NetworkThread created - using polling mode";
}

NetworkThread::~NetworkThread()
{
    stopThread();
    qDebug() << "NetworkThread destroyed";
}

void NetworkThread::connectToServer(const QString& host, int port)
{
    QMutexLocker locker(&mutex);
    qDebug() << "NetworkThread: Connect request to" << host << ":" << port;

    serverHost = "192.168.120.136";//host
    serverPort = 8080;//port
    shouldConnect = true;
    shouldDisconnect = false;
    connectionInProgress = false;

    if (!isRunning()) {
        start();
    }
}

void NetworkThread::disconnectFromServer()
{
    QMutexLocker locker(&mutex);
    qDebug() << "NetworkThread: Disconnect request";

    shouldDisconnect = true;
    shouldConnect = false;
}



void NetworkThread::sendMessage(const QByteArray& data)
{
    if (!isConnected()) {
        qWarning() << "NetworkThread: 未连接，无法发送消息";
        return;
    }

    // 构造数据包 - 使用QDataStream统一处理
    QByteArray packet;
    QDataStream stream(&packet, QIODevice::WriteOnly);
    stream.setByteOrder(QDataStream::BigEndian);

    // 写入4字节长度头
    stream << static_cast<quint32>(data.size());
    packet.append(data);

    qDebug() << "NetworkThread: 准备发送数据包 - 大小:" << data.size();

    QMutexLocker locker(&mutex);
    sendQueue.enqueue(packet);

    qDebug() << "NetworkThread: 消息已加入发送队列，队列大小:" << sendQueue.size();
}



bool NetworkThread::isConnected() const
{
    QMutexLocker locker(&mutex);
    return connectedState;
}

void NetworkThread::stopThread()
{
    qDebug() << "NetworkThread::stopThread called";

    mutex.lock();
    shouldStop = true;
    shouldConnect = false;
    shouldDisconnect = true;
    mutex.unlock();

    if (isRunning()) {
        if (!wait(5000)) {
            qWarning() << "NetworkThread: Force terminate";
            terminate();
            wait(1000);
        }
    }
}

void NetworkThread::run()
{
    qDebug() << "NetworkThread started - entering event loop";

    // 在工作线程中创建socket
    socket = new QTcpSocket();
    socket->setSocketOption(QAbstractSocket::LowDelayOption, 1);
    socket->setSocketOption(QAbstractSocket::KeepAliveOption, 1);

    // **关键：连接socket的信号到槽函数**
    connect(socket, &QTcpSocket::readyRead, this, &NetworkThread::onSocketReadyRead, Qt::DirectConnection);
    connect(socket, &QTcpSocket::connected, this, [this]() {
        qDebug() << "NetworkThread: Socket connected signal received";
        mutex.lock();
        connectedState = true;
        shouldConnect = false;
        connectionInProgress = false;
        mutex.unlock();

        emit connected();
        emit connectionStateChanged(true);
    }, Qt::DirectConnection);

    connect(socket, &QTcpSocket::disconnected, this, [this]() {
        qDebug() << "NetworkThread: Socket disconnected signal received";
        mutex.lock();
        connectedState = false;
        mutex.unlock();

        emit disconnected();
        emit connectionStateChanged(false);
    }, Qt::DirectConnection);

    // 主轮询循环（现在只处理连接/断开连接和发送）
    while (true) {
        // 检查是否需要停止线程
        mutex.lock();
        if (shouldStop) {
            mutex.unlock();
            break;
        }
        mutex.unlock();

        // 处理连接请求
        mutex.lock();
        if (shouldConnect && !connectionInProgress) {
            mutex.unlock();
            performConnection();
        } else {
            mutex.unlock();
        }

        // 处理断开连接请求
        mutex.lock();
        if (shouldDisconnect) {
            mutex.unlock();
            performDisconnection();
        } else {
            mutex.unlock();
        }

        // 如果已连接，处理发送数据
        mutex.lock();
        bool isConnectedNow = connectedState;
        mutex.unlock();

        if (isConnectedNow) {
            checkAndProcessSend();
        }

        // 让出CPU时间，允许事件循环处理
        QThread::msleep(10);

        // 处理这个线程的事件（包括socket事件）
        QCoreApplication::processEvents();
    }

    // 清理资源
    cleanupResources();
    qDebug() << "NetworkThread finished - exiting event loop";
}

void NetworkThread::performConnection()
{
    qDebug() << "NetworkThread: Connecting to" << serverHost << ":" << serverPort;

    mutex.lock();
    connectionInProgress = true;
    mutex.unlock();

    if (socket->state() != QAbstractSocket::UnconnectedState) {
        socket->disconnectFromHost();
        socket->waitForDisconnected(1000);
    }

    socket->connectToHost(serverHost, serverPort);
    if (socket->waitForConnected(5000)) {
        mutex.lock();
        connectedState = true;
        shouldConnect = false;
        connectionInProgress = false;
        mutex.unlock();

        qDebug() << "NetworkThread: Connected successfully";
        emitSignalSafely([this]() {
            emit connected();
            emit connectionStateChanged(true);
        });
    } else {
        mutex.lock();
        connectedState = false;
        shouldConnect = false;
        connectionInProgress = false;
        mutex.unlock();

        QString errorMsg = socket->errorString();
        qWarning() << "NetworkThread: Connection failed -" << errorMsg;
        emitSignalSafely([this, errorMsg]() {
            emit error(errorMsg);
            emit connectionStateChanged(false);
        });
    }
}

void NetworkThread::performDisconnection()
{
    qDebug() << "NetworkThread: Performing disconnection";

    if (socket && socket->state() != QAbstractSocket::UnconnectedState) {
        socket->disconnectFromHost();
        if (socket->state() != QAbstractSocket::UnconnectedState) {
            socket->waitForDisconnected(1000);
        }
    }

    mutex.lock();
    connectedState = false;
    shouldDisconnect = false;
    shouldConnect = false;
    connectionInProgress = false;
    mutex.unlock();

    resetReceiveState();

    emitSignalSafely([this]() {
        emit disconnected();
        emit connectionStateChanged(false);
    });

    qDebug() << "NetworkThread: Disconnection completed";
}

void NetworkThread::checkSocketState()
{
    if (!socket) return;

    QAbstractSocket::SocketState currentState = socket->state();

    if (currentState == QAbstractSocket::UnconnectedState && connectedState) {
        qWarning() << "NetworkThread: Unexpected socket disconnection";
        mutex.lock();
        connectedState = false;
        mutex.unlock();

        emitSignalSafely([this]() {
            emit disconnected();
            emit connectionStateChanged(false);
        });
    }
}

void NetworkThread::checkAndProcessReceive()
{

    if (!socket) return;
    readingHeader = true;
    while (socket->bytesAvailable() > 0) {
        qDebug()<<"Have things to read";
        if (readingHeader) {
            qDebug()<<"3";
            if (socket->bytesAvailable() >= 4) {
                // 使用QDataStream读取
                QByteArray headerData = socket->read(4);
                if (headerData.size() != 4) {
                    qWarning() << "NetworkThread: Incomplete header read";
                    resetReceiveState();
                    continue;
                }

                QDataStream stream(headerData);
                stream.setByteOrder(QDataStream::BigEndian); // 网络字节序

                quint32 messageSize;
                stream >> messageSize;
                expectedDataSize = messageSize;

                readingHeader = false;
                receiveBuffer.clear();

                qDebug() << "NetworkThread: Header parsed, expecting" << expectedDataSize << "bytes";

                if (expectedDataSize == 0 || expectedDataSize > 1024 * 1024) {
                    qWarning() << "NetworkThread: Invalid message size:" << expectedDataSize;

                    resetReceiveState();
                    continue;
                }
            } else {
                qDebug()<<"3";
                break;
            }
        }

        if (!readingHeader && expectedDataSize > 0) {
            qint64 remainingBytes = expectedDataSize - receiveBuffer.size();
            qint64 availableBytes = socket->bytesAvailable();

            if (availableBytes > 0) {
                qint64 bytesToRead = std::min(remainingBytes, availableBytes);
                QByteArray data = socket->read(bytesToRead);
                receiveBuffer.append(data);

                qDebug() << "NetworkThread: Data chunk received:" << data.size()
                         << "total:" << receiveBuffer.size() << "/" << expectedDataSize;
            }

            if (receiveBuffer.size() >= expectedDataSize) {
                qDebug() << "NetworkThread: Complete message received";
                processReceivedData();
                resetReceiveState();
            }
        }
    }
}

void NetworkThread::checkAndProcessSend()
{
    QMutexLocker locker(&mutex);

    while (!sendQueue.isEmpty()) {
        QByteArray data = sendQueue.dequeue();
        locker.unlock();

        if (!writeDataToSocket(data)) {
            qWarning() << "NetworkThread: Failed to send data";
            // 写入失败，重新放回队列头部
            mutex.lock();
            sendQueue.prepend(data);
            mutex.unlock();
            break;
        }

        locker.relock();
    }
}

bool NetworkThread::writeDataToSocket(const QByteArray& data)
{
    if (!socket || !socket->isWritable()) {
        qWarning() << "NetworkThread: Socket not writable";
        return false;
    }

    // 直接发送已经格式化好的数据包（包含头部）
    qint64 written = socket->write(data);
    if (written == data.size()) {
        socket->flush();
        qDebug() << "NetworkThread: Sent" << written << "bytes of data";
        return true;
    } else {
        qWarning() << "NetworkThread: Only wrote" << written << "of" << data.size() << "bytes";
        return false;
    }
}

void NetworkThread::processReceivedData()
{
    if (receiveBuffer.isEmpty()) return;

    qDebug() << "NetworkThread: Processing received data of size:" << receiveBuffer.size();

    // 发射消息接收信号
    QByteArray dataCopy = receiveBuffer;
    emitSignalSafely([this, dataCopy]() {
        emit messageReceived(dataCopy);
    });
}

void NetworkThread::resetReceiveState()
{
    receiveBuffer.clear();
    expectedDataSize = 0;
    readingHeader = true;
}

void NetworkThread::cleanupResources()
{
    if (socket) {
        if (socket->state() != QAbstractSocket::UnconnectedState) {
            socket->disconnectFromHost();
            socket->waitForDisconnected(1000);
        }
        delete socket;
        socket = nullptr;
    }

    mutex.lock();
    sendQueue.clear();
    connectedState = false;
    connectionInProgress = false;
    shouldConnect = false;
    shouldDisconnect = false;
    mutex.unlock();

    resetReceiveState();
}

void NetworkThread::emitSignalSafely(const std::function<void()>& signalEmitter)
{
    // 由于Qt::QueuedConnection的特性，信号会在目标线程的事件循环中被处理
    // 这样可以安全地从任何线程发射信号
    QMetaObject::invokeMethod(this, signalEmitter, Qt::QueuedConnection);
}


void NetworkThread::onSocketReadyRead()
{
    if (!socket) {
        qDebug() << "NetworkThread: socket is null in onSocketReadyRead";
        return;
    }

    receiveBuffer.append(socket->readAll());
    
    while (true) {
        if (readingHeader) {
            if (receiveBuffer.size() < 4) {
                qDebug() << "NetworkThread: 等待完整头部，当前大小:" 
                         << receiveBuffer.size();
                return;
            }

            // 使用QDataStream解析头部，与发送保持一致
            QByteArray headerData = receiveBuffer.left(4);
            QDataStream headerStream(headerData);
            headerStream.setByteOrder(QDataStream::BigEndian);
            
            headerStream >> expectedDataSize;

            qDebug() << "NetworkThread: 收到头部，期望数据大小:" << expectedDataSize << "字节";

            receiveBuffer.remove(0, 4);
            readingHeader = false;

            if (expectedDataSize == 0 || expectedDataSize > 1024 * 1024) {
                qWarning() << "NetworkThread: 无效的消息大小:" << expectedDataSize;
                resetReceiveState();
                return;
            }
        }

        if (!readingHeader) {
            if (receiveBuffer.size() < expectedDataSize) {
                qDebug() << "NetworkThread: 等待完整消息，已收到:" 
                         << receiveBuffer.size() << "/" << expectedDataSize;
                return;
            }

            QByteArray messageData = receiveBuffer.left(expectedDataSize);
            receiveBuffer.remove(0, expectedDataSize);

            qDebug() << "NetworkThread: 完整消息已接收:" << messageData.size() << "字节";
            qDebug() << "NetworkThread: 消息内容:" << messageData;

            emit messageReceived(messageData);
            resetReceiveState();

            if (receiveBuffer.isEmpty()) {
                break;
            }
        }
    }
}

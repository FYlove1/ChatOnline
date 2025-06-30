#ifndef NETWORKTHREAD_H
#define NETWORKTHREAD_H

#include <QThread>
#include <QTcpSocket>
#include <QMutex>
#include <QQueue>
#include <QWaitCondition>
#include <QDateTime>

class NetworkThread : public QThread
{
    Q_OBJECT

public:
    explicit NetworkThread(QObject *parent = nullptr);
    ~NetworkThread();

    void connectToServer(const QString& host, int port);
    void disconnectFromServer();
    void sendMessage(const QByteArray& data);
    bool isConnected() const;
    void stopThread();
    void onSocketReadyRead();
signals:
    void connected();
    void disconnected();
    void messageReceived(const QByteArray& data);
    void error(const QString& errorString);
    void connectionStateChanged(bool connected);


protected:
    void run() override;

private:
    // 网络相关
    QTcpSocket* socket;
    QString serverHost;
    int serverPort;

    // 线程控制
    mutable QMutex mutex;
    volatile bool shouldStop;
    volatile bool shouldConnect;
    volatile bool shouldDisconnect;
    volatile bool connectedState;
    volatile bool connectionInProgress;

    // 发送队列
    QQueue<QByteArray> sendQueue;

    // 接收缓冲区
    QByteArray receiveBuffer;
    uint32_t expectedDataSize;
    bool readingHeader;

    // 轮询间隔（毫秒）
    static const int POLL_INTERVAL_MS = 40;

    // 方法
    void performConnection();
    void performDisconnection();
    void checkAndProcessReceive();
    void checkAndProcessSend();
    void processReceivedData();
    void resetReceiveState();
    bool writeDataToSocket(const QByteArray& data);
    void emitSignalSafely(const std::function<void()>& signalEmitter);
    void checkSocketState();
    void cleanupResources();
};

#endif // NETWORKTHREAD_H

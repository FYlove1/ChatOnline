#include "NetworkManager.h"
#include <QDebug>
#include <QThread>
#include <QJsonParseError>
#include <QJsonArray> // 添加这一行
#include <QJsonValue> // 添加这一行
NetworkManager* NetworkManager::m_instance = nullptr;
QMutex NetworkManager::m_mutex;

NetworkManager* NetworkManager::instance()
{
    if (m_instance == nullptr) {
        QMutexLocker locker(&m_mutex);
        if (m_instance == nullptr) {
            m_instance = new NetworkManager();
        }
    }
    return m_instance;
}

NetworkManager::NetworkManager(QObject* parent)
    : QObject(parent)
    , m_networkThread(nullptr)
    , m_autoSendTimer(new QTimer(this))
    , m_isConnected(false)
    , m_isLoggedIn(false)
    , m_messageCount(0)
    , m_sentCount(0)
    , m_receivedCount(0)
    , m_autoSendEnabled(false)
    , m_autoSendInterval(5)
{
    // 创建网络线程
    m_networkThread = new NetworkThread(this);

    // 连接信号
    connect(m_networkThread, &NetworkThread::connected,
            this, &NetworkManager::onNetworkConnected);
    connect(m_networkThread, &NetworkThread::disconnected,
            this, &NetworkManager::onNetworkDisconnected);
    connect(m_networkThread, &NetworkThread::messageReceived,
            this, &NetworkManager::onMessageReceived);
    connect(m_networkThread, &NetworkThread::error,
            this, &NetworkManager::onNetworkError);
    connect(m_networkThread, &NetworkThread::connectionStateChanged,
            this, &NetworkManager::onConnectionStateChanged);

    // 配置自动发送定时器
    m_autoSendTimer->setSingleShot(false);
    connect(m_autoSendTimer, &QTimer::timeout, this, &NetworkManager::onAutoSendTimer);

    qDebug() << "NetworkManager initialized";
}

NetworkManager::~NetworkManager()
{
    if (m_networkThread) {
        m_networkThread->stopThread();
        m_networkThread->deleteLater();
    }

    if (m_autoSendTimer->isActive()) {
        m_autoSendTimer->stop();
    }
}

// 属性访问器实现
bool NetworkManager::isConnected() const
{
    return m_isConnected;
}

bool NetworkManager::isLoggedIn() const
{
    return m_isLoggedIn;
}

QString NetworkManager::currentAccount() const
{
    return m_currentAccount;
}

int NetworkManager::messageCount() const
{
    return m_messageCount;
}

int NetworkManager::sentCount() const
{
    return m_sentCount;
}

int NetworkManager::receivedCount() const
{
    return m_receivedCount;
}

// QML接口实现
bool NetworkManager::connectToServer(const QString& serverAddress, int port)
{
    if (serverAddress.trimmed().isEmpty()) {
        emit errorMessage("Server address cannot be empty");
        return false;
    }

    if (m_isConnected) {
        emit errorMessage("Already connected to server");
        return false;
    }

    qDebug() << "Connecting to" << serverAddress << ":" << port;
    emit systemMessage(QString("Connecting to %1:%2...").arg(serverAddress).arg(port));

    m_networkThread->connectToServer(serverAddress, port);
    return true;
}

void NetworkManager::disconnectFromServer()
{
    if (!m_isConnected) {
        emit errorMessage("Not connected to server");
        return;
    }

    emit systemMessage("Disconnecting from server...");
    m_networkThread->disconnectFromServer();

    // 停止自动发送
    if (m_autoSendEnabled) {
        stopAutoSend();
    }
}

bool NetworkManager::login(const QString& account, const QString& password)
{

    if (!m_isConnected) {
        emit errorMessage("Please connect to server first");
        return false;
    }

    if (account.trimmed().isEmpty() || password.trimmed().isEmpty()) {
        emit errorMessage("Account and password cannot be empty");
        return false;
    }

    if (m_isLoggedIn) {
        emit errorMessage("Already logged in");
        return false;
    }

    m_currentAccount = account.trimmed();
    m_currentPassword = password.trimmed();

    QJsonObject extraData;
    extraData["Account"] = m_currentAccount;
    extraData["Password"] = m_currentPassword;

    QByteArray loginData = createJsonMessage("1", m_currentPassword, extraData);

    emitDebugMessage("SENT", loginData);
    m_networkThread->sendMessage(loginData);

    emit systemMessage(QString("Sending login request for account: %1").arg(m_currentAccount));
    return true;
}

bool NetworkManager::sendMessage(const QString& message, const QString& target)
{
    if (!m_isConnected) {
        emit errorMessage("Not connected to server");
        return false;
    }

    if (message.trimmed().isEmpty()) {
        emit errorMessage("Message cannot be empty");
        return false;
    }

    QJsonObject extraData;
    extraData["Account"] = m_currentAccount;
    extraData["Target"] = target.trimmed();

    QByteArray messageData = createJsonMessage("3", message.trimmed(), extraData);

    emitDebugMessage("SENT", messageData);
    m_networkThread->sendMessage(messageData);

    m_sentCount++;
    updateMessageCount();

    emit systemMessage(QString("Me: %1").arg(message));
    return true;
}

void NetworkManager::logout()
{
    if (m_isLoggedIn) {
        m_isLoggedIn = false;
        m_currentAccount.clear();
        m_currentPassword.clear();
        emit loginStateChanged(false);
        emit accountChanged("");
        emit systemMessage("Logged out");
    }
}

void NetworkManager::clearMessageCount()
{
    m_messageCount = 0;
    m_sentCount = 0;
    m_receivedCount = 0;
    updateMessageCount();
    emit systemMessage("Message count cleared");
}

void NetworkManager::startAutoSend(const QString& message, int intervalSeconds)
{
    if (!m_isConnected) {
        emit errorMessage("Please connect to server first");
        return;
    }

    if (message.trimmed().isEmpty()) {
        emit errorMessage("Auto send message cannot be empty");
        return;
    }

    if (intervalSeconds < 1) {
        emit errorMessage("Auto send interval must be at least 1 second");
        return;
    }

    m_autoSendMessage = message.trimmed();
    m_autoSendInterval = intervalSeconds;
    m_autoSendEnabled = true;

    m_autoSendTimer->start(intervalSeconds * 1000);
    emit systemMessage("Auto send started");
}

void NetworkManager::stopAutoSend()
{
    if (m_autoSendEnabled) {
        m_autoSendEnabled = false;
        m_autoSendTimer->stop();
        emit systemMessage("Auto send stopped");
    }
}

bool NetworkManager::isAutoSendEnabled() const
{
    return m_autoSendEnabled;
}

// 网络事件处理槽函数
void NetworkManager::onNetworkConnected()
{
    qDebug() << "NetworkManager: Connected to server";
    m_isConnected = true;
    emit connectionStateChanged(true);
    emit connectResult(true, "Connected to server successfully");
    emit systemMessage("Connected to server successfully");
}

void NetworkManager::onNetworkDisconnected()
{
    qDebug() << "NetworkManager: Disconnected from server";
    resetState();
    emit connectionStateChanged(false);
    emit connectResult(false, "Disconnected from server");
    emit systemMessage("Disconnected from server");
}

void NetworkManager::onNetworkError(const QString& errorString)
{
    qDebug() << "NetworkManager: Network error:" << errorString;
    resetState();
    emit connectionStateChanged(false);
    emit connectResult(false, errorString);
    emit errorMessage(QString("Network error: %1").arg(errorString));
}

void NetworkManager::onMessageReceived(const QByteArray& data)
{
    m_receivedCount++;
    updateMessageCount();

    emitDebugMessage("RECEIVED", data);
    processReceivedMessage(data);
}

void NetworkManager::onConnectionStateChanged(bool connected)
{
    qDebug() << "NetworkManager: Connection state changed to:" << connected;
    m_isConnected = connected;
    emit connectionStateChanged(connected);
}

void NetworkManager::onAutoSendTimer()
{
    if (m_autoSendEnabled && m_isConnected && !m_autoSendMessage.isEmpty()) {
        sendMessage(m_autoSendMessage + " [Auto]");
    }
}

// 内部方法实现
void NetworkManager::processReceivedMessage(const QByteArray& data)
{
    qDebug() << "NetworkManager: Processing received data:" << data;

    QJsonParseError error;
    QJsonDocument doc = QJsonDocument::fromJson(data, &error);

    if (error.error != QJsonParseError::NoError) {
        qDebug() << "NetworkManager: JSON parse error:" << error.errorString();
        emit systemMessage(QString("Received raw data: %1").arg(QString::fromUtf8(data)));
        return;
    }

    QJsonObject obj = doc.object();
    qDebug() << "NetworkManager: Received JSON:" << obj;

    int type = obj["OperationType"].toInt();
    QString content = obj["Content"].toString();

    switch (type) {
    case 1: // 登录响应
    {
        QString success = obj["Success"].toString();
        if (success == "1") {
            m_isLoggedIn = true;
            emit loginStateChanged(true);
            emit accountChanged(m_currentAccount);
            emit loginResult(true, "Login successful");
            emit systemMessage("Login successful!");
        } else {
            emit loginResult(false, content);
            emit errorMessage(QString("Login failed: %1").arg(content));
        }
    }
    break;

    case 2: // 系统消息
        emit systemMessage(content);
        break;

    case 3: // 发送消息响应
    {
        QString success = obj["Success"].toString();
        QString message = obj["Message"].toString();
        bool isSuccess = (success == "1");
        emit messageSent(isSuccess, message);

        if (isSuccess) {
            emit systemMessage("Message sent successfully");
        } else {
            emit errorMessage(QString("Send failed: %1").arg(message));
        }
    }
    break;

    case 4: // 接收到其他用户消息
    {
        QString sender = obj["Sender"].toString();
        QString timestamp = obj["timestamp"].toString();
        if (timestamp.isEmpty()) {
            timestamp = getCurrentTimestamp();
        }
        emit messageReceived(sender, content, timestamp);
    }
    break;


    case 5: // 朋友列表响应
    {
        QString success = obj["Success"].toString();
        if (success == "1") {
            // 清空当前列表
            m_friendList.clear();

            // 解析朋友列表 - 使用正确的键名 "Friends"
            QJsonArray friendArray = obj["Friends"].toArray();

            // 调试输出
            qDebug() << "FriendList JSON Array:";
            qDebug() << "  Array size:" << friendArray.size();
            qDebug() << "  Array content:" << friendArray;

            // 添加到列表
            for (const QJsonValue& value : friendArray) {
                m_friendList.append(value.toString());
            }

            // 调试输出 - 最终列表
            qDebug() << "FriendList QStringList:";
            qDebug() << "  List size:" << m_friendList.size();
            qDebug() << "  List content:" << m_friendList;

            emit friendListChanged();
            emit friendListReceived(m_friendList);
            emit systemMessage("Friend list received successfully");
        } else {
            qDebug() << "Friend list request failed. Content:" << content;
            emit errorMessage(QString("Failed to get friend list: %1").arg(content));
        }

    }
    break;
    case -1: // 服务器错误
        emit errorMessage(QString("Server error: %1").arg(content));
        break;

    default:
        emit systemMessage(QString("Unknown message type [%1]: %2").arg(type).arg(content));
        break;
    }
}

QByteArray NetworkManager::createJsonMessage(const QString& type, const QString& content, const QJsonObject& extraData)
{
    QJsonObject message;
    message["Type"] = type;
    message["Content"] = content;
    message["timestamp"] = getCurrentTimestamp();

    // 添加额外数据
    for (auto it = extraData.begin(); it != extraData.end(); ++it) {
        message[it.key()] = it.value();
    }

    QJsonDocument doc(message);
    return doc.toJson(QJsonDocument::Compact);
}

QString NetworkManager::getCurrentTimestamp()
{
    return QDateTime::currentDateTime().toString("hh:mm:ss");
}

void NetworkManager::updateMessageCount()
{
    m_messageCount = m_sentCount + m_receivedCount;
    emit messageCountChanged(m_messageCount);
    emit sentCountChanged(m_sentCount);
    emit receivedCountChanged(m_receivedCount);
}

void NetworkManager::resetState()
{
    m_isConnected = false;
    m_isLoggedIn = false;
    m_currentAccount.clear();
    m_currentPassword.clear();

    if (m_autoSendEnabled) {
        stopAutoSend();
    }

    emit loginStateChanged(false);
    emit accountChanged("");
}

void NetworkManager::emitDebugMessage(const QString& type, const QByteArray& data)
{
    QString debugInfo = QString("[%1] %2 bytes: %3")
    .arg(type)
        .arg(data.size())
        .arg(QString::fromUtf8(data));
    emit debugMessage(type, debugInfo);
}

void NetworkManager::requestFriendList(const QString& account)
{
    if (!m_isConnected) {
        emit errorMessage("Please connect to server first");
        return;
    }

    if (!m_isLoggedIn) {
        emit errorMessage("Please login first");
        return;
    }

    if (account.trimmed().isEmpty()) {
        emit errorMessage("Account cannot be empty");
        return;
    }

    qDebug() << "Requesting friend list for account:" << account;

    QJsonObject extraData;
    extraData["Account"] = account.trimmed();

    // 使用操作类型 4 表示获取朋友列表请求
    QByteArray requestData = createJsonMessage("4", "GetFriendList", extraData);

    emitDebugMessage("SENT", requestData);
    m_networkThread->sendMessage(requestData);

    emit systemMessage(QString("Requesting friend list for: %1").arg(account));
}

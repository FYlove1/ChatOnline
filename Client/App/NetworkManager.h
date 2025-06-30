#ifndef NETWORKMANAGER_H
#define NETWORKMANAGER_H

#include <QObject>
#include <QTimer>
#include <QJsonObject>
#include <QJsonDocument>
#include <QDateTime>
#include <QMutex>
#include <QQueue>
#include "NetworkThread.h"

class NetworkManager : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool isConnected READ isConnected NOTIFY connectionStateChanged)
    Q_PROPERTY(bool isLoggedIn READ isLoggedIn NOTIFY loginStateChanged)
    Q_PROPERTY(QString currentAccount READ currentAccount NOTIFY accountChanged)
    Q_PROPERTY(int messageCount READ messageCount NOTIFY messageCountChanged)
    Q_PROPERTY(int sentCount READ sentCount NOTIFY sentCountChanged)
    Q_PROPERTY(int receivedCount READ receivedCount NOTIFY receivedCountChanged)
    Q_PROPERTY(QStringList friendList READ friendList NOTIFY friendListChanged) // 添加属性


public:
    static NetworkManager* instance();

    // 属性访问器
    bool isConnected() const;
    bool isLoggedIn() const;
    QString currentAccount() const;
    int messageCount() const;
    int sentCount() const;
    int receivedCount() const;

    // QML调用接口
    Q_INVOKABLE bool connectToServer(const QString& serverAddress, int port);
    Q_INVOKABLE void disconnectFromServer();
    Q_INVOKABLE bool login(const QString& account, const QString& password);
    Q_INVOKABLE bool sendMessage(const QString& message, const QString& target = "");
    Q_INVOKABLE void logout();
    Q_INVOKABLE void clearMessageCount();
    Q_INVOKABLE void requestFriendList(const QString& account);  // 新槽函数：请求朋友列表

    // 自动发送功能
    Q_INVOKABLE void startAutoSend(const QString& message, int intervalSeconds);
    Q_INVOKABLE void stopAutoSend();
    Q_INVOKABLE bool isAutoSendEnabled() const;

    QStringList friendList() const { return m_friendList; } // 添加访问器

signals:
    // 连接状态信号
    void connectionStateChanged(bool connected);
    void connectResult(bool success, const QString& message);

    // 登录状态信号
    void loginStateChanged(bool loggedIn);
    void loginResult(bool success, const QString& message);

    // 消息相关信号
    void messageReceived(const QString& sender, const QString& content, const QString& timestamp);
    void messageSent(bool success, const QString& message);
    void systemMessage(const QString& message);
    void errorMessage(const QString& error);

    // 统计信号
    void messageCountChanged(int total);
    void sentCountChanged(int count);
    void receivedCountChanged(int count);
    void accountChanged(const QString& account);
    void friendListReceived(const QStringList& friendList);  // 新信号：朋友列表接收成功
    void friendListChanged(); // 添加信号

    // 调试信号
    void debugMessage(const QString& type, const QString& data);

private slots:
    // NetworkThread信号处理
    void onNetworkConnected();
    void onNetworkDisconnected();
    void onNetworkError(const QString& errorString);
    void onMessageReceived(const QByteArray& data);
    void onConnectionStateChanged(bool connected);



    // 自动发送定时器
    void onAutoSendTimer();

private:
    explicit NetworkManager(QObject* parent = nullptr);
    ~NetworkManager();

    // 单例相关
    static NetworkManager* m_instance;
    static QMutex m_mutex;

    // 核心组件
    NetworkThread* m_networkThread;
    QTimer* m_autoSendTimer;

    // 状态管理
    bool m_isConnected;
    bool m_isLoggedIn;
    QString m_currentAccount;
    QString m_currentPassword;

    // 统计数据
    int m_messageCount;
    int m_sentCount;
    int m_receivedCount;
    QStringList m_friendList;  // 存储朋友列表

    // 自动发送
    bool m_autoSendEnabled;
    QString m_autoSendMessage;
    int m_autoSendInterval;

    // 消息队列（用于连接断开时缓存消息）
    QQueue<QByteArray> m_messageQueue;
    QMutex m_queueMutex;

    // 内部方法
    void processReceivedMessage(const QByteArray& data);
    QByteArray createJsonMessage(const QString& type, const QString& content, const QJsonObject& extraData = QJsonObject());
    QString getCurrentTimestamp();
    void updateMessageCount();
    void resetState();
    void emitDebugMessage(const QString& type, const QByteArray& data);

    // 禁用拷贝构造和赋值
    NetworkManager(const NetworkManager&) = delete;
    NetworkManager& operator=(const NetworkManager&) = delete;
};

#endif // NETWORKMANAGER_H

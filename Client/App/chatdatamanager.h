#ifndef CHATDATAMANAGER_H
#define CHATDATAMANAGER_H

#include <QObject>
#include <QJsonDocument>
#include <QJsonArray>
#include <QJsonObject>
#include <QStandardPaths>
#include <QDir>
#include <QFile>
#include <QDebug>
#include <QVariantList>
#include <QStringList>

class ChatDataManager : public QObject
{
    Q_OBJECT

public:
    static ChatDataManager* instance();

    // 加载指定用户与特定联系人的聊天记录
    Q_INVOKABLE QVariantList loadMessages(const QString& userId, const QString& contactId);

    // 保存指定用户与特定联系人的聊天记录
    Q_INVOKABLE bool saveMessages(const QString& userId, const QString& contactId, const QVariantList& messages);

    // 获取所有用户的列表（每个用户一个文件夹）
    Q_INVOKABLE QStringList getUserList();

    // 获取指定用户的所有联系人列表（JSON文件列表）
    Q_INVOKABLE QStringList getContactList(const QString& userId);

private:
    explicit ChatDataManager(QObject *parent = nullptr);

    // 获取用户数据目录的路径
    QString getUserDataPath(const QString& userId) const;

    // 获取联系人数据文件的完整路径
    QString getContactFilePath(const QString& userId, const QString& contactId) const;

    // 确保目录存在，不存在则创建
    bool ensurePathExists(const QString& path) const;

    QString m_baseDataPath;  // 基础数据存储目录
};

#endif // CHATDATAMANAGER_H

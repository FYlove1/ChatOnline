#include "chatdatamanager.h"

ChatDataManager* ChatDataManager::instance()
{
    static ChatDataManager* instance = new ChatDataManager();
    return instance;
}

ChatDataManager::ChatDataManager(QObject *parent)
    : QObject(parent)
{
    // 设置基础数据存储目录为AppData/Roaming/<应用名>
    m_baseDataPath = QStandardPaths::writableLocation(QStandardPaths::AppDataLocation);

    // 确保基础目录存在
    ensurePathExists(m_baseDataPath);
    qDebug() << "Chat data base directory:" << m_baseDataPath;
}

bool ChatDataManager::ensurePathExists(const QString& path) const
{
    QDir dir(path);
    if (!dir.exists()) {
        return dir.mkpath(".");
    }
    return true;
}

QString ChatDataManager::getUserDataPath(const QString& userId) const
{
    return m_baseDataPath + "/" + userId;
}

QString ChatDataManager::getContactFilePath(const QString& userId, const QString& contactId) const
{
    return getUserDataPath(userId) + "/" + contactId + ".json";
}

QVariantList ChatDataManager::loadMessages(const QString& userId, const QString& contactId)
{
    QString filePath = getContactFilePath(userId, contactId);
    QFile file(filePath);

    // 文件不存在时返回空列表
    if (!file.exists()) {
        qDebug() << "Chat file not found, creating empty:" << filePath;

        // 确保用户目录存在
        ensurePathExists(getUserDataPath(userId));

        // 创建空文件
        if (file.open(QIODevice::WriteOnly)) {
            file.write("[]"); // 空数组
            file.close();
        } else {
            qWarning() << "Failed to create empty chat file:" << filePath;
        }

        return QVariantList();
    }

    if (!file.open(QIODevice::ReadOnly)) {
        qWarning() << "Failed to open chat file:" << filePath;
        return QVariantList();
    }

    // 读取并解析JSON
    QJsonParseError error;
    QJsonDocument doc = QJsonDocument::fromJson(file.readAll(), &error);
    file.close();

    if (error.error != QJsonParseError::NoError) {
        qWarning() << "JSON parse error:" << error.errorString();
        return QVariantList();
    }

    if (!doc.isArray()) {
        qWarning() << "Chat file is not an array:" << filePath;
        return QVariantList();
    }

    // 转换为QVariantList
    return doc.array().toVariantList();
}

bool ChatDataManager::saveMessages(const QString& userId, const QString& contactId, const QVariantList& messages)
{
    qDebug()<<"CPPs Message is"<<messages;

    // 确保用户目录存在
    if (!ensurePathExists(getUserDataPath(userId))) {
        qWarning() << "Failed to create user directory:" << userId;
        return false;
    }

    QJsonArray jsonArray;
    for (const QVariant& message : messages) {
        // 从消息中提取所需属性
        QVariantMap msgMap = message.toMap();
        QJsonObject jsonMsg;
        jsonMsg["isMine"] = msgMap["isMine"].toString();
        jsonMsg["text"] = msgMap["text"].toString();
        jsonMsg["time"] = msgMap["time"].toString();
        jsonArray.append(jsonMsg);
    }

    // 创建JSON文档
    QJsonDocument doc(jsonArray);

    // 写入文件
    QString filePath = getContactFilePath(userId, contactId);
    QFile file(filePath);

    if (!file.open(QIODevice::WriteOnly)) {
        qWarning() << "Failed to open file for writing:" << filePath;
        return false;
    }

    file.write(doc.toJson());
    file.close();

    qDebug() << "Saved messages for user" << userId << "with contact" << contactId;
    return true;
}

QStringList ChatDataManager::getUserList()
{
    QStringList users;
    QDir baseDir(m_baseDataPath);

    // 查找所有子目录（每个用户一个目录）
    QStringList dirs = baseDir.entryList(QDir::Dirs | QDir::NoDotAndDotDot);
    for (const QString& dir : dirs) {
        users << dir;
    }

    return users;
}

QStringList ChatDataManager::getContactList(const QString& userId)
{
    QStringList contacts;
    QDir userDir(getUserDataPath(userId));

    // 确保目录存在
    if (!userDir.exists()) {
        return contacts;
    }

    // 查找所有JSON文件
    QStringList files = userDir.entryList(QStringList() << "*.json", QDir::Files);

    // 移除扩展名获取联系人ID
    for (const QString& file : files) {
        contacts << file.left(file.length() - 5); // 移除 .json 后缀
    }

    return contacts;
}

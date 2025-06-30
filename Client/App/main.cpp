// Copyright (C) 2024 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

#include <QApplication>
#include <QQmlApplicationEngine>
#include <QMainWindow>
#include "autogen/environment.h"
#include "NetworkManager.h"
#include "chatdatamanager.h"
int main(int argc, char *argv[])
{
    set_qt_environment();
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(mainQmlFile);
    qmlRegisterSingletonType<NetworkManager>(
        "MyNetWork", 1, 0, "NetworkManager",
        [](QQmlEngine*, QJSEngine*) -> QObject* {
            return NetworkManager::instance(); // 返回单例实例
        });

    qmlRegisterSingletonType<ChatDataManager>(
        "MyNetWork", 1, 0, "ChatDataManager",
        [](QQmlEngine*, QJSEngine*) -> QObject* {
            return ChatDataManager::instance(); // 返回单例实例
        });

    QObject::connect(
                &engine, &QQmlApplicationEngine::objectCreated, &app,
                [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);

    engine.addImportPath(QCoreApplication::applicationDirPath() + "/qml");
    engine.addImportPath(":/");
    //engine.load(url);

    //engine.loadFromModule("ChatClientContent","Test2");
    engine.loadFromModule("ChatClientContent","OfficialApp");
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}

// int main(int argc, char *argv[])
// {
//     QGuiApplication app(argc, argv);

//     QQmlApplicationEngine engine;


//     qmlRegisterSingletonType<NetworkManager>(
//         "MyNetWork", 1, 0, "NetworkManager",
//         [](QQmlEngine*, QJSEngine*) -> QObject* {
//             return NetworkManager::instance(); // 返回单例实例
//         });
//     QObject::connect(
//         &engine,
//         &QQmlApplicationEngine::objectCreationFailed,
//         &app,
//         []() { QCoreApplication::exit(-1); },
//         Qt::QueuedConnection);


//     engine.loadFromModule("ChatTest", "Main");


//     return app.exec();
// }


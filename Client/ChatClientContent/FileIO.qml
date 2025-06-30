import QtQuick 2.15
import Qt.labs.settings 1.1

QtObject {
    //id: fileIO

    // 获取应用程序数据目录
    function getAppDataPath() {
        // Windows 应用程序数据目录
        return "file:///" + Qt.application.name + "/data"
    }

    // 获取用户数据目录
    function getUserDataPath(userId) {
        return getAppDataPath() + "/" + userId
    }

    // 确保目录存在
    function ensureDirExists(path) {
        var dir = Qt.createQmlObject('import QtQuick 2.15; import Qt.labs.folderlistmodel 2.15; FolderListModel {}', fileIO)
        dir.folder = path
        if (!dir.exists) {
            var cmd = Qt.createQmlObject('import QtQuick 2.15; import Qt.labs.platform 1.1; Process {}', fileIO)
            cmd.program = "mkdir"
            cmd.arguments = ["-p", path.replace("file:///", "")]
            cmd.start()
            cmd.waitForFinished()
        }
    }

    // 写入JSON文件
    function writeJson(filePath, data) {
        var doc = Qt.createQmlObject('import QtQuick 2.15; TextDocument {}', fileIO)
        doc.text = JSON.stringify(data, null, 2)

        ensureDirExists(filePath.substring(0, filePath.lastIndexOf("/")))

        var file = Qt.createQmlObject('import QtQuick 2.15; import Qt.labs.platform 1.1; File {}', fileIO)
        file.url = filePath
        file.write(doc.text)
    }

    // 读取JSON文件
    function readJson(filePath) {
        var file = Qt.createQmlObject('import QtQuick 2.15; import Qt.labs.platform 1.1; File {}', fileIO)
        file.url = filePath

        if (file.exists) {
            file.open(File.ReadOnly)
            var content = file.readAll()
            file.close()
            try {
                return JSON.parse(content)
            } catch (e) {
                console.error("JSON解析错误:", e, "在文件:", filePath)
                return []
            }
        }
        return []
    }
}

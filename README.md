# Chat Online - 高效的聊天软件系统

## 概述
Chat Online 是一款功能强大的聊天软件，采用服务端与客户端分离的架构设计。服务端运用 C++ 语言，结合 epoll 技术和线程池机制，同时借助 MySQL 数据库实现数据持久化，确保系统具备高并发处理能力和稳定性。客户端则基于 Qt Quick 框架开发，采用任务队列和网络线程分离的方式，有效避免界面卡顿，为用户提供流畅的交互体验。整个系统多处采用单例设计模式，优化资源管理和代码结构。

## 功能特性
### 服务端
- **高并发处理**：使用 epoll 实现高效的 I/O 多路复用，能够同时处理大量客户端连接，提升系统并发性能。
- **线程池管理**：引入线程池机制，合理分配系统资源，减少线程创建和销毁的开销，提高任务处理效率。
- **数据持久化**：集成 MySQL 数据库，用于存储用户信息、聊天记录等数据，保证数据的安全性和可追溯性。
- **事件驱动架构**：通过事件循环机制，实时响应客户端的连接、读写等操作，确保系统的实时性。

### 客户端
- **流畅的用户界面**：基于 Qt Quick 框架构建，提供美观、易用的用户界面，支持多种交互方式。
- **网络线程分离**：将网络操作与界面线程分离，使用任务队列管理网络请求，避免界面卡顿，提升用户体验。
- **数据存储**：实现本地数据存储功能，将聊天记录保存到本地文件，方便用户离线查看。
- **单例模式优化**：采用单例设计模式管理网络连接和数据存储，确保资源的唯一性和高效利用。

## 代码结构
### 服务端
```cpp
// ClientConnectionManager.h
class ClientConnectionManager {
public:
    static ClientConnectionManager& getInstance();
    bool initSocket();
    bool initEpoll();
    void startEventLoop();
    // 其他方法...
};

// ThreadPool.h
class ThreadPool {
public:
    static ThreadPool& getInstance();
    void init(int threadNum);
    void addTask(std::function<void()> task);
    // 其他方法...
};

// Sql_Manager.h
class Sql_Manager {
public:
    static Sql_Manager& getInstance();
    bool initDB(const std::string& host, const std::string& user, 
                const std::string& password, const std::string& dbName);
    bool executeQuery(const std::string& query);
    // 其他方法...
};

// main.cpp
int main() {
    // 初始化数据库
    if (!Sql_Manager::getInstance().initDB("localhost", "user", "password", "chat_db")) {
        std::cerr << "Failed to connect to database!" << std::endl;
        return -1;
    }
    
    // 初始化连接管理器
    if (!ClientConnectionManager::getInstance().initSocket() || 
        !ClientConnectionManager::getInstance().initEpoll()) {
        std::cerr << "Failed to initialize socket or epoll!" << std::endl;
        return -1;
    }
    
    // 初始化线程池
    ThreadPool::getInstance().init(10);
    
    // 启动事件循环
    ClientConnectionManager::getInstance().startEventLoop();
    
    return 0;
}

### This file is automatically generated by Qt Design Studio.
### Do not change

add_subdirectory(ChatClientContent)
add_subdirectory(ChatClient)
add_subdirectory(App)
add_subdirectory(Dependencies)

target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE
    ChatClientContentplugin
    ChatClientplugin)
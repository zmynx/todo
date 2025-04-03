cmake_minimum_required(VERSION 3.15)
project(todo-backend LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Dependencies from Conan
find_package(crowcpp-crow REQUIRED)
find_package(nlohmann_json REQUIRED)

add_executable(todo_backend main.cpp)

target_link_libraries(todo_backend
    PRIVATE
        crowcpp-crow::crowcpp-crow
        nlohmann_json::nlohmann_json
)

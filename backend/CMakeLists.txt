cmake_minimum_required(VERSION 3.15)
project(todo-backend LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(SOURCES
    main.cpp
    src/task_manager.cpp
)

# 👇 Important: Point CMake to Conan's generated config files
# This lets `find_package()` locate Crow and nlohmann_json
list(APPEND CMAKE_PREFIX_PATH "${CMAKE_BINARY_DIR}/Release/generators")

# 🔍 Find packages as defined by CMakeDeps
find_package(Crow REQUIRED)
find_package(nlohmann_json REQUIRED)

# 🧱 Define your executable
add_executable(todo_backend ${SOURCES})


# 🔗 Link libraries (targets created by Conan's CMakeDeps)
target_link_libraries(todo_backend
    PRIVATE
        Crow::Crow
        nlohmann_json::nlohmann_json
)

// backend/main.cpp
#include "include/task_manager.hpp"
#include <crow.h>

int main() {
    crow::SimpleApp app;
    TaskManager taskManager;
    // ✅ This sets up the root route
    CROW_ROUTE(app, "/")([](){
        return "Hello from Crow!";
    });
    CROW_ROUTE(app, "/tasks").methods("GET"_method)([&]() {
        return crow::response(taskManager.getTasksJSON());
    });

    CROW_ROUTE(app, "/tasks").methods("POST"_method)([&](const crow::request& req) {
        return crow::response(taskManager.addTask(req.body));
    });

    CROW_ROUTE(app, "/tasks/<int>").methods("DELETE"_method)([&](int id) {
        return crow::response(taskManager.deleteTask(id));
    });

    CROW_ROUTE(app, "/tasks/<int>").methods("PUT"_method)([&](const crow::request& req, int id) {
        return crow::response(taskManager.editTask(id, req.body));
    });

    app.port(18080).multithreaded().run();
    return 0;
}

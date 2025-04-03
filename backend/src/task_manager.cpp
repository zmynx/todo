// backend/src/task_manager.cpp
#include "../include/task_manager.hpp"
#include <nlohmann/json.hpp>
#include <vector>
#include <sstream>

using json = nlohmann::json;

namespace {
    struct Task {
        int id;
        std::string title;
        std::string description;
    };

    std::vector<Task> tasks;
    int nextId = 1;
}

std::string TaskManager::getTasksJSON() {
    json j;
    for (const auto& task : tasks) {
        j.push_back({{"id", task.id}, {"title", task.title}, {"description", task.description}});
    }
    return j.dump();
}

std::string TaskManager::addTask(const std::string& jsonStr) {
    auto j = json::parse(jsonStr);
    Task t = { nextId++, j["title"], j["description"] };
    tasks.push_back(t);
    return R"({"status": "added"})";
}

std::string TaskManager::deleteTask(int id) {
    auto it = std::remove_if(tasks.begin(), tasks.end(), [id](const Task& t){ return t.id == id; });
    if (it != tasks.end()) {
        tasks.erase(it, tasks.end());
        return R"({"status": "deleted"})";
    }
    return R"({"status": "not found"})";
}

std::string TaskManager::editTask(int id, const std::string& jsonStr) {
    auto j = json::parse(jsonStr);
    for (auto& task : tasks) {
        if (task.id == id) {
            task.title = j["title"];
            task.description = j["description"];
            return R"({"status": "updated"})";
        }
    }
    return R"({"status": "not found"})";
}

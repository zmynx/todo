// backend/include/task_manager.hpp
#ifndef TASK_MANAGER_HPP
#define TASK_MANAGER_HPP

#include <string>

class TaskManager {
public:
    std::string getTasksJSON();
    std::string addTask(const std::string& json);
    std::string deleteTask(int id);
    std::string editTask(int id, const std::string& json);
};

#endif

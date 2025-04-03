import React, { useState, useEffect } from "react";
import axios from "axios";

const API_URL = "http://localhost:18080/tasks";

const TaskManager = () => {
  const [tasks, setTasks] = useState([]);
  const [title, setTitle] = useState("");
  const [description, setDescription] = useState("");
  const [editId, setEditId] = useState(null);

  const fetchTasks = async () => {
    try {
      const res = await axios.get(API_URL);
      setTasks(res.data || []);
    } catch (error) {
      console.error("Failed to fetch tasks:", error);
      setTasks([]);
    }
  };

  const addTask = async () => {
    await axios.post(API_URL, { title, description });
    setTitle("");
    setDescription("");
    fetchTasks();
  };

  const deleteTask = async (id) => {
    await axios.delete(`${API_URL}/${id}`);
    fetchTasks();
  };

  const startEdit = (task) => {
    setEditId(task.id);
    setTitle(task.title);
    setDescription(task.description);
  };

  const updateTask = async () => {
    await axios.put(`${API_URL}/${editId}`, { title, description });
    setTitle("");
    setDescription("");
    setEditId(null);
    fetchTasks();
  };

  const handleSubmit = () => {
    if (editId !== null) {
      updateTask();
    } else {
      addTask();
    }
  };

  useEffect(() => {
    fetchTasks();
  }, []);

  return (
    <div className="task-container">
      <h2 className="app-title">Task List</h2>
      <div className="task-form">
        <input
          className="input"
          value={title}
          onChange={(e) => setTitle(e.target.value)}
          placeholder="Title"
        />
        <input
          className="input"
          value={description}
          onChange={(e) => setDescription(e.target.value)}
          placeholder="Description"
        />
        <button className="button" onClick={handleSubmit}>
          {editId !== null ? "Update Task" : "Add Task"}
        </button>
      </div>
      <ul className="task-list">
        {Array.isArray(tasks) &&
          tasks.map((task) => (
            <li key={task.id} className="task-item">
              <div className="task-text">
                {task.title}: {task.description}
              </div>
              <div className="task-actions">
                <button className="button edit" onClick={() => startEdit(task)}>
                  Edit
                </button>
                <button
                  className="button delete"
                  onClick={() => deleteTask(task.id)}
                >
                  Delete
                </button>
              </div>
            </li>
          ))}
      </ul>
    </div>
  );
};

export default TaskManager;

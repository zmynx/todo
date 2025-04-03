import React from "react";
import TaskManager from "./components/TaskManager";
import "./App.css";

function App() {
  return (
    <div className="App">
      <h1 className="app-title">📝 Todo List</h1>
      <TaskManager />
    </div>
  );
}

export default App;

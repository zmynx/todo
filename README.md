# todo

Todo application written in cpp, using AI agents as much as possible.

// README.md

# C++ Todo App with Frontend and Docker Support

This is a full-stack todo application built with a C++ backend using the Crow framework, a React-based frontend, and orchestrated with Docker Compose.

---

## 🧩 Project Structure

```
project-root/
├── backend/               # C++ backend server with Crow
├── frontend/              # React frontend client
├── database/              # SQL initialization script (optional)
├── docker-compose.yml     # Service orchestration
├── Dockerfile.backend     # Backend container
├── Dockerfile.frontend    # Frontend container
├── .conan/                # Conan config
├── README.md              # This file
```

---

## 🚀 Getting Started

### Prerequisites

- Docker & Docker Compose
- Node.js (for local frontend testing)
- Conan (v2.x preferred): `pip install conan`

---

## 🐳 Running with Docker Compose

```bash
docker-compose up --build
```

- Frontend: http://localhost:3000
- Backend API: http://localhost:18080/tasks

---

## ⚙️ Building Locally

### Backend (C++)

```bash
cd backend
conan profile detect --force
conan install . -s build_type=Release --build=missing -of=build/Release
cd build/Release
cmake ../.. -DCMAKE_TOOLCHAIN_FILE=generators/conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
cmake --build .
./todo_backend
```

### Frontend (React)

```bash
cd frontend
npm install
npm start
```

---

## 🛠 Dockerfile Notes

The backend Dockerfile uses `ubuntu:22.04`, installs required build tools and Conan, then performs the same Conan + CMake steps as local.

```Dockerfile
conan install backend -s build_type=Release --build=missing -of=build/Release
cmake -S backend -DCMAKE_TOOLCHAIN_FILE=build/Release/generators/conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release -B build/Release
cmake --build build/Release
```

---

## 📦 Conan Requirements

### `backend/conanfile.py`

```python
from conan import ConanFile

class TodoBackend(ConanFile):
    name = "todo-backend"
    version = "1.0"
    requires = (
        "crowcpp-crow/1.2.0",
        "nlohmann_json/3.11.2",
        "asio/1.29.0"
    )
    generators = "CMakeToolchain", "CMakeDeps"
```

---

## 🧪 API Usage

- `GET /tasks` — list tasks
- `POST /tasks` — add new task (JSON: `{ title, description }`)
- `PUT /tasks/:id` — update task
- `DELETE /tasks/:id` — delete task

---

## 🎨 Frontend Highlights

- React UI with retro gaming look
- Add/edit/delete task functionality
- Axios used for HTTP requests
- Built for portability inside Docker

---

## 🙌 Contributing

1. Fork the repo
2. Create a new branch
3. Submit a PR with meaningful commit messages

---

## 🧰 Troubleshooting

- **Docker `pull access denied`**: The old `conanio/gcc12` image is deprecated. We now use `ubuntu:22.04`.
- **Frontend error `tasks is null`**: Fixed via defensive checks and default to empty array.
- **SSL issues with Conan**: Use `conan remote update --insecure conancenter`.

---

Let me know if you want to deploy this to a free hosting provider like Railway or Fly.io!

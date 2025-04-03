# todo

Todo application written in cpp, using AI agents as much as possible.

// README.md

# C++ Todo App with Frontend & Database

## Project Structure

- `backend/`: C++ backend using Crow for REST API
- `frontend/`: Frontend built with React or HTML/JS
- `database/`: Postgres DB schema
- `docker-compose.yml`: Orchestrates entire app
- `Dockerfile.backend`: Builds backend service
- `Dockerfile.frontend`: Builds frontend service

## Setup Instructions

1. Clone this repo:

```bash
git clone https://github.com/your-repo/todo-cpp-app.git
cd todo-cpp-app
```

2. Start the stack:

```bash
docker-compose up --build
```

3. App endpoints:

- Frontend: http://localhost:3000
- API: http://localhost:18080/tasks

## Conan Dependency Management

This project uses [Conan](https://conan.io/) to manage dependencies such as `crow` and `nlohmann_json`.

### Installing Conan

```bash
pip install conan
```

### Creating conanfile.txt in backend/

```
[requires]
crowcpp-crow/1.0
nlohmann_json/3.11.2

[generators]
cmake
```

### Install dependencies locally

```bash
cd backend
conan install . --build=missing
```

This will generate files needed for CMake to find the libraries.

## Development Workflow

- Make C++ changes in `backend/src` and `backend/include`
- Rebuild backend with:

```bash
docker-compose up --build backend
```

- Use REST endpoints to add (`POST`), edit (`PUT`), delete (`DELETE`) tasks

## Onboarding for New Contributors

1. Install Docker, Conan, and Node.js

2. Clone the repo & build stack:

```bash
git clone <repo>
docker-compose up --build
```

3. For backend:

- Modify `main.cpp`, `task_manager.cpp`, or headers
- Run `conan install` before building
- Build with CMake or via Docker

4. For frontend:

- Develop in `frontend/`
- Run `npm start` for live dev

5. Contribute:

- Fork, branch, commit with clear messages
- PRs are welcome with tests or examples if possible

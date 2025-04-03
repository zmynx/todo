from conan import ConanFile
from conan.tools.cmake import CMake, cmake_layout

class BackendRecipe(ConanFile):
    name = "todo-backend"
    version = "1.0"
    settings = "os", "compiler", "build_type", "arch"
    requires = [
        "crowcpp-crow/1.2.0",
        "nlohmann_json/3.11.2"
    ]
    generators = "CMakeToolchain", "CMakeDeps"
    default_options = {}

    def layout(self):
        cmake_layout(self)

    def build(self):
        cmake = CMake(self)
        cmake.configure()
        cmake.build()

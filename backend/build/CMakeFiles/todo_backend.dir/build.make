# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lior.dux/Desktop/Projects/zmynx/todo/backend

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lior.dux/Desktop/Projects/zmynx/todo/backend/build

# Include any dependencies generated for this target.
include CMakeFiles/todo_backend.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/todo_backend.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/todo_backend.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/todo_backend.dir/flags.make

CMakeFiles/todo_backend.dir/codegen:
.PHONY : CMakeFiles/todo_backend.dir/codegen

CMakeFiles/todo_backend.dir/main.cpp.o: CMakeFiles/todo_backend.dir/flags.make
CMakeFiles/todo_backend.dir/main.cpp.o: /Users/lior.dux/Desktop/Projects/zmynx/todo/backend/main.cpp
CMakeFiles/todo_backend.dir/main.cpp.o: CMakeFiles/todo_backend.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/lior.dux/Desktop/Projects/zmynx/todo/backend/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/todo_backend.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/todo_backend.dir/main.cpp.o -MF CMakeFiles/todo_backend.dir/main.cpp.o.d -o CMakeFiles/todo_backend.dir/main.cpp.o -c /Users/lior.dux/Desktop/Projects/zmynx/todo/backend/main.cpp

CMakeFiles/todo_backend.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/todo_backend.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lior.dux/Desktop/Projects/zmynx/todo/backend/main.cpp > CMakeFiles/todo_backend.dir/main.cpp.i

CMakeFiles/todo_backend.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/todo_backend.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lior.dux/Desktop/Projects/zmynx/todo/backend/main.cpp -o CMakeFiles/todo_backend.dir/main.cpp.s

CMakeFiles/todo_backend.dir/src/task_manager.cpp.o: CMakeFiles/todo_backend.dir/flags.make
CMakeFiles/todo_backend.dir/src/task_manager.cpp.o: /Users/lior.dux/Desktop/Projects/zmynx/todo/backend/src/task_manager.cpp
CMakeFiles/todo_backend.dir/src/task_manager.cpp.o: CMakeFiles/todo_backend.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/lior.dux/Desktop/Projects/zmynx/todo/backend/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/todo_backend.dir/src/task_manager.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/todo_backend.dir/src/task_manager.cpp.o -MF CMakeFiles/todo_backend.dir/src/task_manager.cpp.o.d -o CMakeFiles/todo_backend.dir/src/task_manager.cpp.o -c /Users/lior.dux/Desktop/Projects/zmynx/todo/backend/src/task_manager.cpp

CMakeFiles/todo_backend.dir/src/task_manager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/todo_backend.dir/src/task_manager.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lior.dux/Desktop/Projects/zmynx/todo/backend/src/task_manager.cpp > CMakeFiles/todo_backend.dir/src/task_manager.cpp.i

CMakeFiles/todo_backend.dir/src/task_manager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/todo_backend.dir/src/task_manager.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lior.dux/Desktop/Projects/zmynx/todo/backend/src/task_manager.cpp -o CMakeFiles/todo_backend.dir/src/task_manager.cpp.s

# Object files for target todo_backend
todo_backend_OBJECTS = \
"CMakeFiles/todo_backend.dir/main.cpp.o" \
"CMakeFiles/todo_backend.dir/src/task_manager.cpp.o"

# External object files for target todo_backend
todo_backend_EXTERNAL_OBJECTS =

todo_backend: CMakeFiles/todo_backend.dir/main.cpp.o
todo_backend: CMakeFiles/todo_backend.dir/src/task_manager.cpp.o
todo_backend: CMakeFiles/todo_backend.dir/build.make
todo_backend: CMakeFiles/todo_backend.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/lior.dux/Desktop/Projects/zmynx/todo/backend/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable todo_backend"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/todo_backend.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/todo_backend.dir/build: todo_backend
.PHONY : CMakeFiles/todo_backend.dir/build

CMakeFiles/todo_backend.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/todo_backend.dir/cmake_clean.cmake
.PHONY : CMakeFiles/todo_backend.dir/clean

CMakeFiles/todo_backend.dir/depend:
	cd /Users/lior.dux/Desktop/Projects/zmynx/todo/backend/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lior.dux/Desktop/Projects/zmynx/todo/backend /Users/lior.dux/Desktop/Projects/zmynx/todo/backend /Users/lior.dux/Desktop/Projects/zmynx/todo/backend/build /Users/lior.dux/Desktop/Projects/zmynx/todo/backend/build /Users/lior.dux/Desktop/Projects/zmynx/todo/backend/build/CMakeFiles/todo_backend.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/todo_backend.dir/depend


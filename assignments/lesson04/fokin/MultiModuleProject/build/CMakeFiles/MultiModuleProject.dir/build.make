# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/sky/Документы/4 сем/C++/cpp/assignments/lesson04/fokin/MultiModuleProject"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/sky/Документы/4 сем/C++/cpp/assignments/lesson04/fokin/MultiModuleProject/build"

# Include any dependencies generated for this target.
include CMakeFiles/MultiModuleProject.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/MultiModuleProject.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/MultiModuleProject.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MultiModuleProject.dir/flags.make

CMakeFiles/MultiModuleProject.dir/MainApp/main.cpp.o: CMakeFiles/MultiModuleProject.dir/flags.make
CMakeFiles/MultiModuleProject.dir/MainApp/main.cpp.o: ../MainApp/main.cpp
CMakeFiles/MultiModuleProject.dir/MainApp/main.cpp.o: CMakeFiles/MultiModuleProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/sky/Документы/4 сем/C++/cpp/assignments/lesson04/fokin/MultiModuleProject/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MultiModuleProject.dir/MainApp/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MultiModuleProject.dir/MainApp/main.cpp.o -MF CMakeFiles/MultiModuleProject.dir/MainApp/main.cpp.o.d -o CMakeFiles/MultiModuleProject.dir/MainApp/main.cpp.o -c "/home/sky/Документы/4 сем/C++/cpp/assignments/lesson04/fokin/MultiModuleProject/MainApp/main.cpp"

CMakeFiles/MultiModuleProject.dir/MainApp/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MultiModuleProject.dir/MainApp/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/sky/Документы/4 сем/C++/cpp/assignments/lesson04/fokin/MultiModuleProject/MainApp/main.cpp" > CMakeFiles/MultiModuleProject.dir/MainApp/main.cpp.i

CMakeFiles/MultiModuleProject.dir/MainApp/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MultiModuleProject.dir/MainApp/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/sky/Документы/4 сем/C++/cpp/assignments/lesson04/fokin/MultiModuleProject/MainApp/main.cpp" -o CMakeFiles/MultiModuleProject.dir/MainApp/main.cpp.s

# Object files for target MultiModuleProject
MultiModuleProject_OBJECTS = \
"CMakeFiles/MultiModuleProject.dir/MainApp/main.cpp.o"

# External object files for target MultiModuleProject
MultiModuleProject_EXTERNAL_OBJECTS =

MultiModuleProject: CMakeFiles/MultiModuleProject.dir/MainApp/main.cpp.o
MultiModuleProject: CMakeFiles/MultiModuleProject.dir/build.make
MultiModuleProject: MathFunctions/libMathFunctions.a
MultiModuleProject: StringUtilities/libStringUtilities.a
MultiModuleProject: CMakeFiles/MultiModuleProject.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/sky/Документы/4 сем/C++/cpp/assignments/lesson04/fokin/MultiModuleProject/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable MultiModuleProject"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MultiModuleProject.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MultiModuleProject.dir/build: MultiModuleProject
.PHONY : CMakeFiles/MultiModuleProject.dir/build

CMakeFiles/MultiModuleProject.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MultiModuleProject.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MultiModuleProject.dir/clean

CMakeFiles/MultiModuleProject.dir/depend:
	cd "/home/sky/Документы/4 сем/C++/cpp/assignments/lesson04/fokin/MultiModuleProject/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/sky/Документы/4 сем/C++/cpp/assignments/lesson04/fokin/MultiModuleProject" "/home/sky/Документы/4 сем/C++/cpp/assignments/lesson04/fokin/MultiModuleProject" "/home/sky/Документы/4 сем/C++/cpp/assignments/lesson04/fokin/MultiModuleProject/build" "/home/sky/Документы/4 сем/C++/cpp/assignments/lesson04/fokin/MultiModuleProject/build" "/home/sky/Документы/4 сем/C++/cpp/assignments/lesson04/fokin/MultiModuleProject/build/CMakeFiles/MultiModuleProject.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/MultiModuleProject.dir/depend


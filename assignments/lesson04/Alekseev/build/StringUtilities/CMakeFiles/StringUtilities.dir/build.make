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
CMAKE_SOURCE_DIR = /root/file_my/mygit/cpp/assignments/lesson04/Alekseev

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/file_my/mygit/cpp/assignments/lesson04/Alekseev/build

# Include any dependencies generated for this target.
include StringUtilities/CMakeFiles/StringUtilities.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include StringUtilities/CMakeFiles/StringUtilities.dir/compiler_depend.make

# Include the progress variables for this target.
include StringUtilities/CMakeFiles/StringUtilities.dir/progress.make

# Include the compile flags for this target's objects.
include StringUtilities/CMakeFiles/StringUtilities.dir/flags.make

StringUtilities/CMakeFiles/StringUtilities.dir/StringUtilities.cpp.o: StringUtilities/CMakeFiles/StringUtilities.dir/flags.make
StringUtilities/CMakeFiles/StringUtilities.dir/StringUtilities.cpp.o: ../StringUtilities/StringUtilities.cpp
StringUtilities/CMakeFiles/StringUtilities.dir/StringUtilities.cpp.o: StringUtilities/CMakeFiles/StringUtilities.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/file_my/mygit/cpp/assignments/lesson04/Alekseev/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object StringUtilities/CMakeFiles/StringUtilities.dir/StringUtilities.cpp.o"
	cd /root/file_my/mygit/cpp/assignments/lesson04/Alekseev/build/StringUtilities && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT StringUtilities/CMakeFiles/StringUtilities.dir/StringUtilities.cpp.o -MF CMakeFiles/StringUtilities.dir/StringUtilities.cpp.o.d -o CMakeFiles/StringUtilities.dir/StringUtilities.cpp.o -c /root/file_my/mygit/cpp/assignments/lesson04/Alekseev/StringUtilities/StringUtilities.cpp

StringUtilities/CMakeFiles/StringUtilities.dir/StringUtilities.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/StringUtilities.dir/StringUtilities.cpp.i"
	cd /root/file_my/mygit/cpp/assignments/lesson04/Alekseev/build/StringUtilities && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/file_my/mygit/cpp/assignments/lesson04/Alekseev/StringUtilities/StringUtilities.cpp > CMakeFiles/StringUtilities.dir/StringUtilities.cpp.i

StringUtilities/CMakeFiles/StringUtilities.dir/StringUtilities.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/StringUtilities.dir/StringUtilities.cpp.s"
	cd /root/file_my/mygit/cpp/assignments/lesson04/Alekseev/build/StringUtilities && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/file_my/mygit/cpp/assignments/lesson04/Alekseev/StringUtilities/StringUtilities.cpp -o CMakeFiles/StringUtilities.dir/StringUtilities.cpp.s

# Object files for target StringUtilities
StringUtilities_OBJECTS = \
"CMakeFiles/StringUtilities.dir/StringUtilities.cpp.o"

# External object files for target StringUtilities
StringUtilities_EXTERNAL_OBJECTS =

StringUtilities/libStringUtilities.a: StringUtilities/CMakeFiles/StringUtilities.dir/StringUtilities.cpp.o
StringUtilities/libStringUtilities.a: StringUtilities/CMakeFiles/StringUtilities.dir/build.make
StringUtilities/libStringUtilities.a: StringUtilities/CMakeFiles/StringUtilities.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/file_my/mygit/cpp/assignments/lesson04/Alekseev/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libStringUtilities.a"
	cd /root/file_my/mygit/cpp/assignments/lesson04/Alekseev/build/StringUtilities && $(CMAKE_COMMAND) -P CMakeFiles/StringUtilities.dir/cmake_clean_target.cmake
	cd /root/file_my/mygit/cpp/assignments/lesson04/Alekseev/build/StringUtilities && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/StringUtilities.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
StringUtilities/CMakeFiles/StringUtilities.dir/build: StringUtilities/libStringUtilities.a
.PHONY : StringUtilities/CMakeFiles/StringUtilities.dir/build

StringUtilities/CMakeFiles/StringUtilities.dir/clean:
	cd /root/file_my/mygit/cpp/assignments/lesson04/Alekseev/build/StringUtilities && $(CMAKE_COMMAND) -P CMakeFiles/StringUtilities.dir/cmake_clean.cmake
.PHONY : StringUtilities/CMakeFiles/StringUtilities.dir/clean

StringUtilities/CMakeFiles/StringUtilities.dir/depend:
	cd /root/file_my/mygit/cpp/assignments/lesson04/Alekseev/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/file_my/mygit/cpp/assignments/lesson04/Alekseev /root/file_my/mygit/cpp/assignments/lesson04/Alekseev/StringUtilities /root/file_my/mygit/cpp/assignments/lesson04/Alekseev/build /root/file_my/mygit/cpp/assignments/lesson04/Alekseev/build/StringUtilities /root/file_my/mygit/cpp/assignments/lesson04/Alekseev/build/StringUtilities/CMakeFiles/StringUtilities.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : StringUtilities/CMakeFiles/StringUtilities.dir/depend


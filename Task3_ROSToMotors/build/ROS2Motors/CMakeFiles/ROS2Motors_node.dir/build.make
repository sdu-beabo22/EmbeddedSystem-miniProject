# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/ROS2Motors

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/build/ROS2Motors

# Include any dependencies generated for this target.
include CMakeFiles/ROS2Motors_node.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ROS2Motors_node.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ROS2Motors_node.dir/flags.make

CMakeFiles/ROS2Motors_node.dir/src/ROS2Motors_node.cpp.o: CMakeFiles/ROS2Motors_node.dir/flags.make
CMakeFiles/ROS2Motors_node.dir/src/ROS2Motors_node.cpp.o: /home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/ROS2Motors/src/ROS2Motors_node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/build/ROS2Motors/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ROS2Motors_node.dir/src/ROS2Motors_node.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ROS2Motors_node.dir/src/ROS2Motors_node.cpp.o -c /home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/ROS2Motors/src/ROS2Motors_node.cpp

CMakeFiles/ROS2Motors_node.dir/src/ROS2Motors_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ROS2Motors_node.dir/src/ROS2Motors_node.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/ROS2Motors/src/ROS2Motors_node.cpp > CMakeFiles/ROS2Motors_node.dir/src/ROS2Motors_node.cpp.i

CMakeFiles/ROS2Motors_node.dir/src/ROS2Motors_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ROS2Motors_node.dir/src/ROS2Motors_node.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/ROS2Motors/src/ROS2Motors_node.cpp -o CMakeFiles/ROS2Motors_node.dir/src/ROS2Motors_node.cpp.s

# Object files for target ROS2Motors_node
ROS2Motors_node_OBJECTS = \
"CMakeFiles/ROS2Motors_node.dir/src/ROS2Motors_node.cpp.o"

# External object files for target ROS2Motors_node
ROS2Motors_node_EXTERNAL_OBJECTS =

ROS2Motors_node: CMakeFiles/ROS2Motors_node.dir/src/ROS2Motors_node.cpp.o
ROS2Motors_node: CMakeFiles/ROS2Motors_node.dir/build.make
ROS2Motors_node: CMakeFiles/ROS2Motors_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/build/ROS2Motors/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ROS2Motors_node"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ROS2Motors_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ROS2Motors_node.dir/build: ROS2Motors_node

.PHONY : CMakeFiles/ROS2Motors_node.dir/build

CMakeFiles/ROS2Motors_node.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ROS2Motors_node.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ROS2Motors_node.dir/clean

CMakeFiles/ROS2Motors_node.dir/depend:
	cd /home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/build/ROS2Motors && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/ROS2Motors /home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/ROS2Motors /home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/build/ROS2Motors /home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/build/ROS2Motors /home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/build/ROS2Motors/CMakeFiles/ROS2Motors_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ROS2Motors_node.dir/depend

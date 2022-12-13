# Install script for directory: /home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/ROS2Motors

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/install/ROS2Motors")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ROS2Motors/ROS2Motors_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ROS2Motors/ROS2Motors_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ROS2Motors/ROS2Motors_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/ROS2Motors" TYPE EXECUTABLE FILES "/home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/build/ROS2Motors/ROS2Motors_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ROS2Motors/ROS2Motors_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ROS2Motors/ROS2Motors_node")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ROS2Motors/ROS2Motors_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/package_run_dependencies" TYPE FILE FILES "/home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/build/ROS2Motors/ament_cmake_index/share/ament_index/resource_index/package_run_dependencies/ROS2Motors")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/parent_prefix_path" TYPE FILE FILES "/home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/build/ROS2Motors/ament_cmake_index/share/ament_index/resource_index/parent_prefix_path/ROS2Motors")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ROS2Motors/environment" TYPE FILE FILES "/opt/ros/foxy/share/ament_cmake_core/cmake/environment_hooks/environment/ament_prefix_path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ROS2Motors/environment" TYPE FILE FILES "/home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/build/ROS2Motors/ament_cmake_environment_hooks/ament_prefix_path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ROS2Motors/environment" TYPE FILE FILES "/opt/ros/foxy/share/ament_cmake_core/cmake/environment_hooks/environment/path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ROS2Motors/environment" TYPE FILE FILES "/home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/build/ROS2Motors/ament_cmake_environment_hooks/path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ROS2Motors" TYPE FILE FILES "/home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/build/ROS2Motors/ament_cmake_environment_hooks/local_setup.bash")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ROS2Motors" TYPE FILE FILES "/home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/build/ROS2Motors/ament_cmake_environment_hooks/local_setup.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ROS2Motors" TYPE FILE FILES "/home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/build/ROS2Motors/ament_cmake_environment_hooks/local_setup.zsh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ROS2Motors" TYPE FILE FILES "/home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/build/ROS2Motors/ament_cmake_environment_hooks/local_setup.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ROS2Motors" TYPE FILE FILES "/home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/build/ROS2Motors/ament_cmake_environment_hooks/package.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/packages" TYPE FILE FILES "/home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/build/ROS2Motors/ament_cmake_index/share/ament_index/resource_index/packages/ROS2Motors")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ROS2Motors/cmake" TYPE FILE FILES
    "/home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/build/ROS2Motors/ament_cmake_core/ROS2MotorsConfig.cmake"
    "/home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/build/ROS2Motors/ament_cmake_core/ROS2MotorsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ROS2Motors" TYPE FILE FILES "/home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/ROS2Motors/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/zain/Documents/1st_semester/Embedded_Systems/Assignments/MiniProject/EmbeddedSystem-miniProject/Task3_ROSToMotors/build/ROS2Motors/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

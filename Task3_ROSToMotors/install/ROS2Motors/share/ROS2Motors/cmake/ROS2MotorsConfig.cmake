# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_ROS2Motors_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED ROS2Motors_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(ROS2Motors_FOUND FALSE)
  elseif(NOT ROS2Motors_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(ROS2Motors_FOUND FALSE)
  endif()
  return()
endif()
set(_ROS2Motors_CONFIG_INCLUDED TRUE)

# output package information
if(NOT ROS2Motors_FIND_QUIETLY)
  message(STATUS "Found ROS2Motors: 0.0.0 (${ROS2Motors_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'ROS2Motors' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${ROS2Motors_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(ROS2Motors_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${ROS2Motors_DIR}/${_extra}")
endforeach()

// generated from rosidl_generator_c/resource/idl__struct.h.em
// with input from motor_controller:msg/SetPosition.idl
// generated code does not contain a copyright notice

#ifndef MOTOR_CONTROLLER__MSG__DETAIL__SET_POSITION__STRUCT_H_
#define MOTOR_CONTROLLER__MSG__DETAIL__SET_POSITION__STRUCT_H_

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>


// Constants defined in the message

// Struct defined in msg/SetPosition in the package motor_controller.
typedef struct motor_controller__msg__SetPosition
{
  uint8_t id0;
  uint8_t id1;
  int32_t position0;
  int32_t position1;
} motor_controller__msg__SetPosition;

// Struct for a sequence of motor_controller__msg__SetPosition.
typedef struct motor_controller__msg__SetPosition__Sequence
{
  motor_controller__msg__SetPosition * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} motor_controller__msg__SetPosition__Sequence;

#ifdef __cplusplus
}
#endif

#endif  // MOTOR_CONTROLLER__MSG__DETAIL__SET_POSITION__STRUCT_H_

// generated from rosidl_generator_c/resource/idl__struct.h.em
// with input from motor_controller:srv/GetPosition.idl
// generated code does not contain a copyright notice

#ifndef MOTOR_CONTROLLER__SRV__DETAIL__GET_POSITION__STRUCT_H_
#define MOTOR_CONTROLLER__SRV__DETAIL__GET_POSITION__STRUCT_H_

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>


// Constants defined in the message

// Struct defined in srv/GetPosition in the package motor_controller.
typedef struct motor_controller__srv__GetPosition_Request
{
  uint8_t id0;
  uint8_t id1;
} motor_controller__srv__GetPosition_Request;

// Struct for a sequence of motor_controller__srv__GetPosition_Request.
typedef struct motor_controller__srv__GetPosition_Request__Sequence
{
  motor_controller__srv__GetPosition_Request * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} motor_controller__srv__GetPosition_Request__Sequence;


// Constants defined in the message

// Struct defined in srv/GetPosition in the package motor_controller.
typedef struct motor_controller__srv__GetPosition_Response
{
  int32_t position0;
  int32_t position1;
} motor_controller__srv__GetPosition_Response;

// Struct for a sequence of motor_controller__srv__GetPosition_Response.
typedef struct motor_controller__srv__GetPosition_Response__Sequence
{
  motor_controller__srv__GetPosition_Response * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} motor_controller__srv__GetPosition_Response__Sequence;

#ifdef __cplusplus
}
#endif

#endif  // MOTOR_CONTROLLER__SRV__DETAIL__GET_POSITION__STRUCT_H_

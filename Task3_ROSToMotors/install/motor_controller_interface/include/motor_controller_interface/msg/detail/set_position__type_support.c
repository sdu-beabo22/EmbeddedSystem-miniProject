// generated from rosidl_typesupport_introspection_c/resource/idl__type_support.c.em
// with input from motor_controller_interface:msg/SetPosition.idl
// generated code does not contain a copyright notice

#include <stddef.h>
#include "motor_controller_interface/msg/detail/set_position__rosidl_typesupport_introspection_c.h"
#include "motor_controller_interface/msg/rosidl_typesupport_introspection_c__visibility_control.h"
#include "rosidl_typesupport_introspection_c/field_types.h"
#include "rosidl_typesupport_introspection_c/identifier.h"
#include "rosidl_typesupport_introspection_c/message_introspection.h"
#include "motor_controller_interface/msg/detail/set_position__functions.h"
#include "motor_controller_interface/msg/detail/set_position__struct.h"


#ifdef __cplusplus
extern "C"
{
#endif

void SetPosition__rosidl_typesupport_introspection_c__SetPosition_init_function(
  void * message_memory, enum rosidl_runtime_c__message_initialization _init)
{
  // TODO(karsten1987): initializers are not yet implemented for typesupport c
  // see https://github.com/ros2/ros2/issues/397
  (void) _init;
  motor_controller_interface__msg__SetPosition__init(message_memory);
}

void SetPosition__rosidl_typesupport_introspection_c__SetPosition_fini_function(void * message_memory)
{
  motor_controller_interface__msg__SetPosition__fini(message_memory);
}

static rosidl_typesupport_introspection_c__MessageMember SetPosition__rosidl_typesupport_introspection_c__SetPosition_message_member_array[4] = {
  {
    "id0",  // name
    rosidl_typesupport_introspection_c__ROS_TYPE_UINT8,  // type
    0,  // upper bound of string
    NULL,  // members of sub message
    false,  // is array
    0,  // array size
    false,  // is upper bound
    offsetof(motor_controller_interface__msg__SetPosition, id0),  // bytes offset in struct
    NULL,  // default value
    NULL,  // size() function pointer
    NULL,  // get_const(index) function pointer
    NULL,  // get(index) function pointer
    NULL  // resize(index) function pointer
  },
  {
    "id1",  // name
    rosidl_typesupport_introspection_c__ROS_TYPE_UINT8,  // type
    0,  // upper bound of string
    NULL,  // members of sub message
    false,  // is array
    0,  // array size
    false,  // is upper bound
    offsetof(motor_controller_interface__msg__SetPosition, id1),  // bytes offset in struct
    NULL,  // default value
    NULL,  // size() function pointer
    NULL,  // get_const(index) function pointer
    NULL,  // get(index) function pointer
    NULL  // resize(index) function pointer
  },
  {
    "position0",  // name
    rosidl_typesupport_introspection_c__ROS_TYPE_INT32,  // type
    0,  // upper bound of string
    NULL,  // members of sub message
    false,  // is array
    0,  // array size
    false,  // is upper bound
    offsetof(motor_controller_interface__msg__SetPosition, position0),  // bytes offset in struct
    NULL,  // default value
    NULL,  // size() function pointer
    NULL,  // get_const(index) function pointer
    NULL,  // get(index) function pointer
    NULL  // resize(index) function pointer
  },
  {
    "position1",  // name
    rosidl_typesupport_introspection_c__ROS_TYPE_INT32,  // type
    0,  // upper bound of string
    NULL,  // members of sub message
    false,  // is array
    0,  // array size
    false,  // is upper bound
    offsetof(motor_controller_interface__msg__SetPosition, position1),  // bytes offset in struct
    NULL,  // default value
    NULL,  // size() function pointer
    NULL,  // get_const(index) function pointer
    NULL,  // get(index) function pointer
    NULL  // resize(index) function pointer
  }
};

static const rosidl_typesupport_introspection_c__MessageMembers SetPosition__rosidl_typesupport_introspection_c__SetPosition_message_members = {
  "motor_controller_interface__msg",  // message namespace
  "SetPosition",  // message name
  4,  // number of fields
  sizeof(motor_controller_interface__msg__SetPosition),
  SetPosition__rosidl_typesupport_introspection_c__SetPosition_message_member_array,  // message members
  SetPosition__rosidl_typesupport_introspection_c__SetPosition_init_function,  // function to initialize message memory (memory has to be allocated)
  SetPosition__rosidl_typesupport_introspection_c__SetPosition_fini_function  // function to terminate message instance (will not free memory)
};

// this is not const since it must be initialized on first access
// since C does not allow non-integral compile-time constants
static rosidl_message_type_support_t SetPosition__rosidl_typesupport_introspection_c__SetPosition_message_type_support_handle = {
  0,
  &SetPosition__rosidl_typesupport_introspection_c__SetPosition_message_members,
  get_message_typesupport_handle_function,
};

ROSIDL_TYPESUPPORT_INTROSPECTION_C_EXPORT_motor_controller_interface
const rosidl_message_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_introspection_c, motor_controller_interface, msg, SetPosition)() {
  if (!SetPosition__rosidl_typesupport_introspection_c__SetPosition_message_type_support_handle.typesupport_identifier) {
    SetPosition__rosidl_typesupport_introspection_c__SetPosition_message_type_support_handle.typesupport_identifier =
      rosidl_typesupport_introspection_c__identifier;
  }
  return &SetPosition__rosidl_typesupport_introspection_c__SetPosition_message_type_support_handle;
}
#ifdef __cplusplus
}
#endif

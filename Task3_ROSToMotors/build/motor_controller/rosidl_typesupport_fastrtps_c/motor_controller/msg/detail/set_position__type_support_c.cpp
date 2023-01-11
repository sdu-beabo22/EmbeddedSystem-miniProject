// generated from rosidl_typesupport_fastrtps_c/resource/idl__type_support_c.cpp.em
// with input from motor_controller:msg/SetPosition.idl
// generated code does not contain a copyright notice
#include "motor_controller/msg/detail/set_position__rosidl_typesupport_fastrtps_c.h"


#include <cassert>
#include <limits>
#include <string>
#include "rosidl_typesupport_fastrtps_c/identifier.h"
#include "rosidl_typesupport_fastrtps_c/wstring_conversion.hpp"
#include "rosidl_typesupport_fastrtps_cpp/message_type_support.h"
#include "motor_controller/msg/rosidl_typesupport_fastrtps_c__visibility_control.h"
#include "motor_controller/msg/detail/set_position__struct.h"
#include "motor_controller/msg/detail/set_position__functions.h"
#include "fastcdr/Cdr.h"

#ifndef _WIN32
# pragma GCC diagnostic push
# pragma GCC diagnostic ignored "-Wunused-parameter"
# ifdef __clang__
#  pragma clang diagnostic ignored "-Wdeprecated-register"
#  pragma clang diagnostic ignored "-Wreturn-type-c-linkage"
# endif
#endif
#ifndef _WIN32
# pragma GCC diagnostic pop
#endif

// includes and forward declarations of message dependencies and their conversion functions

#if defined(__cplusplus)
extern "C"
{
#endif


// forward declare type support functions


using _SetPosition__ros_msg_type = motor_controller__msg__SetPosition;

static bool _SetPosition__cdr_serialize(
  const void * untyped_ros_message,
  eprosima::fastcdr::Cdr & cdr)
{
  if (!untyped_ros_message) {
    fprintf(stderr, "ros message handle is null\n");
    return false;
  }
  const _SetPosition__ros_msg_type * ros_message = static_cast<const _SetPosition__ros_msg_type *>(untyped_ros_message);
  // Field name: id0
  {
    cdr << ros_message->id0;
  }

  // Field name: id1
  {
    cdr << ros_message->id1;
  }

  // Field name: position0
  {
    cdr << ros_message->position0;
  }

  // Field name: position1
  {
    cdr << ros_message->position1;
  }

  return true;
}

static bool _SetPosition__cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  void * untyped_ros_message)
{
  if (!untyped_ros_message) {
    fprintf(stderr, "ros message handle is null\n");
    return false;
  }
  _SetPosition__ros_msg_type * ros_message = static_cast<_SetPosition__ros_msg_type *>(untyped_ros_message);
  // Field name: id0
  {
    cdr >> ros_message->id0;
  }

  // Field name: id1
  {
    cdr >> ros_message->id1;
  }

  // Field name: position0
  {
    cdr >> ros_message->position0;
  }

  // Field name: position1
  {
    cdr >> ros_message->position1;
  }

  return true;
}

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_motor_controller
size_t get_serialized_size_motor_controller__msg__SetPosition(
  const void * untyped_ros_message,
  size_t current_alignment)
{
  const _SetPosition__ros_msg_type * ros_message = static_cast<const _SetPosition__ros_msg_type *>(untyped_ros_message);
  (void)ros_message;
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  (void)padding;
  (void)wchar_size;

  // field.name id0
  {
    size_t item_size = sizeof(ros_message->id0);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name id1
  {
    size_t item_size = sizeof(ros_message->id1);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name position0
  {
    size_t item_size = sizeof(ros_message->position0);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name position1
  {
    size_t item_size = sizeof(ros_message->position1);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }

  return current_alignment - initial_alignment;
}

static uint32_t _SetPosition__get_serialized_size(const void * untyped_ros_message)
{
  return static_cast<uint32_t>(
    get_serialized_size_motor_controller__msg__SetPosition(
      untyped_ros_message, 0));
}

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_motor_controller
size_t max_serialized_size_motor_controller__msg__SetPosition(
  bool & full_bounded,
  size_t current_alignment)
{
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  (void)padding;
  (void)wchar_size;
  (void)full_bounded;

  // member: id0
  {
    size_t array_size = 1;

    current_alignment += array_size * sizeof(uint8_t);
  }
  // member: id1
  {
    size_t array_size = 1;

    current_alignment += array_size * sizeof(uint8_t);
  }
  // member: position0
  {
    size_t array_size = 1;

    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: position1
  {
    size_t array_size = 1;

    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  return current_alignment - initial_alignment;
}

static size_t _SetPosition__max_serialized_size(bool & full_bounded)
{
  return max_serialized_size_motor_controller__msg__SetPosition(
    full_bounded, 0);
}


static message_type_support_callbacks_t __callbacks_SetPosition = {
  "motor_controller::msg",
  "SetPosition",
  _SetPosition__cdr_serialize,
  _SetPosition__cdr_deserialize,
  _SetPosition__get_serialized_size,
  _SetPosition__max_serialized_size
};

static rosidl_message_type_support_t _SetPosition__type_support = {
  rosidl_typesupport_fastrtps_c__identifier,
  &__callbacks_SetPosition,
  get_message_typesupport_handle_function,
};

const rosidl_message_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_c, motor_controller, msg, SetPosition)() {
  return &_SetPosition__type_support;
}

#if defined(__cplusplus)
}
#endif

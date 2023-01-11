// generated from rosidl_typesupport_fastrtps_cpp/resource/idl__type_support.cpp.em
// with input from motor_controller:msg/SetPosition.idl
// generated code does not contain a copyright notice
#include "motor_controller/msg/detail/set_position__rosidl_typesupport_fastrtps_cpp.hpp"
#include "motor_controller/msg/detail/set_position__struct.hpp"

#include <limits>
#include <stdexcept>
#include <string>
#include "rosidl_typesupport_cpp/message_type_support.hpp"
#include "rosidl_typesupport_fastrtps_cpp/identifier.hpp"
#include "rosidl_typesupport_fastrtps_cpp/message_type_support.h"
#include "rosidl_typesupport_fastrtps_cpp/message_type_support_decl.hpp"
#include "rosidl_typesupport_fastrtps_cpp/wstring_conversion.hpp"
#include "fastcdr/Cdr.h"


// forward declaration of message dependencies and their conversion functions

namespace motor_controller
{

namespace msg
{

namespace typesupport_fastrtps_cpp
{

bool
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_motor_controller
cdr_serialize(
  const motor_controller::msg::SetPosition & ros_message,
  eprosima::fastcdr::Cdr & cdr)
{
  // Member: id0
  cdr << ros_message.id0;
  // Member: id1
  cdr << ros_message.id1;
  // Member: position0
  cdr << ros_message.position0;
  // Member: position1
  cdr << ros_message.position1;
  return true;
}

bool
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_motor_controller
cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  motor_controller::msg::SetPosition & ros_message)
{
  // Member: id0
  cdr >> ros_message.id0;

  // Member: id1
  cdr >> ros_message.id1;

  // Member: position0
  cdr >> ros_message.position0;

  // Member: position1
  cdr >> ros_message.position1;

  return true;
}

size_t
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_motor_controller
get_serialized_size(
  const motor_controller::msg::SetPosition & ros_message,
  size_t current_alignment)
{
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  (void)padding;
  (void)wchar_size;

  // Member: id0
  {
    size_t item_size = sizeof(ros_message.id0);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: id1
  {
    size_t item_size = sizeof(ros_message.id1);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: position0
  {
    size_t item_size = sizeof(ros_message.position0);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: position1
  {
    size_t item_size = sizeof(ros_message.position1);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }

  return current_alignment - initial_alignment;
}

size_t
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_motor_controller
max_serialized_size_SetPosition(
  bool & full_bounded,
  size_t current_alignment)
{
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  (void)padding;
  (void)wchar_size;
  (void)full_bounded;


  // Member: id0
  {
    size_t array_size = 1;

    current_alignment += array_size * sizeof(uint8_t);
  }

  // Member: id1
  {
    size_t array_size = 1;

    current_alignment += array_size * sizeof(uint8_t);
  }

  // Member: position0
  {
    size_t array_size = 1;

    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  // Member: position1
  {
    size_t array_size = 1;

    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  return current_alignment - initial_alignment;
}

static bool _SetPosition__cdr_serialize(
  const void * untyped_ros_message,
  eprosima::fastcdr::Cdr & cdr)
{
  auto typed_message =
    static_cast<const motor_controller::msg::SetPosition *>(
    untyped_ros_message);
  return cdr_serialize(*typed_message, cdr);
}

static bool _SetPosition__cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  void * untyped_ros_message)
{
  auto typed_message =
    static_cast<motor_controller::msg::SetPosition *>(
    untyped_ros_message);
  return cdr_deserialize(cdr, *typed_message);
}

static uint32_t _SetPosition__get_serialized_size(
  const void * untyped_ros_message)
{
  auto typed_message =
    static_cast<const motor_controller::msg::SetPosition *>(
    untyped_ros_message);
  return static_cast<uint32_t>(get_serialized_size(*typed_message, 0));
}

static size_t _SetPosition__max_serialized_size(bool & full_bounded)
{
  return max_serialized_size_SetPosition(full_bounded, 0);
}

static message_type_support_callbacks_t _SetPosition__callbacks = {
  "motor_controller::msg",
  "SetPosition",
  _SetPosition__cdr_serialize,
  _SetPosition__cdr_deserialize,
  _SetPosition__get_serialized_size,
  _SetPosition__max_serialized_size
};

static rosidl_message_type_support_t _SetPosition__handle = {
  rosidl_typesupport_fastrtps_cpp::typesupport_identifier,
  &_SetPosition__callbacks,
  get_message_typesupport_handle_function,
};

}  // namespace typesupport_fastrtps_cpp

}  // namespace msg

}  // namespace motor_controller

namespace rosidl_typesupport_fastrtps_cpp
{

template<>
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_EXPORT_motor_controller
const rosidl_message_type_support_t *
get_message_type_support_handle<motor_controller::msg::SetPosition>()
{
  return &motor_controller::msg::typesupport_fastrtps_cpp::_SetPosition__handle;
}

}  // namespace rosidl_typesupport_fastrtps_cpp

#ifdef __cplusplus
extern "C"
{
#endif

const rosidl_message_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_cpp, motor_controller, msg, SetPosition)() {
  return &motor_controller::msg::typesupport_fastrtps_cpp::_SetPosition__handle;
}

#ifdef __cplusplus
}
#endif

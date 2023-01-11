// generated from rosidl_typesupport_fastrtps_cpp/resource/idl__type_support.cpp.em
// with input from motor_controller_interface:srv/GetPosition.idl
// generated code does not contain a copyright notice
#include "motor_controller_interface/srv/detail/get_position__rosidl_typesupport_fastrtps_cpp.hpp"
#include "motor_controller_interface/srv/detail/get_position__struct.hpp"

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

namespace motor_controller_interface
{

namespace srv
{

namespace typesupport_fastrtps_cpp
{

bool
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_motor_controller_interface
cdr_serialize(
  const motor_controller_interface::srv::GetPosition_Request & ros_message,
  eprosima::fastcdr::Cdr & cdr)
{
  // Member: id
  cdr << ros_message.id;
  return true;
}

bool
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_motor_controller_interface
cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  motor_controller_interface::srv::GetPosition_Request & ros_message)
{
  // Member: id
  cdr >> ros_message.id;

  return true;
}

size_t
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_motor_controller_interface
get_serialized_size(
  const motor_controller_interface::srv::GetPosition_Request & ros_message,
  size_t current_alignment)
{
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  (void)padding;
  (void)wchar_size;

  // Member: id
  {
    size_t item_size = sizeof(ros_message.id);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }

  return current_alignment - initial_alignment;
}

size_t
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_motor_controller_interface
max_serialized_size_GetPosition_Request(
  bool & full_bounded,
  size_t current_alignment)
{
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  (void)padding;
  (void)wchar_size;
  (void)full_bounded;


  // Member: id
  {
    size_t array_size = 1;

    current_alignment += array_size * sizeof(uint8_t);
  }

  return current_alignment - initial_alignment;
}

static bool _GetPosition_Request__cdr_serialize(
  const void * untyped_ros_message,
  eprosima::fastcdr::Cdr & cdr)
{
  auto typed_message =
    static_cast<const motor_controller_interface::srv::GetPosition_Request *>(
    untyped_ros_message);
  return cdr_serialize(*typed_message, cdr);
}

static bool _GetPosition_Request__cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  void * untyped_ros_message)
{
  auto typed_message =
    static_cast<motor_controller_interface::srv::GetPosition_Request *>(
    untyped_ros_message);
  return cdr_deserialize(cdr, *typed_message);
}

static uint32_t _GetPosition_Request__get_serialized_size(
  const void * untyped_ros_message)
{
  auto typed_message =
    static_cast<const motor_controller_interface::srv::GetPosition_Request *>(
    untyped_ros_message);
  return static_cast<uint32_t>(get_serialized_size(*typed_message, 0));
}

static size_t _GetPosition_Request__max_serialized_size(bool & full_bounded)
{
  return max_serialized_size_GetPosition_Request(full_bounded, 0);
}

static message_type_support_callbacks_t _GetPosition_Request__callbacks = {
  "motor_controller_interface::srv",
  "GetPosition_Request",
  _GetPosition_Request__cdr_serialize,
  _GetPosition_Request__cdr_deserialize,
  _GetPosition_Request__get_serialized_size,
  _GetPosition_Request__max_serialized_size
};

static rosidl_message_type_support_t _GetPosition_Request__handle = {
  rosidl_typesupport_fastrtps_cpp::typesupport_identifier,
  &_GetPosition_Request__callbacks,
  get_message_typesupport_handle_function,
};

}  // namespace typesupport_fastrtps_cpp

}  // namespace srv

}  // namespace motor_controller_interface

namespace rosidl_typesupport_fastrtps_cpp
{

template<>
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_EXPORT_motor_controller_interface
const rosidl_message_type_support_t *
get_message_type_support_handle<motor_controller_interface::srv::GetPosition_Request>()
{
  return &motor_controller_interface::srv::typesupport_fastrtps_cpp::_GetPosition_Request__handle;
}

}  // namespace rosidl_typesupport_fastrtps_cpp

#ifdef __cplusplus
extern "C"
{
#endif

const rosidl_message_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_cpp, motor_controller_interface, srv, GetPosition_Request)() {
  return &motor_controller_interface::srv::typesupport_fastrtps_cpp::_GetPosition_Request__handle;
}

#ifdef __cplusplus
}
#endif

// already included above
// #include <limits>
// already included above
// #include <stdexcept>
// already included above
// #include <string>
// already included above
// #include "rosidl_typesupport_cpp/message_type_support.hpp"
// already included above
// #include "rosidl_typesupport_fastrtps_cpp/identifier.hpp"
// already included above
// #include "rosidl_typesupport_fastrtps_cpp/message_type_support.h"
// already included above
// #include "rosidl_typesupport_fastrtps_cpp/message_type_support_decl.hpp"
// already included above
// #include "rosidl_typesupport_fastrtps_cpp/wstring_conversion.hpp"
// already included above
// #include "fastcdr/Cdr.h"


// forward declaration of message dependencies and their conversion functions

namespace motor_controller_interface
{

namespace srv
{

namespace typesupport_fastrtps_cpp
{

bool
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_motor_controller_interface
cdr_serialize(
  const motor_controller_interface::srv::GetPosition_Response & ros_message,
  eprosima::fastcdr::Cdr & cdr)
{
  // Member: position
  cdr << ros_message.position;
  return true;
}

bool
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_motor_controller_interface
cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  motor_controller_interface::srv::GetPosition_Response & ros_message)
{
  // Member: position
  cdr >> ros_message.position;

  return true;
}

size_t
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_motor_controller_interface
get_serialized_size(
  const motor_controller_interface::srv::GetPosition_Response & ros_message,
  size_t current_alignment)
{
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  (void)padding;
  (void)wchar_size;

  // Member: position
  {
    size_t item_size = sizeof(ros_message.position);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }

  return current_alignment - initial_alignment;
}

size_t
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_motor_controller_interface
max_serialized_size_GetPosition_Response(
  bool & full_bounded,
  size_t current_alignment)
{
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  (void)padding;
  (void)wchar_size;
  (void)full_bounded;


  // Member: position
  {
    size_t array_size = 1;

    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  return current_alignment - initial_alignment;
}

static bool _GetPosition_Response__cdr_serialize(
  const void * untyped_ros_message,
  eprosima::fastcdr::Cdr & cdr)
{
  auto typed_message =
    static_cast<const motor_controller_interface::srv::GetPosition_Response *>(
    untyped_ros_message);
  return cdr_serialize(*typed_message, cdr);
}

static bool _GetPosition_Response__cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  void * untyped_ros_message)
{
  auto typed_message =
    static_cast<motor_controller_interface::srv::GetPosition_Response *>(
    untyped_ros_message);
  return cdr_deserialize(cdr, *typed_message);
}

static uint32_t _GetPosition_Response__get_serialized_size(
  const void * untyped_ros_message)
{
  auto typed_message =
    static_cast<const motor_controller_interface::srv::GetPosition_Response *>(
    untyped_ros_message);
  return static_cast<uint32_t>(get_serialized_size(*typed_message, 0));
}

static size_t _GetPosition_Response__max_serialized_size(bool & full_bounded)
{
  return max_serialized_size_GetPosition_Response(full_bounded, 0);
}

static message_type_support_callbacks_t _GetPosition_Response__callbacks = {
  "motor_controller_interface::srv",
  "GetPosition_Response",
  _GetPosition_Response__cdr_serialize,
  _GetPosition_Response__cdr_deserialize,
  _GetPosition_Response__get_serialized_size,
  _GetPosition_Response__max_serialized_size
};

static rosidl_message_type_support_t _GetPosition_Response__handle = {
  rosidl_typesupport_fastrtps_cpp::typesupport_identifier,
  &_GetPosition_Response__callbacks,
  get_message_typesupport_handle_function,
};

}  // namespace typesupport_fastrtps_cpp

}  // namespace srv

}  // namespace motor_controller_interface

namespace rosidl_typesupport_fastrtps_cpp
{

template<>
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_EXPORT_motor_controller_interface
const rosidl_message_type_support_t *
get_message_type_support_handle<motor_controller_interface::srv::GetPosition_Response>()
{
  return &motor_controller_interface::srv::typesupport_fastrtps_cpp::_GetPosition_Response__handle;
}

}  // namespace rosidl_typesupport_fastrtps_cpp

#ifdef __cplusplus
extern "C"
{
#endif

const rosidl_message_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_cpp, motor_controller_interface, srv, GetPosition_Response)() {
  return &motor_controller_interface::srv::typesupport_fastrtps_cpp::_GetPosition_Response__handle;
}

#ifdef __cplusplus
}
#endif

#include "rmw/error_handling.h"
// already included above
// #include "rosidl_typesupport_fastrtps_cpp/identifier.hpp"
#include "rosidl_typesupport_fastrtps_cpp/service_type_support.h"
#include "rosidl_typesupport_fastrtps_cpp/service_type_support_decl.hpp"

namespace motor_controller_interface
{

namespace srv
{

namespace typesupport_fastrtps_cpp
{

static service_type_support_callbacks_t _GetPosition__callbacks = {
  "motor_controller_interface::srv",
  "GetPosition",
  ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_cpp, motor_controller_interface, srv, GetPosition_Request)(),
  ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_cpp, motor_controller_interface, srv, GetPosition_Response)(),
};

static rosidl_service_type_support_t _GetPosition__handle = {
  rosidl_typesupport_fastrtps_cpp::typesupport_identifier,
  &_GetPosition__callbacks,
  get_service_typesupport_handle_function,
};

}  // namespace typesupport_fastrtps_cpp

}  // namespace srv

}  // namespace motor_controller_interface

namespace rosidl_typesupport_fastrtps_cpp
{

template<>
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_EXPORT_motor_controller_interface
const rosidl_service_type_support_t *
get_service_type_support_handle<motor_controller_interface::srv::GetPosition>()
{
  return &motor_controller_interface::srv::typesupport_fastrtps_cpp::_GetPosition__handle;
}

}  // namespace rosidl_typesupport_fastrtps_cpp

#ifdef __cplusplus
extern "C"
{
#endif

const rosidl_service_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__SERVICE_SYMBOL_NAME(rosidl_typesupport_fastrtps_cpp, motor_controller_interface, srv, GetPosition)() {
  return &motor_controller_interface::srv::typesupport_fastrtps_cpp::_GetPosition__handle;
}

#ifdef __cplusplus
}
#endif
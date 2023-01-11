// generated from rosidl_generator_cpp/resource/idl__traits.hpp.em
// with input from motor_controller_interface:srv/GetPosition.idl
// generated code does not contain a copyright notice

#ifndef MOTOR_CONTROLLER_INTERFACE__SRV__DETAIL__GET_POSITION__TRAITS_HPP_
#define MOTOR_CONTROLLER_INTERFACE__SRV__DETAIL__GET_POSITION__TRAITS_HPP_

#include "motor_controller_interface/srv/detail/get_position__struct.hpp"
#include <rosidl_runtime_cpp/traits.hpp>
#include <stdint.h>
#include <type_traits>

namespace rosidl_generator_traits
{

template<>
inline const char * data_type<motor_controller_interface::srv::GetPosition_Request>()
{
  return "motor_controller_interface::srv::GetPosition_Request";
}

template<>
inline const char * name<motor_controller_interface::srv::GetPosition_Request>()
{
  return "motor_controller_interface/srv/GetPosition_Request";
}

template<>
struct has_fixed_size<motor_controller_interface::srv::GetPosition_Request>
  : std::integral_constant<bool, true> {};

template<>
struct has_bounded_size<motor_controller_interface::srv::GetPosition_Request>
  : std::integral_constant<bool, true> {};

template<>
struct is_message<motor_controller_interface::srv::GetPosition_Request>
  : std::true_type {};

}  // namespace rosidl_generator_traits

namespace rosidl_generator_traits
{

template<>
inline const char * data_type<motor_controller_interface::srv::GetPosition_Response>()
{
  return "motor_controller_interface::srv::GetPosition_Response";
}

template<>
inline const char * name<motor_controller_interface::srv::GetPosition_Response>()
{
  return "motor_controller_interface/srv/GetPosition_Response";
}

template<>
struct has_fixed_size<motor_controller_interface::srv::GetPosition_Response>
  : std::integral_constant<bool, true> {};

template<>
struct has_bounded_size<motor_controller_interface::srv::GetPosition_Response>
  : std::integral_constant<bool, true> {};

template<>
struct is_message<motor_controller_interface::srv::GetPosition_Response>
  : std::true_type {};

}  // namespace rosidl_generator_traits

namespace rosidl_generator_traits
{

template<>
inline const char * data_type<motor_controller_interface::srv::GetPosition>()
{
  return "motor_controller_interface::srv::GetPosition";
}

template<>
inline const char * name<motor_controller_interface::srv::GetPosition>()
{
  return "motor_controller_interface/srv/GetPosition";
}

template<>
struct has_fixed_size<motor_controller_interface::srv::GetPosition>
  : std::integral_constant<
    bool,
    has_fixed_size<motor_controller_interface::srv::GetPosition_Request>::value &&
    has_fixed_size<motor_controller_interface::srv::GetPosition_Response>::value
  >
{
};

template<>
struct has_bounded_size<motor_controller_interface::srv::GetPosition>
  : std::integral_constant<
    bool,
    has_bounded_size<motor_controller_interface::srv::GetPosition_Request>::value &&
    has_bounded_size<motor_controller_interface::srv::GetPosition_Response>::value
  >
{
};

template<>
struct is_service<motor_controller_interface::srv::GetPosition>
  : std::true_type
{
};

template<>
struct is_service_request<motor_controller_interface::srv::GetPosition_Request>
  : std::true_type
{
};

template<>
struct is_service_response<motor_controller_interface::srv::GetPosition_Response>
  : std::true_type
{
};

}  // namespace rosidl_generator_traits

#endif  // MOTOR_CONTROLLER_INTERFACE__SRV__DETAIL__GET_POSITION__TRAITS_HPP_

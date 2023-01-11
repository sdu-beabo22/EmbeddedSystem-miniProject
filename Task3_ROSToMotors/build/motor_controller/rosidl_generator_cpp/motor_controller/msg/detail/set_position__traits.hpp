// generated from rosidl_generator_cpp/resource/idl__traits.hpp.em
// with input from motor_controller:msg/SetPosition.idl
// generated code does not contain a copyright notice

#ifndef MOTOR_CONTROLLER__MSG__DETAIL__SET_POSITION__TRAITS_HPP_
#define MOTOR_CONTROLLER__MSG__DETAIL__SET_POSITION__TRAITS_HPP_

#include "motor_controller/msg/detail/set_position__struct.hpp"
#include <rosidl_runtime_cpp/traits.hpp>
#include <stdint.h>
#include <type_traits>

namespace rosidl_generator_traits
{

template<>
inline const char * data_type<motor_controller::msg::SetPosition>()
{
  return "motor_controller::msg::SetPosition";
}

template<>
inline const char * name<motor_controller::msg::SetPosition>()
{
  return "motor_controller/msg/SetPosition";
}

template<>
struct has_fixed_size<motor_controller::msg::SetPosition>
  : std::integral_constant<bool, true> {};

template<>
struct has_bounded_size<motor_controller::msg::SetPosition>
  : std::integral_constant<bool, true> {};

template<>
struct is_message<motor_controller::msg::SetPosition>
  : std::true_type {};

}  // namespace rosidl_generator_traits

#endif  // MOTOR_CONTROLLER__MSG__DETAIL__SET_POSITION__TRAITS_HPP_

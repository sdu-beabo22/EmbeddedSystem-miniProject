// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from motor_controller_interface:msg/SetPosition.idl
// generated code does not contain a copyright notice

#ifndef MOTOR_CONTROLLER_INTERFACE__MSG__DETAIL__SET_POSITION__BUILDER_HPP_
#define MOTOR_CONTROLLER_INTERFACE__MSG__DETAIL__SET_POSITION__BUILDER_HPP_

#include "motor_controller_interface/msg/detail/set_position__struct.hpp"
#include <rosidl_runtime_cpp/message_initialization.hpp>
#include <algorithm>
#include <utility>


namespace motor_controller_interface
{

namespace msg
{

namespace builder
{

class Init_SetPosition_position
{
public:
  explicit Init_SetPosition_position(::motor_controller_interface::msg::SetPosition & msg)
  : msg_(msg)
  {}
  ::motor_controller_interface::msg::SetPosition position(::motor_controller_interface::msg::SetPosition::_position_type arg)
  {
    msg_.position = std::move(arg);
    return std::move(msg_);
  }

private:
  ::motor_controller_interface::msg::SetPosition msg_;
};

class Init_SetPosition_id
{
public:
  Init_SetPosition_id()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_SetPosition_position id(::motor_controller_interface::msg::SetPosition::_id_type arg)
  {
    msg_.id = std::move(arg);
    return Init_SetPosition_position(msg_);
  }

private:
  ::motor_controller_interface::msg::SetPosition msg_;
};

}  // namespace builder

}  // namespace msg

template<typename MessageType>
auto build();

template<>
inline
auto build<::motor_controller_interface::msg::SetPosition>()
{
  return motor_controller_interface::msg::builder::Init_SetPosition_id();
}

}  // namespace motor_controller_interface

#endif  // MOTOR_CONTROLLER_INTERFACE__MSG__DETAIL__SET_POSITION__BUILDER_HPP_

// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from motor_controller:msg/SetPosition.idl
// generated code does not contain a copyright notice

#ifndef MOTOR_CONTROLLER__MSG__DETAIL__SET_POSITION__BUILDER_HPP_
#define MOTOR_CONTROLLER__MSG__DETAIL__SET_POSITION__BUILDER_HPP_

#include "motor_controller/msg/detail/set_position__struct.hpp"
#include <rosidl_runtime_cpp/message_initialization.hpp>
#include <algorithm>
#include <utility>


namespace motor_controller
{

namespace msg
{

namespace builder
{

class Init_SetPosition_position1
{
public:
  explicit Init_SetPosition_position1(::motor_controller::msg::SetPosition & msg)
  : msg_(msg)
  {}
  ::motor_controller::msg::SetPosition position1(::motor_controller::msg::SetPosition::_position1_type arg)
  {
    msg_.position1 = std::move(arg);
    return std::move(msg_);
  }

private:
  ::motor_controller::msg::SetPosition msg_;
};

class Init_SetPosition_position0
{
public:
  explicit Init_SetPosition_position0(::motor_controller::msg::SetPosition & msg)
  : msg_(msg)
  {}
  Init_SetPosition_position1 position0(::motor_controller::msg::SetPosition::_position0_type arg)
  {
    msg_.position0 = std::move(arg);
    return Init_SetPosition_position1(msg_);
  }

private:
  ::motor_controller::msg::SetPosition msg_;
};

class Init_SetPosition_id1
{
public:
  explicit Init_SetPosition_id1(::motor_controller::msg::SetPosition & msg)
  : msg_(msg)
  {}
  Init_SetPosition_position0 id1(::motor_controller::msg::SetPosition::_id1_type arg)
  {
    msg_.id1 = std::move(arg);
    return Init_SetPosition_position0(msg_);
  }

private:
  ::motor_controller::msg::SetPosition msg_;
};

class Init_SetPosition_id0
{
public:
  Init_SetPosition_id0()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_SetPosition_id1 id0(::motor_controller::msg::SetPosition::_id0_type arg)
  {
    msg_.id0 = std::move(arg);
    return Init_SetPosition_id1(msg_);
  }

private:
  ::motor_controller::msg::SetPosition msg_;
};

}  // namespace builder

}  // namespace msg

template<typename MessageType>
auto build();

template<>
inline
auto build<::motor_controller::msg::SetPosition>()
{
  return motor_controller::msg::builder::Init_SetPosition_id0();
}

}  // namespace motor_controller

#endif  // MOTOR_CONTROLLER__MSG__DETAIL__SET_POSITION__BUILDER_HPP_

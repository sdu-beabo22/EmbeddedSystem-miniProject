// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from motor_controller_interface:srv/GetPosition.idl
// generated code does not contain a copyright notice

#ifndef MOTOR_CONTROLLER_INTERFACE__SRV__DETAIL__GET_POSITION__BUILDER_HPP_
#define MOTOR_CONTROLLER_INTERFACE__SRV__DETAIL__GET_POSITION__BUILDER_HPP_

#include "motor_controller_interface/srv/detail/get_position__struct.hpp"
#include <rosidl_runtime_cpp/message_initialization.hpp>
#include <algorithm>
#include <utility>


namespace motor_controller_interface
{

namespace srv
{

namespace builder
{

class Init_GetPosition_Request_id
{
public:
  Init_GetPosition_Request_id()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::motor_controller_interface::srv::GetPosition_Request id(::motor_controller_interface::srv::GetPosition_Request::_id_type arg)
  {
    msg_.id = std::move(arg);
    return std::move(msg_);
  }

private:
  ::motor_controller_interface::srv::GetPosition_Request msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::motor_controller_interface::srv::GetPosition_Request>()
{
  return motor_controller_interface::srv::builder::Init_GetPosition_Request_id();
}

}  // namespace motor_controller_interface


namespace motor_controller_interface
{

namespace srv
{

namespace builder
{

class Init_GetPosition_Response_position
{
public:
  Init_GetPosition_Response_position()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::motor_controller_interface::srv::GetPosition_Response position(::motor_controller_interface::srv::GetPosition_Response::_position_type arg)
  {
    msg_.position = std::move(arg);
    return std::move(msg_);
  }

private:
  ::motor_controller_interface::srv::GetPosition_Response msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::motor_controller_interface::srv::GetPosition_Response>()
{
  return motor_controller_interface::srv::builder::Init_GetPosition_Response_position();
}

}  // namespace motor_controller_interface

#endif  // MOTOR_CONTROLLER_INTERFACE__SRV__DETAIL__GET_POSITION__BUILDER_HPP_

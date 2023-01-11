// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from motor_controller:srv/GetPosition.idl
// generated code does not contain a copyright notice

#ifndef MOTOR_CONTROLLER__SRV__DETAIL__GET_POSITION__BUILDER_HPP_
#define MOTOR_CONTROLLER__SRV__DETAIL__GET_POSITION__BUILDER_HPP_

#include "motor_controller/srv/detail/get_position__struct.hpp"
#include <rosidl_runtime_cpp/message_initialization.hpp>
#include <algorithm>
#include <utility>


namespace motor_controller
{

namespace srv
{

namespace builder
{

class Init_GetPosition_Request_id1
{
public:
  explicit Init_GetPosition_Request_id1(::motor_controller::srv::GetPosition_Request & msg)
  : msg_(msg)
  {}
  ::motor_controller::srv::GetPosition_Request id1(::motor_controller::srv::GetPosition_Request::_id1_type arg)
  {
    msg_.id1 = std::move(arg);
    return std::move(msg_);
  }

private:
  ::motor_controller::srv::GetPosition_Request msg_;
};

class Init_GetPosition_Request_id0
{
public:
  Init_GetPosition_Request_id0()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_GetPosition_Request_id1 id0(::motor_controller::srv::GetPosition_Request::_id0_type arg)
  {
    msg_.id0 = std::move(arg);
    return Init_GetPosition_Request_id1(msg_);
  }

private:
  ::motor_controller::srv::GetPosition_Request msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::motor_controller::srv::GetPosition_Request>()
{
  return motor_controller::srv::builder::Init_GetPosition_Request_id0();
}

}  // namespace motor_controller


namespace motor_controller
{

namespace srv
{

namespace builder
{

class Init_GetPosition_Response_position1
{
public:
  explicit Init_GetPosition_Response_position1(::motor_controller::srv::GetPosition_Response & msg)
  : msg_(msg)
  {}
  ::motor_controller::srv::GetPosition_Response position1(::motor_controller::srv::GetPosition_Response::_position1_type arg)
  {
    msg_.position1 = std::move(arg);
    return std::move(msg_);
  }

private:
  ::motor_controller::srv::GetPosition_Response msg_;
};

class Init_GetPosition_Response_position0
{
public:
  Init_GetPosition_Response_position0()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_GetPosition_Response_position1 position0(::motor_controller::srv::GetPosition_Response::_position0_type arg)
  {
    msg_.position0 = std::move(arg);
    return Init_GetPosition_Response_position1(msg_);
  }

private:
  ::motor_controller::srv::GetPosition_Response msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::motor_controller::srv::GetPosition_Response>()
{
  return motor_controller::srv::builder::Init_GetPosition_Response_position0();
}

}  // namespace motor_controller

#endif  // MOTOR_CONTROLLER__SRV__DETAIL__GET_POSITION__BUILDER_HPP_

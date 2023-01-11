// generated from rosidl_generator_cpp/resource/idl__struct.hpp.em
// with input from motor_controller:msg/SetPosition.idl
// generated code does not contain a copyright notice

#ifndef MOTOR_CONTROLLER__MSG__DETAIL__SET_POSITION__STRUCT_HPP_
#define MOTOR_CONTROLLER__MSG__DETAIL__SET_POSITION__STRUCT_HPP_

#include <rosidl_runtime_cpp/bounded_vector.hpp>
#include <rosidl_runtime_cpp/message_initialization.hpp>
#include <algorithm>
#include <array>
#include <memory>
#include <string>
#include <vector>


#ifndef _WIN32
# define DEPRECATED__motor_controller__msg__SetPosition __attribute__((deprecated))
#else
# define DEPRECATED__motor_controller__msg__SetPosition __declspec(deprecated)
#endif

namespace motor_controller
{

namespace msg
{

// message struct
template<class ContainerAllocator>
struct SetPosition_
{
  using Type = SetPosition_<ContainerAllocator>;

  explicit SetPosition_(rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  {
    if (rosidl_runtime_cpp::MessageInitialization::ALL == _init ||
      rosidl_runtime_cpp::MessageInitialization::ZERO == _init)
    {
      this->id0 = 0;
      this->id1 = 0;
      this->position0 = 0l;
      this->position1 = 0l;
    }
  }

  explicit SetPosition_(const ContainerAllocator & _alloc, rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  {
    (void)_alloc;
    if (rosidl_runtime_cpp::MessageInitialization::ALL == _init ||
      rosidl_runtime_cpp::MessageInitialization::ZERO == _init)
    {
      this->id0 = 0;
      this->id1 = 0;
      this->position0 = 0l;
      this->position1 = 0l;
    }
  }

  // field types and members
  using _id0_type =
    uint8_t;
  _id0_type id0;
  using _id1_type =
    uint8_t;
  _id1_type id1;
  using _position0_type =
    int32_t;
  _position0_type position0;
  using _position1_type =
    int32_t;
  _position1_type position1;

  // setters for named parameter idiom
  Type & set__id0(
    const uint8_t & _arg)
  {
    this->id0 = _arg;
    return *this;
  }
  Type & set__id1(
    const uint8_t & _arg)
  {
    this->id1 = _arg;
    return *this;
  }
  Type & set__position0(
    const int32_t & _arg)
  {
    this->position0 = _arg;
    return *this;
  }
  Type & set__position1(
    const int32_t & _arg)
  {
    this->position1 = _arg;
    return *this;
  }

  // constant declarations

  // pointer types
  using RawPtr =
    motor_controller::msg::SetPosition_<ContainerAllocator> *;
  using ConstRawPtr =
    const motor_controller::msg::SetPosition_<ContainerAllocator> *;
  using SharedPtr =
    std::shared_ptr<motor_controller::msg::SetPosition_<ContainerAllocator>>;
  using ConstSharedPtr =
    std::shared_ptr<motor_controller::msg::SetPosition_<ContainerAllocator> const>;

  template<typename Deleter = std::default_delete<
      motor_controller::msg::SetPosition_<ContainerAllocator>>>
  using UniquePtrWithDeleter =
    std::unique_ptr<motor_controller::msg::SetPosition_<ContainerAllocator>, Deleter>;

  using UniquePtr = UniquePtrWithDeleter<>;

  template<typename Deleter = std::default_delete<
      motor_controller::msg::SetPosition_<ContainerAllocator>>>
  using ConstUniquePtrWithDeleter =
    std::unique_ptr<motor_controller::msg::SetPosition_<ContainerAllocator> const, Deleter>;
  using ConstUniquePtr = ConstUniquePtrWithDeleter<>;

  using WeakPtr =
    std::weak_ptr<motor_controller::msg::SetPosition_<ContainerAllocator>>;
  using ConstWeakPtr =
    std::weak_ptr<motor_controller::msg::SetPosition_<ContainerAllocator> const>;

  // pointer types similar to ROS 1, use SharedPtr / ConstSharedPtr instead
  // NOTE: Can't use 'using' here because GNU C++ can't parse attributes properly
  typedef DEPRECATED__motor_controller__msg__SetPosition
    std::shared_ptr<motor_controller::msg::SetPosition_<ContainerAllocator>>
    Ptr;
  typedef DEPRECATED__motor_controller__msg__SetPosition
    std::shared_ptr<motor_controller::msg::SetPosition_<ContainerAllocator> const>
    ConstPtr;

  // comparison operators
  bool operator==(const SetPosition_ & other) const
  {
    if (this->id0 != other.id0) {
      return false;
    }
    if (this->id1 != other.id1) {
      return false;
    }
    if (this->position0 != other.position0) {
      return false;
    }
    if (this->position1 != other.position1) {
      return false;
    }
    return true;
  }
  bool operator!=(const SetPosition_ & other) const
  {
    return !this->operator==(other);
  }
};  // struct SetPosition_

// alias to use template instance with default allocator
using SetPosition =
  motor_controller::msg::SetPosition_<std::allocator<void>>;

// constant definitions

}  // namespace msg

}  // namespace motor_controller

#endif  // MOTOR_CONTROLLER__MSG__DETAIL__SET_POSITION__STRUCT_HPP_

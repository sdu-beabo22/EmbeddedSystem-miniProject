#include <chrono>
#include <functional>
#include <memory>
#include <string>
#include <iostream>
#include <string>
#include <stdlib.h>

#include "rclcpp/rclcpp.hpp"
#include "std_msgs/msg/float.hpp"

// #include "converter.cpp" !!!

using namespace std::chrono_literals;
/*
float converter{

  BRAM bram1(0,1);
  uint32_t* bram = bram1.GetPointer();
  unsigned int idx = 0;
  float x, y;

  if (bram[idx] == 0) { //what ai outputs
    x = 0;
    y = 12.0;
  } else {
    x = -7.0;
    y = 5.0;
  };

  float ans[2];
  ans[0] = x;
  ans[1] = y;

  return ans;
};*/

class InverseKinematics : public rclcpp::Node
{
public:
  InverseKinematics()
      : Node("inverse kinematics"), count_(0)
  {
    publisher_ = this->create_publisher<std_msgs::msg::Float>("angle", 10);
    timer_ = this->create_wall_timer(
        500ms, std::bind(&InverseKinematics::timer_callback, this));
  }

private:
  float pi = 3.14159;
  float a1, a2, phi_1, phi_2, theta_1, phi_3, theta_2, x, y;
  Converter converter1(0, 1);

  void timer_callback()
  {
    float[2] coordinates = converter1.convert();

    x = coordinates[0];
    y = coordinates[1];

    a1 = 5.0; // length of our first limb part
    a2 = 7.0; // length of our second limb part

    // inverse kinematics
    r1 = sqrt(pow(x, 2.0) + pow(y, 2.0));

    phi_1 = acos((pow(a2, 2.0) - pow(a1, 2.0) - pow(r1, 2.0)) / (-2.0 * a1 * r1));
    phi_2 = atan2(y, x);

    theta_1 = ((phi_2 - phi_1) * (180 / pi));

    phi_3 = acos((pow(r1, 2.0) - pow(a1, 2.0) - pow(a2, 2.0)) / (-2.0 * a1 * a2));

    theta_2 = 180.0 - (phi_3 * (180 / pi));

    auto message1 = std_msgs::msg::Float();
    auto message2 = std_msgs::msg::Float();
    message.data = theta_1;
    message.data = theta_2;
    publisher_->publish(message1);
    publisher_->publish(message2);
  }

  rclcpp::TimerBase::SharedPtr timer_;
  rclcpp::Publisher<std_msgs::msg::Float>::SharedPtr publisher_;
  size_t count_;
};

int main(int argc, char *argv[])
{
  rclcpp::init(argc, argv);
  rclcpp::spin(std::make_shared<InverseKinematics>());
  rclcpp::shutdown();
  return 0;
}

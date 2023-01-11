// generated from
// rosidl_typesupport_c/resource/rosidl_typesupport_c__visibility_control.h.in
// generated code does not contain a copyright notice

#ifndef MOTOR_CONTROLLER__MSG__ROSIDL_TYPESUPPORT_C__VISIBILITY_CONTROL_H_
#define MOTOR_CONTROLLER__MSG__ROSIDL_TYPESUPPORT_C__VISIBILITY_CONTROL_H_

#ifdef __cplusplus
extern "C"
{
#endif

// This logic was borrowed (then namespaced) from the examples on the gcc wiki:
//     https://gcc.gnu.org/wiki/Visibility

#if defined _WIN32 || defined __CYGWIN__
  #ifdef __GNUC__
    #define ROSIDL_TYPESUPPORT_C_EXPORT_motor_controller __attribute__ ((dllexport))
    #define ROSIDL_TYPESUPPORT_C_IMPORT_motor_controller __attribute__ ((dllimport))
  #else
    #define ROSIDL_TYPESUPPORT_C_EXPORT_motor_controller __declspec(dllexport)
    #define ROSIDL_TYPESUPPORT_C_IMPORT_motor_controller __declspec(dllimport)
  #endif
  #ifdef ROSIDL_TYPESUPPORT_C_BUILDING_DLL_motor_controller
    #define ROSIDL_TYPESUPPORT_C_PUBLIC_motor_controller ROSIDL_TYPESUPPORT_C_EXPORT_motor_controller
  #else
    #define ROSIDL_TYPESUPPORT_C_PUBLIC_motor_controller ROSIDL_TYPESUPPORT_C_IMPORT_motor_controller
  #endif
#else
  #define ROSIDL_TYPESUPPORT_C_EXPORT_motor_controller __attribute__ ((visibility("default")))
  #define ROSIDL_TYPESUPPORT_C_IMPORT_motor_controller
  #if __GNUC__ >= 4
    #define ROSIDL_TYPESUPPORT_C_PUBLIC_motor_controller __attribute__ ((visibility("default")))
  #else
    #define ROSIDL_TYPESUPPORT_C_PUBLIC_motor_controller
  #endif
#endif

#ifdef __cplusplus
}
#endif

#endif  // MOTOR_CONTROLLER__MSG__ROSIDL_TYPESUPPORT_C__VISIBILITY_CONTROL_H_

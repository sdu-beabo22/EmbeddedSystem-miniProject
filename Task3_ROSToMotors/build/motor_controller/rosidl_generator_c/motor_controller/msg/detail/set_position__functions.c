// generated from rosidl_generator_c/resource/idl__functions.c.em
// with input from motor_controller:msg/SetPosition.idl
// generated code does not contain a copyright notice
#include "motor_controller/msg/detail/set_position__functions.h"

#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

#include "rcutils/allocator.h"


bool
motor_controller__msg__SetPosition__init(motor_controller__msg__SetPosition * msg)
{
  if (!msg) {
    return false;
  }
  // id0
  // id1
  // position0
  // position1
  return true;
}

void
motor_controller__msg__SetPosition__fini(motor_controller__msg__SetPosition * msg)
{
  if (!msg) {
    return;
  }
  // id0
  // id1
  // position0
  // position1
}

bool
motor_controller__msg__SetPosition__are_equal(const motor_controller__msg__SetPosition * lhs, const motor_controller__msg__SetPosition * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  // id0
  if (lhs->id0 != rhs->id0) {
    return false;
  }
  // id1
  if (lhs->id1 != rhs->id1) {
    return false;
  }
  // position0
  if (lhs->position0 != rhs->position0) {
    return false;
  }
  // position1
  if (lhs->position1 != rhs->position1) {
    return false;
  }
  return true;
}

bool
motor_controller__msg__SetPosition__copy(
  const motor_controller__msg__SetPosition * input,
  motor_controller__msg__SetPosition * output)
{
  if (!input || !output) {
    return false;
  }
  // id0
  output->id0 = input->id0;
  // id1
  output->id1 = input->id1;
  // position0
  output->position0 = input->position0;
  // position1
  output->position1 = input->position1;
  return true;
}

motor_controller__msg__SetPosition *
motor_controller__msg__SetPosition__create()
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  motor_controller__msg__SetPosition * msg = (motor_controller__msg__SetPosition *)allocator.allocate(sizeof(motor_controller__msg__SetPosition), allocator.state);
  if (!msg) {
    return NULL;
  }
  memset(msg, 0, sizeof(motor_controller__msg__SetPosition));
  bool success = motor_controller__msg__SetPosition__init(msg);
  if (!success) {
    allocator.deallocate(msg, allocator.state);
    return NULL;
  }
  return msg;
}

void
motor_controller__msg__SetPosition__destroy(motor_controller__msg__SetPosition * msg)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (msg) {
    motor_controller__msg__SetPosition__fini(msg);
  }
  allocator.deallocate(msg, allocator.state);
}


bool
motor_controller__msg__SetPosition__Sequence__init(motor_controller__msg__SetPosition__Sequence * array, size_t size)
{
  if (!array) {
    return false;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  motor_controller__msg__SetPosition * data = NULL;

  if (size) {
    data = (motor_controller__msg__SetPosition *)allocator.zero_allocate(size, sizeof(motor_controller__msg__SetPosition), allocator.state);
    if (!data) {
      return false;
    }
    // initialize all array elements
    size_t i;
    for (i = 0; i < size; ++i) {
      bool success = motor_controller__msg__SetPosition__init(&data[i]);
      if (!success) {
        break;
      }
    }
    if (i < size) {
      // if initialization failed finalize the already initialized array elements
      for (; i > 0; --i) {
        motor_controller__msg__SetPosition__fini(&data[i - 1]);
      }
      allocator.deallocate(data, allocator.state);
      return false;
    }
  }
  array->data = data;
  array->size = size;
  array->capacity = size;
  return true;
}

void
motor_controller__msg__SetPosition__Sequence__fini(motor_controller__msg__SetPosition__Sequence * array)
{
  if (!array) {
    return;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();

  if (array->data) {
    // ensure that data and capacity values are consistent
    assert(array->capacity > 0);
    // finalize all array elements
    for (size_t i = 0; i < array->capacity; ++i) {
      motor_controller__msg__SetPosition__fini(&array->data[i]);
    }
    allocator.deallocate(array->data, allocator.state);
    array->data = NULL;
    array->size = 0;
    array->capacity = 0;
  } else {
    // ensure that data, size, and capacity values are consistent
    assert(0 == array->size);
    assert(0 == array->capacity);
  }
}

motor_controller__msg__SetPosition__Sequence *
motor_controller__msg__SetPosition__Sequence__create(size_t size)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  motor_controller__msg__SetPosition__Sequence * array = (motor_controller__msg__SetPosition__Sequence *)allocator.allocate(sizeof(motor_controller__msg__SetPosition__Sequence), allocator.state);
  if (!array) {
    return NULL;
  }
  bool success = motor_controller__msg__SetPosition__Sequence__init(array, size);
  if (!success) {
    allocator.deallocate(array, allocator.state);
    return NULL;
  }
  return array;
}

void
motor_controller__msg__SetPosition__Sequence__destroy(motor_controller__msg__SetPosition__Sequence * array)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (array) {
    motor_controller__msg__SetPosition__Sequence__fini(array);
  }
  allocator.deallocate(array, allocator.state);
}

bool
motor_controller__msg__SetPosition__Sequence__are_equal(const motor_controller__msg__SetPosition__Sequence * lhs, const motor_controller__msg__SetPosition__Sequence * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  if (lhs->size != rhs->size) {
    return false;
  }
  for (size_t i = 0; i < lhs->size; ++i) {
    if (!motor_controller__msg__SetPosition__are_equal(&(lhs->data[i]), &(rhs->data[i]))) {
      return false;
    }
  }
  return true;
}

bool
motor_controller__msg__SetPosition__Sequence__copy(
  const motor_controller__msg__SetPosition__Sequence * input,
  motor_controller__msg__SetPosition__Sequence * output)
{
  if (!input || !output) {
    return false;
  }
  if (output->capacity < input->size) {
    const size_t allocation_size =
      input->size * sizeof(motor_controller__msg__SetPosition);
    motor_controller__msg__SetPosition * data =
      (motor_controller__msg__SetPosition *)realloc(output->data, allocation_size);
    if (!data) {
      return false;
    }
    for (size_t i = output->capacity; i < input->size; ++i) {
      if (!motor_controller__msg__SetPosition__init(&data[i])) {
        /* free currently allocated and return false */
        for (; i-- > output->capacity; ) {
          motor_controller__msg__SetPosition__fini(&data[i]);
        }
        free(data);
        return false;
      }
    }
    output->data = data;
    output->capacity = input->size;
  }
  output->size = input->size;
  for (size_t i = 0; i < input->size; ++i) {
    if (!motor_controller__msg__SetPosition__copy(
        &(input->data[i]), &(output->data[i])))
    {
      return false;
    }
  }
  return true;
}

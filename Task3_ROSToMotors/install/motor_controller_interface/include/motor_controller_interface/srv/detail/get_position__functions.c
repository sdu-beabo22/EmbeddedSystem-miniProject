// generated from rosidl_generator_c/resource/idl__functions.c.em
// with input from motor_controller_interface:srv/GetPosition.idl
// generated code does not contain a copyright notice
#include "motor_controller_interface/srv/detail/get_position__functions.h"

#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

#include "rcutils/allocator.h"

bool
motor_controller_interface__srv__GetPosition_Request__init(motor_controller_interface__srv__GetPosition_Request * msg)
{
  if (!msg) {
    return false;
  }
  // id0
  // id1
  return true;
}

void
motor_controller_interface__srv__GetPosition_Request__fini(motor_controller_interface__srv__GetPosition_Request * msg)
{
  if (!msg) {
    return;
  }
  // id0
  // id1
}

bool
motor_controller_interface__srv__GetPosition_Request__are_equal(const motor_controller_interface__srv__GetPosition_Request * lhs, const motor_controller_interface__srv__GetPosition_Request * rhs)
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
  return true;
}

bool
motor_controller_interface__srv__GetPosition_Request__copy(
  const motor_controller_interface__srv__GetPosition_Request * input,
  motor_controller_interface__srv__GetPosition_Request * output)
{
  if (!input || !output) {
    return false;
  }
  // id0
  output->id0 = input->id0;
  // id1
  output->id1 = input->id1;
  return true;
}

motor_controller_interface__srv__GetPosition_Request *
motor_controller_interface__srv__GetPosition_Request__create()
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  motor_controller_interface__srv__GetPosition_Request * msg = (motor_controller_interface__srv__GetPosition_Request *)allocator.allocate(sizeof(motor_controller_interface__srv__GetPosition_Request), allocator.state);
  if (!msg) {
    return NULL;
  }
  memset(msg, 0, sizeof(motor_controller_interface__srv__GetPosition_Request));
  bool success = motor_controller_interface__srv__GetPosition_Request__init(msg);
  if (!success) {
    allocator.deallocate(msg, allocator.state);
    return NULL;
  }
  return msg;
}

void
motor_controller_interface__srv__GetPosition_Request__destroy(motor_controller_interface__srv__GetPosition_Request * msg)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (msg) {
    motor_controller_interface__srv__GetPosition_Request__fini(msg);
  }
  allocator.deallocate(msg, allocator.state);
}


bool
motor_controller_interface__srv__GetPosition_Request__Sequence__init(motor_controller_interface__srv__GetPosition_Request__Sequence * array, size_t size)
{
  if (!array) {
    return false;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  motor_controller_interface__srv__GetPosition_Request * data = NULL;

  if (size) {
    data = (motor_controller_interface__srv__GetPosition_Request *)allocator.zero_allocate(size, sizeof(motor_controller_interface__srv__GetPosition_Request), allocator.state);
    if (!data) {
      return false;
    }
    // initialize all array elements
    size_t i;
    for (i = 0; i < size; ++i) {
      bool success = motor_controller_interface__srv__GetPosition_Request__init(&data[i]);
      if (!success) {
        break;
      }
    }
    if (i < size) {
      // if initialization failed finalize the already initialized array elements
      for (; i > 0; --i) {
        motor_controller_interface__srv__GetPosition_Request__fini(&data[i - 1]);
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
motor_controller_interface__srv__GetPosition_Request__Sequence__fini(motor_controller_interface__srv__GetPosition_Request__Sequence * array)
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
      motor_controller_interface__srv__GetPosition_Request__fini(&array->data[i]);
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

motor_controller_interface__srv__GetPosition_Request__Sequence *
motor_controller_interface__srv__GetPosition_Request__Sequence__create(size_t size)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  motor_controller_interface__srv__GetPosition_Request__Sequence * array = (motor_controller_interface__srv__GetPosition_Request__Sequence *)allocator.allocate(sizeof(motor_controller_interface__srv__GetPosition_Request__Sequence), allocator.state);
  if (!array) {
    return NULL;
  }
  bool success = motor_controller_interface__srv__GetPosition_Request__Sequence__init(array, size);
  if (!success) {
    allocator.deallocate(array, allocator.state);
    return NULL;
  }
  return array;
}

void
motor_controller_interface__srv__GetPosition_Request__Sequence__destroy(motor_controller_interface__srv__GetPosition_Request__Sequence * array)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (array) {
    motor_controller_interface__srv__GetPosition_Request__Sequence__fini(array);
  }
  allocator.deallocate(array, allocator.state);
}

bool
motor_controller_interface__srv__GetPosition_Request__Sequence__are_equal(const motor_controller_interface__srv__GetPosition_Request__Sequence * lhs, const motor_controller_interface__srv__GetPosition_Request__Sequence * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  if (lhs->size != rhs->size) {
    return false;
  }
  for (size_t i = 0; i < lhs->size; ++i) {
    if (!motor_controller_interface__srv__GetPosition_Request__are_equal(&(lhs->data[i]), &(rhs->data[i]))) {
      return false;
    }
  }
  return true;
}

bool
motor_controller_interface__srv__GetPosition_Request__Sequence__copy(
  const motor_controller_interface__srv__GetPosition_Request__Sequence * input,
  motor_controller_interface__srv__GetPosition_Request__Sequence * output)
{
  if (!input || !output) {
    return false;
  }
  if (output->capacity < input->size) {
    const size_t allocation_size =
      input->size * sizeof(motor_controller_interface__srv__GetPosition_Request);
    motor_controller_interface__srv__GetPosition_Request * data =
      (motor_controller_interface__srv__GetPosition_Request *)realloc(output->data, allocation_size);
    if (!data) {
      return false;
    }
    for (size_t i = output->capacity; i < input->size; ++i) {
      if (!motor_controller_interface__srv__GetPosition_Request__init(&data[i])) {
        /* free currently allocated and return false */
        for (; i-- > output->capacity; ) {
          motor_controller_interface__srv__GetPosition_Request__fini(&data[i]);
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
    if (!motor_controller_interface__srv__GetPosition_Request__copy(
        &(input->data[i]), &(output->data[i])))
    {
      return false;
    }
  }
  return true;
}


bool
motor_controller_interface__srv__GetPosition_Response__init(motor_controller_interface__srv__GetPosition_Response * msg)
{
  if (!msg) {
    return false;
  }
  // position0
  // position1
  return true;
}

void
motor_controller_interface__srv__GetPosition_Response__fini(motor_controller_interface__srv__GetPosition_Response * msg)
{
  if (!msg) {
    return;
  }
  // position0
  // position1
}

bool
motor_controller_interface__srv__GetPosition_Response__are_equal(const motor_controller_interface__srv__GetPosition_Response * lhs, const motor_controller_interface__srv__GetPosition_Response * rhs)
{
  if (!lhs || !rhs) {
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
motor_controller_interface__srv__GetPosition_Response__copy(
  const motor_controller_interface__srv__GetPosition_Response * input,
  motor_controller_interface__srv__GetPosition_Response * output)
{
  if (!input || !output) {
    return false;
  }
  // position0
  output->position0 = input->position0;
  // position1
  output->position1 = input->position1;
  return true;
}

motor_controller_interface__srv__GetPosition_Response *
motor_controller_interface__srv__GetPosition_Response__create()
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  motor_controller_interface__srv__GetPosition_Response * msg = (motor_controller_interface__srv__GetPosition_Response *)allocator.allocate(sizeof(motor_controller_interface__srv__GetPosition_Response), allocator.state);
  if (!msg) {
    return NULL;
  }
  memset(msg, 0, sizeof(motor_controller_interface__srv__GetPosition_Response));
  bool success = motor_controller_interface__srv__GetPosition_Response__init(msg);
  if (!success) {
    allocator.deallocate(msg, allocator.state);
    return NULL;
  }
  return msg;
}

void
motor_controller_interface__srv__GetPosition_Response__destroy(motor_controller_interface__srv__GetPosition_Response * msg)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (msg) {
    motor_controller_interface__srv__GetPosition_Response__fini(msg);
  }
  allocator.deallocate(msg, allocator.state);
}


bool
motor_controller_interface__srv__GetPosition_Response__Sequence__init(motor_controller_interface__srv__GetPosition_Response__Sequence * array, size_t size)
{
  if (!array) {
    return false;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  motor_controller_interface__srv__GetPosition_Response * data = NULL;

  if (size) {
    data = (motor_controller_interface__srv__GetPosition_Response *)allocator.zero_allocate(size, sizeof(motor_controller_interface__srv__GetPosition_Response), allocator.state);
    if (!data) {
      return false;
    }
    // initialize all array elements
    size_t i;
    for (i = 0; i < size; ++i) {
      bool success = motor_controller_interface__srv__GetPosition_Response__init(&data[i]);
      if (!success) {
        break;
      }
    }
    if (i < size) {
      // if initialization failed finalize the already initialized array elements
      for (; i > 0; --i) {
        motor_controller_interface__srv__GetPosition_Response__fini(&data[i - 1]);
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
motor_controller_interface__srv__GetPosition_Response__Sequence__fini(motor_controller_interface__srv__GetPosition_Response__Sequence * array)
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
      motor_controller_interface__srv__GetPosition_Response__fini(&array->data[i]);
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

motor_controller_interface__srv__GetPosition_Response__Sequence *
motor_controller_interface__srv__GetPosition_Response__Sequence__create(size_t size)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  motor_controller_interface__srv__GetPosition_Response__Sequence * array = (motor_controller_interface__srv__GetPosition_Response__Sequence *)allocator.allocate(sizeof(motor_controller_interface__srv__GetPosition_Response__Sequence), allocator.state);
  if (!array) {
    return NULL;
  }
  bool success = motor_controller_interface__srv__GetPosition_Response__Sequence__init(array, size);
  if (!success) {
    allocator.deallocate(array, allocator.state);
    return NULL;
  }
  return array;
}

void
motor_controller_interface__srv__GetPosition_Response__Sequence__destroy(motor_controller_interface__srv__GetPosition_Response__Sequence * array)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (array) {
    motor_controller_interface__srv__GetPosition_Response__Sequence__fini(array);
  }
  allocator.deallocate(array, allocator.state);
}

bool
motor_controller_interface__srv__GetPosition_Response__Sequence__are_equal(const motor_controller_interface__srv__GetPosition_Response__Sequence * lhs, const motor_controller_interface__srv__GetPosition_Response__Sequence * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  if (lhs->size != rhs->size) {
    return false;
  }
  for (size_t i = 0; i < lhs->size; ++i) {
    if (!motor_controller_interface__srv__GetPosition_Response__are_equal(&(lhs->data[i]), &(rhs->data[i]))) {
      return false;
    }
  }
  return true;
}

bool
motor_controller_interface__srv__GetPosition_Response__Sequence__copy(
  const motor_controller_interface__srv__GetPosition_Response__Sequence * input,
  motor_controller_interface__srv__GetPosition_Response__Sequence * output)
{
  if (!input || !output) {
    return false;
  }
  if (output->capacity < input->size) {
    const size_t allocation_size =
      input->size * sizeof(motor_controller_interface__srv__GetPosition_Response);
    motor_controller_interface__srv__GetPosition_Response * data =
      (motor_controller_interface__srv__GetPosition_Response *)realloc(output->data, allocation_size);
    if (!data) {
      return false;
    }
    for (size_t i = output->capacity; i < input->size; ++i) {
      if (!motor_controller_interface__srv__GetPosition_Response__init(&data[i])) {
        /* free currently allocated and return false */
        for (; i-- > output->capacity; ) {
          motor_controller_interface__srv__GetPosition_Response__fini(&data[i]);
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
    if (!motor_controller_interface__srv__GetPosition_Response__copy(
        &(input->data[i]), &(output->data[i])))
    {
      return false;
    }
  }
  return true;
}

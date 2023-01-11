# generated from rosidl_generator_py/resource/_idl.py.em
# with input from motor_controller:msg/SetPosition.idl
# generated code does not contain a copyright notice


# Import statements for member types

import rosidl_parser.definition  # noqa: E402, I100


class Metaclass_SetPosition(type):
    """Metaclass of message 'SetPosition'."""

    _CREATE_ROS_MESSAGE = None
    _CONVERT_FROM_PY = None
    _CONVERT_TO_PY = None
    _DESTROY_ROS_MESSAGE = None
    _TYPE_SUPPORT = None

    __constants = {
    }

    @classmethod
    def __import_type_support__(cls):
        try:
            from rosidl_generator_py import import_type_support
            module = import_type_support('motor_controller')
        except ImportError:
            import logging
            import traceback
            logger = logging.getLogger(
                'motor_controller.msg.SetPosition')
            logger.debug(
                'Failed to import needed modules for type support:\n' +
                traceback.format_exc())
        else:
            cls._CREATE_ROS_MESSAGE = module.create_ros_message_msg__msg__set_position
            cls._CONVERT_FROM_PY = module.convert_from_py_msg__msg__set_position
            cls._CONVERT_TO_PY = module.convert_to_py_msg__msg__set_position
            cls._TYPE_SUPPORT = module.type_support_msg__msg__set_position
            cls._DESTROY_ROS_MESSAGE = module.destroy_ros_message_msg__msg__set_position

    @classmethod
    def __prepare__(cls, name, bases, **kwargs):
        # list constant names here so that they appear in the help text of
        # the message class under "Data and other attributes defined here:"
        # as well as populate each message instance
        return {
        }


class SetPosition(metaclass=Metaclass_SetPosition):
    """Message class 'SetPosition'."""

    __slots__ = [
        '_id0',
        '_id1',
        '_position0',
        '_position1',
    ]

    _fields_and_field_types = {
        'id0': 'uint8',
        'id1': 'uint8',
        'position0': 'int32',
        'position1': 'int32',
    }

    SLOT_TYPES = (
        rosidl_parser.definition.BasicType('uint8'),  # noqa: E501
        rosidl_parser.definition.BasicType('uint8'),  # noqa: E501
        rosidl_parser.definition.BasicType('int32'),  # noqa: E501
        rosidl_parser.definition.BasicType('int32'),  # noqa: E501
    )

    def __init__(self, **kwargs):
        assert all('_' + key in self.__slots__ for key in kwargs.keys()), \
            'Invalid arguments passed to constructor: %s' % \
            ', '.join(sorted(k for k in kwargs.keys() if '_' + k not in self.__slots__))
        self.id0 = kwargs.get('id0', int())
        self.id1 = kwargs.get('id1', int())
        self.position0 = kwargs.get('position0', int())
        self.position1 = kwargs.get('position1', int())

    def __repr__(self):
        typename = self.__class__.__module__.split('.')
        typename.pop()
        typename.append(self.__class__.__name__)
        args = []
        for s, t in zip(self.__slots__, self.SLOT_TYPES):
            field = getattr(self, s)
            fieldstr = repr(field)
            # We use Python array type for fields that can be directly stored
            # in them, and "normal" sequences for everything else.  If it is
            # a type that we store in an array, strip off the 'array' portion.
            if (
                isinstance(t, rosidl_parser.definition.AbstractSequence) and
                isinstance(t.value_type, rosidl_parser.definition.BasicType) and
                t.value_type.typename in ['float', 'double', 'int8', 'uint8', 'int16', 'uint16', 'int32', 'uint32', 'int64', 'uint64']
            ):
                if len(field) == 0:
                    fieldstr = '[]'
                else:
                    assert fieldstr.startswith('array(')
                    prefix = "array('X', "
                    suffix = ')'
                    fieldstr = fieldstr[len(prefix):-len(suffix)]
            args.append(s[1:] + '=' + fieldstr)
        return '%s(%s)' % ('.'.join(typename), ', '.join(args))

    def __eq__(self, other):
        if not isinstance(other, self.__class__):
            return False
        if self.id0 != other.id0:
            return False
        if self.id1 != other.id1:
            return False
        if self.position0 != other.position0:
            return False
        if self.position1 != other.position1:
            return False
        return True

    @classmethod
    def get_fields_and_field_types(cls):
        from copy import copy
        return copy(cls._fields_and_field_types)

    @property
    def id0(self):
        """Message field 'id0'."""
        return self._id0

    @id0.setter
    def id0(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'id0' field must be of type 'int'"
            assert value >= 0 and value < 256, \
                "The 'id0' field must be an unsigned integer in [0, 255]"
        self._id0 = value

    @property
    def id1(self):
        """Message field 'id1'."""
        return self._id1

    @id1.setter
    def id1(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'id1' field must be of type 'int'"
            assert value >= 0 and value < 256, \
                "The 'id1' field must be an unsigned integer in [0, 255]"
        self._id1 = value

    @property
    def position0(self):
        """Message field 'position0'."""
        return self._position0

    @position0.setter
    def position0(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'position0' field must be of type 'int'"
            assert value >= -2147483648 and value < 2147483648, \
                "The 'position0' field must be an integer in [-2147483648, 2147483647]"
        self._position0 = value

    @property
    def position1(self):
        """Message field 'position1'."""
        return self._position1

    @position1.setter
    def position1(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'position1' field must be of type 'int'"
            assert value >= -2147483648 and value < 2147483648, \
                "The 'position1' field must be an integer in [-2147483648, 2147483647]"
        self._position1 = value

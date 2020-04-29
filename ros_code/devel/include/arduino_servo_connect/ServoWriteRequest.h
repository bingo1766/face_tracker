// Generated by gencpp from file arduino_servo_connect/ServoWriteRequest.msg
// DO NOT EDIT!


#ifndef ARDUINO_SERVO_CONNECT_MESSAGE_SERVOWRITEREQUEST_H
#define ARDUINO_SERVO_CONNECT_MESSAGE_SERVOWRITEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace arduino_servo_connect
{
template <class ContainerAllocator>
struct ServoWriteRequest_
{
  typedef ServoWriteRequest_<ContainerAllocator> Type;

  ServoWriteRequest_()
    : id(0)
    , value(0)
    , delay(0)  {
    }
  ServoWriteRequest_(const ContainerAllocator& _alloc)
    : id(0)
    , value(0)
    , delay(0)  {
  (void)_alloc;
    }



   typedef uint8_t _id_type;
  _id_type id;

   typedef int32_t _value_type;
  _value_type value;

   typedef uint8_t _delay_type;
  _delay_type delay;





  typedef boost::shared_ptr< ::arduino_servo_connect::ServoWriteRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arduino_servo_connect::ServoWriteRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ServoWriteRequest_

typedef ::arduino_servo_connect::ServoWriteRequest_<std::allocator<void> > ServoWriteRequest;

typedef boost::shared_ptr< ::arduino_servo_connect::ServoWriteRequest > ServoWriteRequestPtr;
typedef boost::shared_ptr< ::arduino_servo_connect::ServoWriteRequest const> ServoWriteRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arduino_servo_connect::ServoWriteRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arduino_servo_connect::ServoWriteRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace arduino_servo_connect

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'arduino_servo_connect': ['/home/bingo/face_tracker/ros_code/src/arduino_servo_connect/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::arduino_servo_connect::ServoWriteRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arduino_servo_connect::ServoWriteRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arduino_servo_connect::ServoWriteRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arduino_servo_connect::ServoWriteRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arduino_servo_connect::ServoWriteRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arduino_servo_connect::ServoWriteRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arduino_servo_connect::ServoWriteRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cfb890a96d9d635807919eed49fd22d8";
  }

  static const char* value(const ::arduino_servo_connect::ServoWriteRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcfb890a96d9d6358ULL;
  static const uint64_t static_value2 = 0x07919eed49fd22d8ULL;
};

template<class ContainerAllocator>
struct DataType< ::arduino_servo_connect::ServoWriteRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arduino_servo_connect/ServoWriteRequest";
  }

  static const char* value(const ::arduino_servo_connect::ServoWriteRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arduino_servo_connect::ServoWriteRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 id\n\
int32 value\n\
uint8 delay\n\
";
  }

  static const char* value(const ::arduino_servo_connect::ServoWriteRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arduino_servo_connect::ServoWriteRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.value);
      stream.next(m.delay);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ServoWriteRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arduino_servo_connect::ServoWriteRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::arduino_servo_connect::ServoWriteRequest_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id);
    s << indent << "value: ";
    Printer<int32_t>::stream(s, indent + "  ", v.value);
    s << indent << "delay: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.delay);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARDUINO_SERVO_CONNECT_MESSAGE_SERVOWRITEREQUEST_H
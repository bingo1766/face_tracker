// Generated by gencpp from file arduino_servo_connect/ServoEnableRequest.msg
// DO NOT EDIT!


#ifndef ARDUINO_SERVO_CONNECT_MESSAGE_SERVOENABLEREQUEST_H
#define ARDUINO_SERVO_CONNECT_MESSAGE_SERVOENABLEREQUEST_H


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
struct ServoEnableRequest_
{
  typedef ServoEnableRequest_<ContainerAllocator> Type;

  ServoEnableRequest_()
    : id(0)
    , flag(0)  {
    }
  ServoEnableRequest_(const ContainerAllocator& _alloc)
    : id(0)
    , flag(0)  {
  (void)_alloc;
    }



   typedef uint8_t _id_type;
  _id_type id;

   typedef uint8_t _flag_type;
  _flag_type flag;





  typedef boost::shared_ptr< ::arduino_servo_connect::ServoEnableRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arduino_servo_connect::ServoEnableRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ServoEnableRequest_

typedef ::arduino_servo_connect::ServoEnableRequest_<std::allocator<void> > ServoEnableRequest;

typedef boost::shared_ptr< ::arduino_servo_connect::ServoEnableRequest > ServoEnableRequestPtr;
typedef boost::shared_ptr< ::arduino_servo_connect::ServoEnableRequest const> ServoEnableRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arduino_servo_connect::ServoEnableRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arduino_servo_connect::ServoEnableRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::arduino_servo_connect::ServoEnableRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arduino_servo_connect::ServoEnableRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arduino_servo_connect::ServoEnableRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arduino_servo_connect::ServoEnableRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arduino_servo_connect::ServoEnableRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arduino_servo_connect::ServoEnableRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arduino_servo_connect::ServoEnableRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bdf13954fac71cd1ad130cc58e64cb5e";
  }

  static const char* value(const ::arduino_servo_connect::ServoEnableRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbdf13954fac71cd1ULL;
  static const uint64_t static_value2 = 0xad130cc58e64cb5eULL;
};

template<class ContainerAllocator>
struct DataType< ::arduino_servo_connect::ServoEnableRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arduino_servo_connect/ServoEnableRequest";
  }

  static const char* value(const ::arduino_servo_connect::ServoEnableRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arduino_servo_connect::ServoEnableRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 id\n\
uint8 flag\n\
";
  }

  static const char* value(const ::arduino_servo_connect::ServoEnableRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arduino_servo_connect::ServoEnableRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.flag);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ServoEnableRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arduino_servo_connect::ServoEnableRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::arduino_servo_connect::ServoEnableRequest_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id);
    s << indent << "flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.flag);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARDUINO_SERVO_CONNECT_MESSAGE_SERVOENABLEREQUEST_H

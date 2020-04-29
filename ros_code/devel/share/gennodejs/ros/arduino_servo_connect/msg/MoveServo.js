// Auto-generated. Do not edit!

// (in-package arduino_servo_connect.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MoveServo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.servoId = null;
      this.targetPos = null;
      this.delay = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('servoId')) {
        this.servoId = initObj.servoId
      }
      else {
        this.servoId = 0;
      }
      if (initObj.hasOwnProperty('targetPos')) {
        this.targetPos = initObj.targetPos
      }
      else {
        this.targetPos = 0;
      }
      if (initObj.hasOwnProperty('delay')) {
        this.delay = initObj.delay
      }
      else {
        this.delay = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveServo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [servoId]
    bufferOffset = _serializer.uint8(obj.servoId, buffer, bufferOffset);
    // Serialize message field [targetPos]
    bufferOffset = _serializer.uint16(obj.targetPos, buffer, bufferOffset);
    // Serialize message field [delay]
    bufferOffset = _serializer.uint8(obj.delay, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveServo
    let len;
    let data = new MoveServo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [servoId]
    data.servoId = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [targetPos]
    data.targetPos = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [delay]
    data.delay = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arduino_servo_connect/MoveServo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a4ff497aa19abc6e9d982bd9133ef9b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Move Servo msg, include three param: servoid, targetPos, delay
    Header header
    
    uint8 servoId
    uint16 targetPos
    uint8 delay
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveServo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.servoId !== undefined) {
      resolved.servoId = msg.servoId;
    }
    else {
      resolved.servoId = 0
    }

    if (msg.targetPos !== undefined) {
      resolved.targetPos = msg.targetPos;
    }
    else {
      resolved.targetPos = 0
    }

    if (msg.delay !== undefined) {
      resolved.delay = msg.delay;
    }
    else {
      resolved.delay = 0
    }

    return resolved;
    }
};

module.exports = MoveServo;

// Auto-generated. Do not edit!

// (in-package arduino_servo_connect.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetAllServoEnableRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAllServoEnableRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAllServoEnableRequest
    let len;
    let data = new GetAllServoEnableRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arduino_servo_connect/GetAllServoEnableRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAllServoEnableRequest(null);
    return resolved;
    }
};

class GetAllServoEnableResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enables = null;
    }
    else {
      if (initObj.hasOwnProperty('enables')) {
        this.enables = initObj.enables
      }
      else {
        this.enables = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAllServoEnableResponse
    // Serialize message field [enables]
    bufferOffset = _arraySerializer.int32(obj.enables, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAllServoEnableResponse
    let len;
    let data = new GetAllServoEnableResponse(null);
    // Deserialize message field [enables]
    data.enables = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.enables.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arduino_servo_connect/GetAllServoEnableResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb3e3dbce60e36b185d663dfe470ce14';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] enables
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAllServoEnableResponse(null);
    if (msg.enables !== undefined) {
      resolved.enables = msg.enables;
    }
    else {
      resolved.enables = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetAllServoEnableRequest,
  Response: GetAllServoEnableResponse,
  md5sum() { return 'fb3e3dbce60e36b185d663dfe470ce14'; },
  datatype() { return 'arduino_servo_connect/GetAllServoEnable'; }
};

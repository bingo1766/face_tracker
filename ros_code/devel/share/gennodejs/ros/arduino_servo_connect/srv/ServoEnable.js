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

class ServoEnableRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.flag = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServoEnableRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [flag]
    bufferOffset = _serializer.uint8(obj.flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoEnableRequest
    let len;
    let data = new ServoEnableRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flag]
    data.flag = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arduino_servo_connect/ServoEnableRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bdf13954fac71cd1ad130cc58e64cb5e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 id
    uint8 flag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServoEnableRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = 0
    }

    return resolved;
    }
};

class ServoEnableResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServoEnableResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoEnableResponse
    let len;
    let data = new ServoEnableResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arduino_servo_connect/ServoEnableResponse';
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
    const resolved = new ServoEnableResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ServoEnableRequest,
  Response: ServoEnableResponse,
  md5sum() { return 'bdf13954fac71cd1ad130cc58e64cb5e'; },
  datatype() { return 'arduino_servo_connect/ServoEnable'; }
};

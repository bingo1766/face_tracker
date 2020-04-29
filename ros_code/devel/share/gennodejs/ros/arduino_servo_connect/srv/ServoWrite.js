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

class ServoWriteRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.value = null;
      this.delay = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
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
    // Serializes a message object of type ServoWriteRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.int32(obj.value, buffer, bufferOffset);
    // Serialize message field [delay]
    bufferOffset = _serializer.uint8(obj.delay, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoWriteRequest
    let len;
    let data = new ServoWriteRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [delay]
    data.delay = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arduino_servo_connect/ServoWriteRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cfb890a96d9d635807919eed49fd22d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 id
    int32 value
    uint8 delay
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServoWriteRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
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

class ServoWriteResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServoWriteResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoWriteResponse
    let len;
    let data = new ServoWriteResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arduino_servo_connect/ServoWriteResponse';
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
    const resolved = new ServoWriteResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ServoWriteRequest,
  Response: ServoWriteResponse,
  md5sum() { return 'cfb890a96d9d635807919eed49fd22d8'; },
  datatype() { return 'arduino_servo_connect/ServoWrite'; }
};

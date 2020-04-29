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

class ServoReadRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServoReadRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoReadRequest
    let len;
    let data = new ServoReadRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arduino_servo_connect/ServoReadRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '541b98e964705918fa8eb206b65347b3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServoReadRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

class ServoReadResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServoReadResponse
    // Serialize message field [value]
    bufferOffset = _serializer.int32(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoReadResponse
    let len;
    let data = new ServoReadResponse(null);
    // Deserialize message field [value]
    data.value = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arduino_servo_connect/ServoReadResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b3087778e93fcd34cc8d65bc54e850d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 value
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServoReadResponse(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: ServoReadRequest,
  Response: ServoReadResponse,
  md5sum() { return 'da1b9d707f4bc75aeccfced2e0cd2663'; },
  datatype() { return 'arduino_servo_connect/ServoRead'; }
};

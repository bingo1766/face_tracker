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

class GetAllServoPosRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAllServoPosRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAllServoPosRequest
    let len;
    let data = new GetAllServoPosRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arduino_servo_connect/GetAllServoPosRequest';
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
    const resolved = new GetAllServoPosRequest(null);
    return resolved;
    }
};

class GetAllServoPosResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.positions = null;
    }
    else {
      if (initObj.hasOwnProperty('positions')) {
        this.positions = initObj.positions
      }
      else {
        this.positions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAllServoPosResponse
    // Serialize message field [positions]
    bufferOffset = _arraySerializer.int32(obj.positions, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAllServoPosResponse
    let len;
    let data = new GetAllServoPosResponse(null);
    // Deserialize message field [positions]
    data.positions = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.positions.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arduino_servo_connect/GetAllServoPosResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2a9139ca9bf4352767912894c0d0ece';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] positions
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAllServoPosResponse(null);
    if (msg.positions !== undefined) {
      resolved.positions = msg.positions;
    }
    else {
      resolved.positions = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetAllServoPosRequest,
  Response: GetAllServoPosResponse,
  md5sum() { return 'a2a9139ca9bf4352767912894c0d0ece'; },
  datatype() { return 'arduino_servo_connect/GetAllServoPos'; }
};

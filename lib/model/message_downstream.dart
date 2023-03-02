//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class MessageDownstream {
  /// Returns a new [MessageDownstream] instance.
  MessageDownstream({
    this.messageId,
    this.collectionId,
    this.deviceId,
    this.gatewayId,
    this.createdTime,
    this.sentTime,
    this.transport,
    this.state,
    this.payload,
  });

  String messageId;

  String collectionId;

  String deviceId;

  String gatewayId;

  String createdTime;

  String sentTime;

  MessageTransport transport;

  MessageState state;

  String payload;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MessageDownstream &&
          other.messageId == messageId &&
          other.collectionId == collectionId &&
          other.deviceId == deviceId &&
          other.gatewayId == gatewayId &&
          other.createdTime == createdTime &&
          other.sentTime == sentTime &&
          other.transport == transport &&
          other.state == state &&
          other.payload == payload;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (messageId == null ? 0 : messageId.hashCode) +
      (collectionId == null ? 0 : collectionId.hashCode) +
      (deviceId == null ? 0 : deviceId.hashCode) +
      (gatewayId == null ? 0 : gatewayId.hashCode) +
      (createdTime == null ? 0 : createdTime.hashCode) +
      (sentTime == null ? 0 : sentTime.hashCode) +
      (transport == null ? 0 : transport.hashCode) +
      (state == null ? 0 : state.hashCode) +
      (payload == null ? 0 : payload.hashCode);

  @override
  String toString() =>
      'MessageDownstream[messageId=$messageId, collectionId=$collectionId, deviceId=$deviceId, gatewayId=$gatewayId, createdTime=$createdTime, sentTime=$sentTime, transport=$transport, state=$state, payload=$payload]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (messageId != null) {
      json[r'messageId'] = messageId;
    }
    if (collectionId != null) {
      json[r'collectionId'] = collectionId;
    }
    if (deviceId != null) {
      json[r'deviceId'] = deviceId;
    }
    if (gatewayId != null) {
      json[r'gatewayId'] = gatewayId;
    }
    if (createdTime != null) {
      json[r'createdTime'] = createdTime;
    }
    if (sentTime != null) {
      json[r'sentTime'] = sentTime;
    }
    if (transport != null) {
      json[r'transport'] = transport;
    }
    if (state != null) {
      json[r'state'] = state;
    }
    if (payload != null) {
      json[r'payload'] = payload;
    }
    return json;
  }

  /// Returns a new [MessageDownstream] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MessageDownstream fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MessageDownstream(
        messageId: mapValueOfType<String>(json, r'messageId'),
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        deviceId: mapValueOfType<String>(json, r'deviceId'),
        gatewayId: mapValueOfType<String>(json, r'gatewayId'),
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        sentTime: mapValueOfType<String>(json, r'sentTime'),
        transport: MessageTransport.fromJson(json[r'transport']),
        state: MessageState.fromJson(json[r'state']),
        payload: mapValueOfType<String>(json, r'payload'),
      );
    }
    return null;
  }

  static List<MessageDownstream> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(MessageDownstream.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <MessageDownstream>[];

  static Map<String, MessageDownstream> mapFromJson(dynamic json) {
    final map = <String, MessageDownstream>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = MessageDownstream.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MessageDownstream-objects as value to a dart map
  static Map<String, List<MessageDownstream>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<MessageDownstream>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = MessageDownstream.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

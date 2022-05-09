//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class MessageUpstream {
  /// Returns a new [MessageUpstream] instance.
  MessageUpstream({
    this.messageId,
    this.collectionId,
    this.deviceId,
    this.gatewayId,
    this.transport,
    this.received,
    this.payload,
  });

  String messageId;

  String collectionId;

  String deviceId;

  String gatewayId;

  MessageTransport transport;

  String received;

  String payload;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageUpstream &&
     other.messageId == messageId &&
     other.collectionId == collectionId &&
     other.deviceId == deviceId &&
     other.gatewayId == gatewayId &&
     other.transport == transport &&
     other.received == received &&
     other.payload == payload;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (messageId == null ? 0 : messageId.hashCode) +
    (collectionId == null ? 0 : collectionId.hashCode) +
    (deviceId == null ? 0 : deviceId.hashCode) +
    (gatewayId == null ? 0 : gatewayId.hashCode) +
    (transport == null ? 0 : transport.hashCode) +
    (received == null ? 0 : received.hashCode) +
    (payload == null ? 0 : payload.hashCode);

  @override
  String toString() => 'MessageUpstream[messageId=$messageId, collectionId=$collectionId, deviceId=$deviceId, gatewayId=$gatewayId, transport=$transport, received=$received, payload=$payload]';

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
    if (transport != null) {
      json[r'transport'] = transport;
    }
    if (received != null) {
      json[r'received'] = received;
    }
    if (payload != null) {
      json[r'payload'] = payload;
    }
    return json;
  }

  /// Returns a new [MessageUpstream] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MessageUpstream fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MessageUpstream(
        messageId: mapValueOfType<String>(json, r'messageId'),
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        deviceId: mapValueOfType<String>(json, r'deviceId'),
        gatewayId: mapValueOfType<String>(json, r'gatewayId'),
        transport: MessageTransport.fromJson(json[r'transport']),
        received: mapValueOfType<String>(json, r'received'),
        payload: mapValueOfType<String>(json, r'payload'),
      );
    }
    return null;
  }

  static List<MessageUpstream> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MessageUpstream.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MessageUpstream>[];

  static Map<String, MessageUpstream> mapFromJson(dynamic json) {
    final map = <String, MessageUpstream>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = MessageUpstream.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MessageUpstream-objects as value to a dart map
  static Map<String, List<MessageUpstream>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MessageUpstream>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = MessageUpstream.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


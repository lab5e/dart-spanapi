//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? messageId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? collectionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deviceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gatewayId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sentTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MessageTransport? transport;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MessageState? state;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? payload;

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
      (messageId == null ? 0 : messageId!.hashCode) +
      (collectionId == null ? 0 : collectionId!.hashCode) +
      (deviceId == null ? 0 : deviceId!.hashCode) +
      (gatewayId == null ? 0 : gatewayId!.hashCode) +
      (createdTime == null ? 0 : createdTime!.hashCode) +
      (sentTime == null ? 0 : sentTime!.hashCode) +
      (transport == null ? 0 : transport!.hashCode) +
      (state == null ? 0 : state!.hashCode) +
      (payload == null ? 0 : payload!.hashCode);

  @override
  String toString() =>
      'MessageDownstream[messageId=$messageId, collectionId=$collectionId, deviceId=$deviceId, gatewayId=$gatewayId, createdTime=$createdTime, sentTime=$sentTime, transport=$transport, state=$state, payload=$payload]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.messageId != null) {
      json[r'messageId'] = this.messageId;
    } else {
      json[r'messageId'] = null;
    }
    if (this.collectionId != null) {
      json[r'collectionId'] = this.collectionId;
    } else {
      json[r'collectionId'] = null;
    }
    if (this.deviceId != null) {
      json[r'deviceId'] = this.deviceId;
    } else {
      json[r'deviceId'] = null;
    }
    if (this.gatewayId != null) {
      json[r'gatewayId'] = this.gatewayId;
    } else {
      json[r'gatewayId'] = null;
    }
    if (this.createdTime != null) {
      json[r'createdTime'] = this.createdTime;
    } else {
      json[r'createdTime'] = null;
    }
    if (this.sentTime != null) {
      json[r'sentTime'] = this.sentTime;
    } else {
      json[r'sentTime'] = null;
    }
    if (this.transport != null) {
      json[r'transport'] = this.transport;
    } else {
      json[r'transport'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.payload != null) {
      json[r'payload'] = this.payload;
    } else {
      json[r'payload'] = null;
    }
    return json;
  }

  /// Returns a new [MessageDownstream] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MessageDownstream? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MessageDownstream[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MessageDownstream[$key]" has a null value in JSON.');
        });
        return true;
      }());

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

  static List<MessageDownstream>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MessageDownstream>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessageDownstream.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MessageDownstream> mapFromJson(dynamic json) {
    final map = <String, MessageDownstream>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MessageDownstream.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MessageDownstream-objects as value to a dart map
  static Map<String, List<MessageDownstream>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MessageDownstream>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MessageDownstream.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}

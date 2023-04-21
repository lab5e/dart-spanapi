//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class OutputDataMessage {
  /// Returns a new [OutputDataMessage] instance.
  OutputDataMessage({
    this.type,
    this.device,
    this.payload,
    this.received,
    this.transport,
    this.udpMetaData,
    this.coapMetaData,
    this.messageId,
    this.mqttMetaData,
    this.gatewayMetaData,
    this.gatewayId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OutputMessageType? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Device? device;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? payload;

  /// Received time for message. Value is ms since epoch.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? received;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? transport;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UDPMetadata? udpMetaData;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CoAPMetadata? coapMetaData;

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
  MQTTMetadata? mqttMetaData;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GatewayMetadata? gatewayMetaData;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gatewayId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OutputDataMessage &&
          other.type == type &&
          other.device == device &&
          other.payload == payload &&
          other.received == received &&
          other.transport == transport &&
          other.udpMetaData == udpMetaData &&
          other.coapMetaData == coapMetaData &&
          other.messageId == messageId &&
          other.mqttMetaData == mqttMetaData &&
          other.gatewayMetaData == gatewayMetaData &&
          other.gatewayId == gatewayId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (type == null ? 0 : type!.hashCode) +
      (device == null ? 0 : device!.hashCode) +
      (payload == null ? 0 : payload!.hashCode) +
      (received == null ? 0 : received!.hashCode) +
      (transport == null ? 0 : transport!.hashCode) +
      (udpMetaData == null ? 0 : udpMetaData!.hashCode) +
      (coapMetaData == null ? 0 : coapMetaData!.hashCode) +
      (messageId == null ? 0 : messageId!.hashCode) +
      (mqttMetaData == null ? 0 : mqttMetaData!.hashCode) +
      (gatewayMetaData == null ? 0 : gatewayMetaData!.hashCode) +
      (gatewayId == null ? 0 : gatewayId!.hashCode);

  @override
  String toString() =>
      'OutputDataMessage[type=$type, device=$device, payload=$payload, received=$received, transport=$transport, udpMetaData=$udpMetaData, coapMetaData=$coapMetaData, messageId=$messageId, mqttMetaData=$mqttMetaData, gatewayMetaData=$gatewayMetaData, gatewayId=$gatewayId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.device != null) {
      json[r'device'] = this.device;
    } else {
      json[r'device'] = null;
    }
    if (this.payload != null) {
      json[r'payload'] = this.payload;
    } else {
      json[r'payload'] = null;
    }
    if (this.received != null) {
      json[r'received'] = this.received;
    } else {
      json[r'received'] = null;
    }
    if (this.transport != null) {
      json[r'transport'] = this.transport;
    } else {
      json[r'transport'] = null;
    }
    if (this.udpMetaData != null) {
      json[r'udpMetaData'] = this.udpMetaData;
    } else {
      json[r'udpMetaData'] = null;
    }
    if (this.coapMetaData != null) {
      json[r'coapMetaData'] = this.coapMetaData;
    } else {
      json[r'coapMetaData'] = null;
    }
    if (this.messageId != null) {
      json[r'messageId'] = this.messageId;
    } else {
      json[r'messageId'] = null;
    }
    if (this.mqttMetaData != null) {
      json[r'mqttMetaData'] = this.mqttMetaData;
    } else {
      json[r'mqttMetaData'] = null;
    }
    if (this.gatewayMetaData != null) {
      json[r'gatewayMetaData'] = this.gatewayMetaData;
    } else {
      json[r'gatewayMetaData'] = null;
    }
    if (this.gatewayId != null) {
      json[r'gatewayId'] = this.gatewayId;
    } else {
      json[r'gatewayId'] = null;
    }
    return json;
  }

  /// Returns a new [OutputDataMessage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OutputDataMessage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "OutputDataMessage[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "OutputDataMessage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OutputDataMessage(
        type: OutputMessageType.fromJson(json[r'type']),
        device: Device.fromJson(json[r'device']),
        payload: mapValueOfType<String>(json, r'payload'),
        received: mapValueOfType<String>(json, r'received'),
        transport: mapValueOfType<String>(json, r'transport'),
        udpMetaData: UDPMetadata.fromJson(json[r'udpMetaData']),
        coapMetaData: CoAPMetadata.fromJson(json[r'coapMetaData']),
        messageId: mapValueOfType<String>(json, r'messageId'),
        mqttMetaData: MQTTMetadata.fromJson(json[r'mqttMetaData']),
        gatewayMetaData: GatewayMetadata.fromJson(json[r'gatewayMetaData']),
        gatewayId: mapValueOfType<String>(json, r'gatewayId'),
      );
    }
    return null;
  }

  static List<OutputDataMessage>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OutputDataMessage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OutputDataMessage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OutputDataMessage> mapFromJson(dynamic json) {
    final map = <String, OutputDataMessage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OutputDataMessage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OutputDataMessage-objects as value to a dart map
  static Map<String, List<OutputDataMessage>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OutputDataMessage>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OutputDataMessage.listFromJson(
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  OutputMessageType type;

  Device device;

  String payload;

  /// Received time for message. Value is ms since epoch.
  String received;

  String transport;

  UDPMetadata udpMetaData;

  CoAPMetadata coapMetaData;

  String messageId;

  MQTTMetadata mqttMetaData;

  GatewayMetadata gatewayMetaData;

  String gatewayId;

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
      (type == null ? 0 : type.hashCode) +
      (device == null ? 0 : device.hashCode) +
      (payload == null ? 0 : payload.hashCode) +
      (received == null ? 0 : received.hashCode) +
      (transport == null ? 0 : transport.hashCode) +
      (udpMetaData == null ? 0 : udpMetaData.hashCode) +
      (coapMetaData == null ? 0 : coapMetaData.hashCode) +
      (messageId == null ? 0 : messageId.hashCode) +
      (mqttMetaData == null ? 0 : mqttMetaData.hashCode) +
      (gatewayMetaData == null ? 0 : gatewayMetaData.hashCode) +
      (gatewayId == null ? 0 : gatewayId.hashCode);

  @override
  String toString() =>
      'OutputDataMessage[type=$type, device=$device, payload=$payload, received=$received, transport=$transport, udpMetaData=$udpMetaData, coapMetaData=$coapMetaData, messageId=$messageId, mqttMetaData=$mqttMetaData, gatewayMetaData=$gatewayMetaData, gatewayId=$gatewayId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (type != null) {
      json[r'type'] = type;
    }
    if (device != null) {
      json[r'device'] = device;
    }
    if (payload != null) {
      json[r'payload'] = payload;
    }
    if (received != null) {
      json[r'received'] = received;
    }
    if (transport != null) {
      json[r'transport'] = transport;
    }
    if (udpMetaData != null) {
      json[r'udpMetaData'] = udpMetaData;
    }
    if (coapMetaData != null) {
      json[r'coapMetaData'] = coapMetaData;
    }
    if (messageId != null) {
      json[r'messageId'] = messageId;
    }
    if (mqttMetaData != null) {
      json[r'mqttMetaData'] = mqttMetaData;
    }
    if (gatewayMetaData != null) {
      json[r'gatewayMetaData'] = gatewayMetaData;
    }
    if (gatewayId != null) {
      json[r'gatewayId'] = gatewayId;
    }
    return json;
  }

  /// Returns a new [OutputDataMessage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OutputDataMessage fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
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

  static List<OutputDataMessage> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(OutputDataMessage.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <OutputDataMessage>[];

  static Map<String, OutputDataMessage> mapFromJson(dynamic json) {
    final map = <String, OutputDataMessage>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = OutputDataMessage.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OutputDataMessage-objects as value to a dart map
  static Map<String, List<OutputDataMessage>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<OutputDataMessage>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = OutputDataMessage.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

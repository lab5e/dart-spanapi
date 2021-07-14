//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
  });

  OutputDataMessageOutputMessageType type;

  Device device;

  String payload;

  /// Received time for message. Value is ms since epoch.
  String received;

  String transport;

  UDPMetadata udpMetaData;

  CoAPMetadata coapMetaData;

  String messageId;

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
          other.messageId == messageId;

  @override
  int get hashCode =>
      (type == null ? 0 : type.hashCode) +
      (device == null ? 0 : device.hashCode) +
      (payload == null ? 0 : payload.hashCode) +
      (received == null ? 0 : received.hashCode) +
      (transport == null ? 0 : transport.hashCode) +
      (udpMetaData == null ? 0 : udpMetaData.hashCode) +
      (coapMetaData == null ? 0 : coapMetaData.hashCode) +
      (messageId == null ? 0 : messageId.hashCode);

  @override
  String toString() =>
      'OutputDataMessage[type=$type, device=$device, payload=$payload, received=$received, transport=$transport, udpMetaData=$udpMetaData, coapMetaData=$coapMetaData, messageId=$messageId]';

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
    return json;
  }

  /// Returns a new [OutputDataMessage] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OutputDataMessage fromJson(Map<String, dynamic> json) => json == null
      ? null
      : OutputDataMessage(
          type: OutputDataMessageOutputMessageType.fromJson(json[r'type']),
          device: Device.fromJson(json[r'device']),
          payload: json[r'payload'],
          received: json[r'received'],
          transport: json[r'transport'],
          udpMetaData: UDPMetadata.fromJson(json[r'udpMetaData']),
          coapMetaData: CoAPMetadata.fromJson(json[r'coapMetaData']),
          messageId: json[r'messageId'],
        );

  static List<OutputDataMessage> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <OutputDataMessage>[]
          : json
              .map((v) => OutputDataMessage.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, OutputDataMessage> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OutputDataMessage>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = OutputDataMessage.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of OutputDataMessage-objects as value to a dart map
  static Map<String, List<OutputDataMessage>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<OutputDataMessage>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = OutputDataMessage.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

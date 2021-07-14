//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class SendMessageRequest {
  /// Returns a new [SendMessageRequest] instance.
  SendMessageRequest({
    this.collectionId,
    this.deviceId,
    this.port,
    this.payload,
    this.transport,
    this.coapPath,
  });

  String collectionId;

  String deviceId;

  int port;

  String payload;

  /// Valid transports are \"udp\", \"coap\", \"coap-pull\", \"udp-pull\", \"coap-push\", \"udp-push\". \"udp\" is equivalent to \"udp-push\" and \"coap\" is equivalent to \"coap-push\". Push messages are sent unsolicited to the device wheil pull messages are sent whenever the device wither sends data upstream (for UDP) or does a CoAP request to the CoAP service in span.
  String transport;

  String coapPath;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SendMessageRequest &&
          other.collectionId == collectionId &&
          other.deviceId == deviceId &&
          other.port == port &&
          other.payload == payload &&
          other.transport == transport &&
          other.coapPath == coapPath;

  @override
  int get hashCode =>
      (collectionId == null ? 0 : collectionId.hashCode) +
      (deviceId == null ? 0 : deviceId.hashCode) +
      (port == null ? 0 : port.hashCode) +
      (payload == null ? 0 : payload.hashCode) +
      (transport == null ? 0 : transport.hashCode) +
      (coapPath == null ? 0 : coapPath.hashCode);

  @override
  String toString() =>
      'SendMessageRequest[collectionId=$collectionId, deviceId=$deviceId, port=$port, payload=$payload, transport=$transport, coapPath=$coapPath]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (collectionId != null) {
      json[r'collectionId'] = collectionId;
    }
    if (deviceId != null) {
      json[r'deviceId'] = deviceId;
    }
    if (port != null) {
      json[r'port'] = port;
    }
    if (payload != null) {
      json[r'payload'] = payload;
    }
    if (transport != null) {
      json[r'transport'] = transport;
    }
    if (coapPath != null) {
      json[r'coapPath'] = coapPath;
    }
    return json;
  }

  /// Returns a new [SendMessageRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SendMessageRequest fromJson(Map<String, dynamic> json) => json == null
      ? null
      : SendMessageRequest(
          collectionId: json[r'collectionId'],
          deviceId: json[r'deviceId'],
          port: json[r'port'],
          payload: json[r'payload'],
          transport: json[r'transport'],
          coapPath: json[r'coapPath'],
        );

  static List<SendMessageRequest> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <SendMessageRequest>[]
          : json
              .map((v) => SendMessageRequest.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, SendMessageRequest> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, SendMessageRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = SendMessageRequest.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SendMessageRequest-objects as value to a dart map
  static Map<String, List<SendMessageRequest>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<SendMessageRequest>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SendMessageRequest.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class SendMessageResponse {
  /// Returns a new [SendMessageResponse] instance.
  SendMessageResponse({
    this.collectionId,
    this.deviceId,
    this.bytesSent,
  });

  String collectionId;

  String deviceId;

  int bytesSent;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendMessageResponse &&
     other.collectionId == collectionId &&
     other.deviceId == deviceId &&
     other.bytesSent == bytesSent;

  @override
  int get hashCode =>
    (collectionId == null ? 0 : collectionId.hashCode) +
    (deviceId == null ? 0 : deviceId.hashCode) +
    (bytesSent == null ? 0 : bytesSent.hashCode);

  @override
  String toString() => 'SendMessageResponse[collectionId=$collectionId, deviceId=$deviceId, bytesSent=$bytesSent]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (collectionId != null) {
      json[r'collectionId'] = collectionId;
    }
    if (deviceId != null) {
      json[r'deviceId'] = deviceId;
    }
    if (bytesSent != null) {
      json[r'bytesSent'] = bytesSent;
    }
    return json;
  }

  /// Returns a new [SendMessageResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SendMessageResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SendMessageResponse(
        collectionId: json[r'collectionId'],
        deviceId: json[r'deviceId'],
        bytesSent: json[r'bytesSent'],
    );

  static List<SendMessageResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SendMessageResponse>[]
      : json.map((v) => SendMessageResponse.fromJson(v)).toList(growable: true == growable);

  static Map<String, SendMessageResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SendMessageResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = SendMessageResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SendMessageResponse-objects as value to a dart map
  static Map<String, List<SendMessageResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SendMessageResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SendMessageResponse.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


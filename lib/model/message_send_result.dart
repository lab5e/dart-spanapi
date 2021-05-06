//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class MessageSendResult {
  /// Returns a new [MessageSendResult] instance.
  MessageSendResult({
    this.deviceId,
    this.message,
  });

  String deviceId;

  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageSendResult &&
     other.deviceId == deviceId &&
     other.message == message;

  @override
  int get hashCode =>
    (deviceId == null ? 0 : deviceId.hashCode) +
    (message == null ? 0 : message.hashCode);

  @override
  String toString() => 'MessageSendResult[deviceId=$deviceId, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (deviceId != null) {
      json[r'deviceId'] = deviceId;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    return json;
  }

  /// Returns a new [MessageSendResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MessageSendResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : MessageSendResult(
        deviceId: json[r'deviceId'],
        message: json[r'message'],
    );

  static List<MessageSendResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <MessageSendResult>[]
      : json.map((v) => MessageSendResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, MessageSendResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, MessageSendResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = MessageSendResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of MessageSendResult-objects as value to a dart map
  static Map<String, List<MessageSendResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MessageSendResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = MessageSendResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


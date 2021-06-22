//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class RpcStatus {
  /// Returns a new [RpcStatus] instance.
  RpcStatus({
    this.code,
    this.message,
    this.details = const [],
  });

  int code;

  String message;

  List<ProtobufAny> details;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RpcStatus &&
          other.code == code &&
          other.message == message &&
          other.details == details;

  @override
  int get hashCode =>
      (code == null ? 0 : code.hashCode) +
      (message == null ? 0 : message.hashCode) +
      (details == null ? 0 : details.hashCode);

  @override
  String toString() =>
      'RpcStatus[code=$code, message=$message, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json[r'code'] = code;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (details != null) {
      json[r'details'] = details;
    }
    return json;
  }

  /// Returns a new [RpcStatus] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RpcStatus fromJson(Map<String, dynamic> json) => json == null
      ? null
      : RpcStatus(
          code: json[r'code'],
          message: json[r'message'],
          details: ProtobufAny.listFromJson(json[r'details']),
        );

  static List<RpcStatus> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <RpcStatus>[]
          : json
              .map((v) => RpcStatus.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, RpcStatus> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RpcStatus>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RpcStatus.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RpcStatus-objects as value to a dart map
  static Map<String, List<RpcStatus>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<RpcStatus>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RpcStatus.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

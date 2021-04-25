//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class MultiSendMessageResponse {
  /// Returns a new [MultiSendMessageResponse] instance.
  MultiSendMessageResponse({
    this.errors = const [],
    this.sent,
    this.failed,
  });

  List<MessageSendResult> errors;

  int sent;

  int failed;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MultiSendMessageResponse &&
          other.errors == errors &&
          other.sent == sent &&
          other.failed == failed;

  @override
  int get hashCode =>
      (errors == null ? 0 : errors.hashCode) +
      (sent == null ? 0 : sent.hashCode) +
      (failed == null ? 0 : failed.hashCode);

  @override
  String toString() =>
      'MultiSendMessageResponse[errors=$errors, sent=$sent, failed=$failed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (errors != null) {
      json[r'errors'] = errors;
    }
    if (sent != null) {
      json[r'sent'] = sent;
    }
    if (failed != null) {
      json[r'failed'] = failed;
    }
    return json;
  }

  /// Returns a new [MultiSendMessageResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MultiSendMessageResponse fromJson(Map<String, dynamic> json) =>
      json == null
          ? null
          : MultiSendMessageResponse(
              errors: MessageSendResult.listFromJson(json[r'errors']),
              sent: json[r'sent'],
              failed: json[r'failed'],
            );

  static List<MultiSendMessageResponse> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <MultiSendMessageResponse>[]
          : json
              .map((v) => MultiSendMessageResponse.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, MultiSendMessageResponse> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, MultiSendMessageResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) =>
          map[key] = MultiSendMessageResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of MultiSendMessageResponse-objects as value to a dart map
  static Map<String, List<MultiSendMessageResponse>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<MultiSendMessageResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = MultiSendMessageResponse.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class OutputLogResponse {
  /// Returns a new [OutputLogResponse] instance.
  OutputLogResponse({
    this.logs = const [],
  });

  List<OutputLogEntry> logs;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OutputLogResponse && other.logs == logs;

  @override
  int get hashCode => (logs == null ? 0 : logs.hashCode);

  @override
  String toString() => 'OutputLogResponse[logs=$logs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (logs != null) {
      json[r'logs'] = logs;
    }
    return json;
  }

  /// Returns a new [OutputLogResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OutputLogResponse fromJson(Map<String, dynamic> json) => json == null
      ? null
      : OutputLogResponse(
          logs: OutputLogEntry.listFromJson(json[r'logs']),
        );

  static List<OutputLogResponse> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <OutputLogResponse>[]
          : json
              .map((v) => OutputLogResponse.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, OutputLogResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OutputLogResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = OutputLogResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of OutputLogResponse-objects as value to a dart map
  static Map<String, List<OutputLogResponse>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<OutputLogResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = OutputLogResponse.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

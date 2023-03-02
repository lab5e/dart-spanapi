//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (logs == null ? 0 : logs.hashCode);

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
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OutputLogResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OutputLogResponse(
        logs: OutputLogEntry.listFromJson(json[r'logs']),
      );
    }
    return null;
  }

  static List<OutputLogResponse> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(OutputLogResponse.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <OutputLogResponse>[];

  static Map<String, OutputLogResponse> mapFromJson(dynamic json) {
    final map = <String, OutputLogResponse>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = OutputLogResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OutputLogResponse-objects as value to a dart map
  static Map<String, List<OutputLogResponse>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<OutputLogResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = OutputLogResponse.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

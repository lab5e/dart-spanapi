//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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
      (logs.hashCode);

  @override
  String toString() => 'OutputLogResponse[logs=$logs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'logs'] = this.logs;
    return json;
  }

  /// Returns a new [OutputLogResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OutputLogResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "OutputLogResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "OutputLogResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OutputLogResponse(
        logs: OutputLogEntry.listFromJson(json[r'logs']) ?? const [],
      );
    }
    return null;
  }

  static List<OutputLogResponse>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OutputLogResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OutputLogResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OutputLogResponse> mapFromJson(dynamic json) {
    final map = <String, OutputLogResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OutputLogResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OutputLogResponse-objects as value to a dart map
  static Map<String, List<OutputLogResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OutputLogResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OutputLogResponse.listFromJson(
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

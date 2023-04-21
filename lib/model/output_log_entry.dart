//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class OutputLogEntry {
  /// Returns a new [OutputLogEntry] instance.
  OutputLogEntry({
    this.time,
    this.message,
    this.repeated,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? time;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? repeated;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OutputLogEntry &&
          other.time == time &&
          other.message == message &&
          other.repeated == repeated;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (time == null ? 0 : time!.hashCode) +
      (message == null ? 0 : message!.hashCode) +
      (repeated == null ? 0 : repeated!.hashCode);

  @override
  String toString() =>
      'OutputLogEntry[time=$time, message=$message, repeated=$repeated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.time != null) {
      json[r'time'] = this.time;
    } else {
      json[r'time'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.repeated != null) {
      json[r'repeated'] = this.repeated;
    } else {
      json[r'repeated'] = null;
    }
    return json;
  }

  /// Returns a new [OutputLogEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OutputLogEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "OutputLogEntry[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "OutputLogEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OutputLogEntry(
        time: mapValueOfType<String>(json, r'time'),
        message: mapValueOfType<String>(json, r'message'),
        repeated: mapValueOfType<int>(json, r'repeated'),
      );
    }
    return null;
  }

  static List<OutputLogEntry>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OutputLogEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OutputLogEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OutputLogEntry> mapFromJson(dynamic json) {
    final map = <String, OutputLogEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OutputLogEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OutputLogEntry-objects as value to a dart map
  static Map<String, List<OutputLogEntry>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OutputLogEntry>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OutputLogEntry.listFromJson(
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class OutputStats {
  /// Returns a new [OutputStats] instance.
  OutputStats({
    this.forwardErrors,
    this.messagesForwarded,
    this.bytesForwarded,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? forwardErrors;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? messagesForwarded;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bytesForwarded;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OutputStats &&
          other.forwardErrors == forwardErrors &&
          other.messagesForwarded == messagesForwarded &&
          other.bytesForwarded == bytesForwarded;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (forwardErrors == null ? 0 : forwardErrors!.hashCode) +
      (messagesForwarded == null ? 0 : messagesForwarded!.hashCode) +
      (bytesForwarded == null ? 0 : bytesForwarded!.hashCode);

  @override
  String toString() =>
      'OutputStats[forwardErrors=$forwardErrors, messagesForwarded=$messagesForwarded, bytesForwarded=$bytesForwarded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.forwardErrors != null) {
      json[r'forwardErrors'] = this.forwardErrors;
    } else {
      json[r'forwardErrors'] = null;
    }
    if (this.messagesForwarded != null) {
      json[r'messagesForwarded'] = this.messagesForwarded;
    } else {
      json[r'messagesForwarded'] = null;
    }
    if (this.bytesForwarded != null) {
      json[r'bytesForwarded'] = this.bytesForwarded;
    } else {
      json[r'bytesForwarded'] = null;
    }
    return json;
  }

  /// Returns a new [OutputStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OutputStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "OutputStats[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "OutputStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OutputStats(
        forwardErrors: mapValueOfType<int>(json, r'forwardErrors'),
        messagesForwarded: mapValueOfType<String>(json, r'messagesForwarded'),
        bytesForwarded: mapValueOfType<String>(json, r'bytesForwarded'),
      );
    }
    return null;
  }

  static List<OutputStats>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OutputStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OutputStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OutputStats> mapFromJson(dynamic json) {
    final map = <String, OutputStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OutputStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OutputStats-objects as value to a dart map
  static Map<String, List<OutputStats>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OutputStats>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OutputStats.listFromJson(
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

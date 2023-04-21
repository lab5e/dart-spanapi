//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class MQTTMetadata {
  /// Returns a new [MQTTMetadata] instance.
  MQTTMetadata({
    this.topic,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? topic;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MQTTMetadata && other.topic == topic;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (topic == null ? 0 : topic!.hashCode);

  @override
  String toString() => 'MQTTMetadata[topic=$topic]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.topic != null) {
      json[r'topic'] = this.topic;
    } else {
      json[r'topic'] = null;
    }
    return json;
  }

  /// Returns a new [MQTTMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MQTTMetadata? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MQTTMetadata[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MQTTMetadata[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MQTTMetadata(
        topic: mapValueOfType<String>(json, r'topic'),
      );
    }
    return null;
  }

  static List<MQTTMetadata>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MQTTMetadata>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MQTTMetadata.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MQTTMetadata> mapFromJson(dynamic json) {
    final map = <String, MQTTMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MQTTMetadata.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MQTTMetadata-objects as value to a dart map
  static Map<String, List<MQTTMetadata>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MQTTMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MQTTMetadata.listFromJson(
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

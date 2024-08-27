//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class CreateDeviceBody {
  /// Returns a new [CreateDeviceBody] instance.
  CreateDeviceBody({
    this.tags = const {},
    this.firmware,
    this.config,
    this.metadata,
  });

  /// Tags are metadata for the device that you can set. These are just strings.
  Map<String, String> tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FirmwareMetadata? firmware;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DeviceConfig? config;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DeviceMetadata? metadata;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateDeviceBody &&
          other.tags == tags &&
          other.firmware == firmware &&
          other.config == config &&
          other.metadata == metadata;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (tags.hashCode) +
      (firmware == null ? 0 : firmware!.hashCode) +
      (config == null ? 0 : config!.hashCode) +
      (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() =>
      'CreateDeviceBody[tags=$tags, firmware=$firmware, config=$config, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'tags'] = this.tags;
    if (this.firmware != null) {
      json[r'firmware'] = this.firmware;
    } else {
      json[r'firmware'] = null;
    }
    if (this.config != null) {
      json[r'config'] = this.config;
    } else {
      json[r'config'] = null;
    }
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    return json;
  }

  /// Returns a new [CreateDeviceBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateDeviceBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CreateDeviceBody[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CreateDeviceBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateDeviceBody(
        tags: mapCastOfType<String, String>(json, r'tags') ?? const {},
        firmware: FirmwareMetadata.fromJson(json[r'firmware']),
        config: DeviceConfig.fromJson(json[r'config']),
        metadata: DeviceMetadata.fromJson(json[r'metadata']),
      );
    }
    return null;
  }

  static List<CreateDeviceBody>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CreateDeviceBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDeviceBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateDeviceBody> mapFromJson(dynamic json) {
    final map = <String, CreateDeviceBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateDeviceBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateDeviceBody-objects as value to a dart map
  static Map<String, List<CreateDeviceBody>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CreateDeviceBody>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateDeviceBody.listFromJson(
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

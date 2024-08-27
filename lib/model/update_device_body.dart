//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class UpdateDeviceBody {
  /// Returns a new [UpdateDeviceBody] instance.
  UpdateDeviceBody({
    this.collectionId,
    this.tags = const {},
    this.firmware,
    this.config,
    this.enabled,
  });

  /// The collection id for the device. This field is optional and can be omitted if the collection id isn't changed. When changing to a new collection you must be an owner of the other collection, ie an administrator of the team that owns the new collection.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? collectionId;

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
  bool? enabled;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateDeviceBody &&
          other.collectionId == collectionId &&
          other.tags == tags &&
          other.firmware == firmware &&
          other.config == config &&
          other.enabled == enabled;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (collectionId == null ? 0 : collectionId!.hashCode) +
      (tags.hashCode) +
      (firmware == null ? 0 : firmware!.hashCode) +
      (config == null ? 0 : config!.hashCode) +
      (enabled == null ? 0 : enabled!.hashCode);

  @override
  String toString() =>
      'UpdateDeviceBody[collectionId=$collectionId, tags=$tags, firmware=$firmware, config=$config, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.collectionId != null) {
      json[r'collectionId'] = this.collectionId;
    } else {
      json[r'collectionId'] = null;
    }
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
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateDeviceBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateDeviceBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "UpdateDeviceBody[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "UpdateDeviceBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateDeviceBody(
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        tags: mapCastOfType<String, String>(json, r'tags') ?? const {},
        firmware: FirmwareMetadata.fromJson(json[r'firmware']),
        config: DeviceConfig.fromJson(json[r'config']),
        enabled: mapValueOfType<bool>(json, r'enabled'),
      );
    }
    return null;
  }

  static List<UpdateDeviceBody>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <UpdateDeviceBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateDeviceBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateDeviceBody> mapFromJson(dynamic json) {
    final map = <String, UpdateDeviceBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateDeviceBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateDeviceBody-objects as value to a dart map
  static Map<String, List<UpdateDeviceBody>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<UpdateDeviceBody>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateDeviceBody.listFromJson(
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

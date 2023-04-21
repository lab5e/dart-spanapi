//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class CollectionFirmware {
  /// Returns a new [CollectionFirmware] instance.
  CollectionFirmware({
    this.currentFirmwareId,
    this.targetFirmwareId,
    this.management,
  });

  /// The current firmware is the firmware that the devices are currently using.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currentFirmwareId;

  /// The target firmware is set to the desired firmware image for the devices in this collection. If the management is set to \"device\" this will only be used if the target firmware isn't set on the device itself.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetFirmwareId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FirmwareManagement? management;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CollectionFirmware &&
          other.currentFirmwareId == currentFirmwareId &&
          other.targetFirmwareId == targetFirmwareId &&
          other.management == management;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (currentFirmwareId == null ? 0 : currentFirmwareId!.hashCode) +
      (targetFirmwareId == null ? 0 : targetFirmwareId!.hashCode) +
      (management == null ? 0 : management!.hashCode);

  @override
  String toString() =>
      'CollectionFirmware[currentFirmwareId=$currentFirmwareId, targetFirmwareId=$targetFirmwareId, management=$management]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.currentFirmwareId != null) {
      json[r'currentFirmwareId'] = this.currentFirmwareId;
    } else {
      json[r'currentFirmwareId'] = null;
    }
    if (this.targetFirmwareId != null) {
      json[r'targetFirmwareId'] = this.targetFirmwareId;
    } else {
      json[r'targetFirmwareId'] = null;
    }
    if (this.management != null) {
      json[r'management'] = this.management;
    } else {
      json[r'management'] = null;
    }
    return json;
  }

  /// Returns a new [CollectionFirmware] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CollectionFirmware? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CollectionFirmware[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CollectionFirmware[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CollectionFirmware(
        currentFirmwareId: mapValueOfType<String>(json, r'currentFirmwareId'),
        targetFirmwareId: mapValueOfType<String>(json, r'targetFirmwareId'),
        management: FirmwareManagement.fromJson(json[r'management']),
      );
    }
    return null;
  }

  static List<CollectionFirmware>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CollectionFirmware>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CollectionFirmware.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CollectionFirmware> mapFromJson(dynamic json) {
    final map = <String, CollectionFirmware>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CollectionFirmware.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CollectionFirmware-objects as value to a dart map
  static Map<String, List<CollectionFirmware>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CollectionFirmware>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CollectionFirmware.listFromJson(
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

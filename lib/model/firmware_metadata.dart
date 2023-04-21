//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class FirmwareMetadata {
  /// Returns a new [FirmwareMetadata] instance.
  FirmwareMetadata({
    this.currentFirmwareId,
    this.targetFirmwareId,
    this.firmwareVersion,
    this.serialNumber,
    this.modelNumber,
    this.manufacturer,
    this.state,
    this.stateMessage,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currentFirmwareId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetFirmwareId;

  /// Last reported firmware version.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firmwareVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serialNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? modelNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? manufacturer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stateMessage;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FirmwareMetadata &&
          other.currentFirmwareId == currentFirmwareId &&
          other.targetFirmwareId == targetFirmwareId &&
          other.firmwareVersion == firmwareVersion &&
          other.serialNumber == serialNumber &&
          other.modelNumber == modelNumber &&
          other.manufacturer == manufacturer &&
          other.state == state &&
          other.stateMessage == stateMessage;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (currentFirmwareId == null ? 0 : currentFirmwareId!.hashCode) +
      (targetFirmwareId == null ? 0 : targetFirmwareId!.hashCode) +
      (firmwareVersion == null ? 0 : firmwareVersion!.hashCode) +
      (serialNumber == null ? 0 : serialNumber!.hashCode) +
      (modelNumber == null ? 0 : modelNumber!.hashCode) +
      (manufacturer == null ? 0 : manufacturer!.hashCode) +
      (state == null ? 0 : state!.hashCode) +
      (stateMessage == null ? 0 : stateMessage!.hashCode);

  @override
  String toString() =>
      'FirmwareMetadata[currentFirmwareId=$currentFirmwareId, targetFirmwareId=$targetFirmwareId, firmwareVersion=$firmwareVersion, serialNumber=$serialNumber, modelNumber=$modelNumber, manufacturer=$manufacturer, state=$state, stateMessage=$stateMessage]';

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
    if (this.firmwareVersion != null) {
      json[r'firmwareVersion'] = this.firmwareVersion;
    } else {
      json[r'firmwareVersion'] = null;
    }
    if (this.serialNumber != null) {
      json[r'serialNumber'] = this.serialNumber;
    } else {
      json[r'serialNumber'] = null;
    }
    if (this.modelNumber != null) {
      json[r'modelNumber'] = this.modelNumber;
    } else {
      json[r'modelNumber'] = null;
    }
    if (this.manufacturer != null) {
      json[r'manufacturer'] = this.manufacturer;
    } else {
      json[r'manufacturer'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.stateMessage != null) {
      json[r'stateMessage'] = this.stateMessage;
    } else {
      json[r'stateMessage'] = null;
    }
    return json;
  }

  /// Returns a new [FirmwareMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FirmwareMetadata? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "FirmwareMetadata[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "FirmwareMetadata[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FirmwareMetadata(
        currentFirmwareId: mapValueOfType<String>(json, r'currentFirmwareId'),
        targetFirmwareId: mapValueOfType<String>(json, r'targetFirmwareId'),
        firmwareVersion: mapValueOfType<String>(json, r'firmwareVersion'),
        serialNumber: mapValueOfType<String>(json, r'serialNumber'),
        modelNumber: mapValueOfType<String>(json, r'modelNumber'),
        manufacturer: mapValueOfType<String>(json, r'manufacturer'),
        state: mapValueOfType<String>(json, r'state'),
        stateMessage: mapValueOfType<String>(json, r'stateMessage'),
      );
    }
    return null;
  }

  static List<FirmwareMetadata>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FirmwareMetadata>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FirmwareMetadata.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FirmwareMetadata> mapFromJson(dynamic json) {
    final map = <String, FirmwareMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FirmwareMetadata.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FirmwareMetadata-objects as value to a dart map
  static Map<String, List<FirmwareMetadata>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<FirmwareMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FirmwareMetadata.listFromJson(
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

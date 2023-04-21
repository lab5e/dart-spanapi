//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class DeviceMetadata {
  /// Returns a new [DeviceMetadata] instance.
  DeviceMetadata({
    this.ciot,
    this.inet,
    this.gateway,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CellularIoTMetadata? ciot;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  InetMetadata? inet;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GatewayDeviceMetadata? gateway;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeviceMetadata &&
          other.ciot == ciot &&
          other.inet == inet &&
          other.gateway == gateway;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (ciot == null ? 0 : ciot!.hashCode) +
      (inet == null ? 0 : inet!.hashCode) +
      (gateway == null ? 0 : gateway!.hashCode);

  @override
  String toString() =>
      'DeviceMetadata[ciot=$ciot, inet=$inet, gateway=$gateway]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ciot != null) {
      json[r'ciot'] = this.ciot;
    } else {
      json[r'ciot'] = null;
    }
    if (this.inet != null) {
      json[r'inet'] = this.inet;
    } else {
      json[r'inet'] = null;
    }
    if (this.gateway != null) {
      json[r'gateway'] = this.gateway;
    } else {
      json[r'gateway'] = null;
    }
    return json;
  }

  /// Returns a new [DeviceMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeviceMetadata? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DeviceMetadata[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DeviceMetadata[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeviceMetadata(
        ciot: CellularIoTMetadata.fromJson(json[r'ciot']),
        inet: InetMetadata.fromJson(json[r'inet']),
        gateway: GatewayDeviceMetadata.fromJson(json[r'gateway']),
      );
    }
    return null;
  }

  static List<DeviceMetadata>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DeviceMetadata>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeviceMetadata.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeviceMetadata> mapFromJson(dynamic json) {
    final map = <String, DeviceMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeviceMetadata.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeviceMetadata-objects as value to a dart map
  static Map<String, List<DeviceMetadata>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DeviceMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeviceMetadata.listFromJson(
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

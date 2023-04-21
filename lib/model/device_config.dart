//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class DeviceConfig {
  /// Returns a new [DeviceConfig] instance.
  DeviceConfig({
    this.ciot,
    this.inet,
    this.gateway = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CellularIoTConfig? ciot;

  /// This is the configuration for an internet-connected device. There are currently no configuration options for internet devices; the device is identified via the clientcertificate.  This is empty since there's no configuration required for the internet  gateway
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? inet;

  Map<String, GatewayDeviceConfig> gateway;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeviceConfig &&
          other.ciot == ciot &&
          other.inet == inet &&
          other.gateway == gateway;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (ciot == null ? 0 : ciot!.hashCode) +
      (inet == null ? 0 : inet!.hashCode) +
      (gateway.hashCode);

  @override
  String toString() => 'DeviceConfig[ciot=$ciot, inet=$inet, gateway=$gateway]';

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
    json[r'gateway'] = this.gateway;
    return json;
  }

  /// Returns a new [DeviceConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeviceConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DeviceConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DeviceConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeviceConfig(
        ciot: CellularIoTConfig.fromJson(json[r'ciot']),
        inet: mapValueOfType<Object>(json, r'inet'),
        gateway: GatewayDeviceConfig.mapFromJson(json[r'gateway']) ?? const {},
      );
    }
    return null;
  }

  static List<DeviceConfig>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DeviceConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeviceConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeviceConfig> mapFromJson(dynamic json) {
    final map = <String, DeviceConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeviceConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeviceConfig-objects as value to a dart map
  static Map<String, List<DeviceConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DeviceConfig>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeviceConfig.listFromJson(
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

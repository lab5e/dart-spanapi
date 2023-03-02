//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  CellularIoTConfig ciot;

  /// This is the configuration for an internet-connected device. There are currently no configuration options for internet devices; the device is identified via the clientcertificate.  This is empty since there's no configuration required for the internet  gateway
  Object inet;

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
      (ciot == null ? 0 : ciot.hashCode) +
      (inet == null ? 0 : inet.hashCode) +
      (gateway == null ? 0 : gateway.hashCode);

  @override
  String toString() => 'DeviceConfig[ciot=$ciot, inet=$inet, gateway=$gateway]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (ciot != null) {
      json[r'ciot'] = ciot;
    }
    if (inet != null) {
      json[r'inet'] = inet;
    }
    if (gateway != null) {
      json[r'gateway'] = gateway;
    }
    return json;
  }

  /// Returns a new [DeviceConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeviceConfig fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return DeviceConfig(
        ciot: CellularIoTConfig.fromJson(json[r'ciot']),
        inet: mapValueOfType<Object>(json, r'inet'),
        gateway:
            mapValueOfType<Map<String, GatewayDeviceConfig>>(json, r'gateway'),
      );
    }
    return null;
  }

  static List<DeviceConfig> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(DeviceConfig.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <DeviceConfig>[];

  static Map<String, DeviceConfig> mapFromJson(dynamic json) {
    final map = <String, DeviceConfig>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = DeviceConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DeviceConfig-objects as value to a dart map
  static Map<String, List<DeviceConfig>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<DeviceConfig>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = DeviceConfig.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

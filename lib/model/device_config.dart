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
  });

  CellularIoTConfig ciot;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is DeviceConfig && other.ciot == ciot;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (ciot == null ? 0 : ciot.hashCode);

  @override
  String toString() => 'DeviceConfig[ciot=$ciot]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (ciot != null) {
      json[r'ciot'] = ciot;
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

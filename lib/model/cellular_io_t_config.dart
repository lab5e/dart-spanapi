//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class CellularIoTConfig {
  /// Returns a new [CellularIoTConfig] instance.
  CellularIoTConfig({
    this.imsi,
    this.imei,
  });

  String imsi;

  /// on your device. This is the primary identifier for your device on the network.  The IMEI number is the unique ID for your hardware as
  String imei;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CellularIoTConfig && other.imsi == imsi && other.imei == imei;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (imsi == null ? 0 : imsi.hashCode) + (imei == null ? 0 : imei.hashCode);

  @override
  String toString() => 'CellularIoTConfig[imsi=$imsi, imei=$imei]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (imsi != null) {
      json[r'imsi'] = imsi;
    }
    if (imei != null) {
      json[r'imei'] = imei;
    }
    return json;
  }

  /// Returns a new [CellularIoTConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CellularIoTConfig fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CellularIoTConfig(
        imsi: mapValueOfType<String>(json, r'imsi'),
        imei: mapValueOfType<String>(json, r'imei'),
      );
    }
    return null;
  }

  static List<CellularIoTConfig> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(CellularIoTConfig.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <CellularIoTConfig>[];

  static Map<String, CellularIoTConfig> mapFromJson(dynamic json) {
    final map = <String, CellularIoTConfig>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = CellularIoTConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CellularIoTConfig-objects as value to a dart map
  static Map<String, List<CellularIoTConfig>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<CellularIoTConfig>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = CellularIoTConfig.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

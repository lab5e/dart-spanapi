//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imsi;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imei;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CellularIoTConfig && other.imsi == imsi && other.imei == imei;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (imsi == null ? 0 : imsi!.hashCode) + (imei == null ? 0 : imei!.hashCode);

  @override
  String toString() => 'CellularIoTConfig[imsi=$imsi, imei=$imei]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.imsi != null) {
      json[r'imsi'] = this.imsi;
    } else {
      json[r'imsi'] = null;
    }
    if (this.imei != null) {
      json[r'imei'] = this.imei;
    } else {
      json[r'imei'] = null;
    }
    return json;
  }

  /// Returns a new [CellularIoTConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CellularIoTConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CellularIoTConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CellularIoTConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CellularIoTConfig(
        imsi: mapValueOfType<String>(json, r'imsi'),
        imei: mapValueOfType<String>(json, r'imei'),
      );
    }
    return null;
  }

  static List<CellularIoTConfig>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CellularIoTConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CellularIoTConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CellularIoTConfig> mapFromJson(dynamic json) {
    final map = <String, CellularIoTConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CellularIoTConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CellularIoTConfig-objects as value to a dart map
  static Map<String, List<CellularIoTConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CellularIoTConfig>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CellularIoTConfig.listFromJson(
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class GatewayInetConfig {
  /// Returns a new [GatewayInetConfig] instance.
  GatewayInetConfig({
    this.dtlsEndpoint,
    this.coapEndpoint,
    this.mqttEndpoint,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dtlsEndpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? coapEndpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mqttEndpoint;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GatewayInetConfig &&
          other.dtlsEndpoint == dtlsEndpoint &&
          other.coapEndpoint == coapEndpoint &&
          other.mqttEndpoint == mqttEndpoint;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (dtlsEndpoint == null ? 0 : dtlsEndpoint!.hashCode) +
      (coapEndpoint == null ? 0 : coapEndpoint!.hashCode) +
      (mqttEndpoint == null ? 0 : mqttEndpoint!.hashCode);

  @override
  String toString() =>
      'GatewayInetConfig[dtlsEndpoint=$dtlsEndpoint, coapEndpoint=$coapEndpoint, mqttEndpoint=$mqttEndpoint]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dtlsEndpoint != null) {
      json[r'dtlsEndpoint'] = this.dtlsEndpoint;
    } else {
      json[r'dtlsEndpoint'] = null;
    }
    if (this.coapEndpoint != null) {
      json[r'coapEndpoint'] = this.coapEndpoint;
    } else {
      json[r'coapEndpoint'] = null;
    }
    if (this.mqttEndpoint != null) {
      json[r'mqttEndpoint'] = this.mqttEndpoint;
    } else {
      json[r'mqttEndpoint'] = null;
    }
    return json;
  }

  /// Returns a new [GatewayInetConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GatewayInetConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GatewayInetConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GatewayInetConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GatewayInetConfig(
        dtlsEndpoint: mapValueOfType<String>(json, r'dtlsEndpoint'),
        coapEndpoint: mapValueOfType<String>(json, r'coapEndpoint'),
        mqttEndpoint: mapValueOfType<String>(json, r'mqttEndpoint'),
      );
    }
    return null;
  }

  static List<GatewayInetConfig>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GatewayInetConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GatewayInetConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GatewayInetConfig> mapFromJson(dynamic json) {
    final map = <String, GatewayInetConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GatewayInetConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GatewayInetConfig-objects as value to a dart map
  static Map<String, List<GatewayInetConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GatewayInetConfig>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GatewayInetConfig.listFromJson(
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class GatewayCIoTConfig {
  /// Returns a new [GatewayCIoTConfig] instance.
  GatewayCIoTConfig({
    this.apn,
    this.udpEndpoint,
    this.coapEndpoint,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? udpEndpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? coapEndpoint;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GatewayCIoTConfig &&
          other.apn == apn &&
          other.udpEndpoint == udpEndpoint &&
          other.coapEndpoint == coapEndpoint;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (apn == null ? 0 : apn!.hashCode) +
      (udpEndpoint == null ? 0 : udpEndpoint!.hashCode) +
      (coapEndpoint == null ? 0 : coapEndpoint!.hashCode);

  @override
  String toString() =>
      'GatewayCIoTConfig[apn=$apn, udpEndpoint=$udpEndpoint, coapEndpoint=$coapEndpoint]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.apn != null) {
      json[r'apn'] = this.apn;
    } else {
      json[r'apn'] = null;
    }
    if (this.udpEndpoint != null) {
      json[r'udpEndpoint'] = this.udpEndpoint;
    } else {
      json[r'udpEndpoint'] = null;
    }
    if (this.coapEndpoint != null) {
      json[r'coapEndpoint'] = this.coapEndpoint;
    } else {
      json[r'coapEndpoint'] = null;
    }
    return json;
  }

  /// Returns a new [GatewayCIoTConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GatewayCIoTConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GatewayCIoTConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GatewayCIoTConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GatewayCIoTConfig(
        apn: mapValueOfType<String>(json, r'apn'),
        udpEndpoint: mapValueOfType<String>(json, r'udpEndpoint'),
        coapEndpoint: mapValueOfType<String>(json, r'coapEndpoint'),
      );
    }
    return null;
  }

  static List<GatewayCIoTConfig>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GatewayCIoTConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GatewayCIoTConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GatewayCIoTConfig> mapFromJson(dynamic json) {
    final map = <String, GatewayCIoTConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GatewayCIoTConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GatewayCIoTConfig-objects as value to a dart map
  static Map<String, List<GatewayCIoTConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GatewayCIoTConfig>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GatewayCIoTConfig.listFromJson(
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class GatewayDeviceMetadata {
  /// Returns a new [GatewayDeviceMetadata] instance.
  GatewayDeviceMetadata({
    this.gatewayId,
    this.lastUpdate,
    this.params = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gatewayId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastUpdate;

  Map<String, String> params;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GatewayDeviceMetadata &&
          other.gatewayId == gatewayId &&
          other.lastUpdate == lastUpdate &&
          other.params == params;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (gatewayId == null ? 0 : gatewayId!.hashCode) +
      (lastUpdate == null ? 0 : lastUpdate!.hashCode) +
      (params.hashCode);

  @override
  String toString() =>
      'GatewayDeviceMetadata[gatewayId=$gatewayId, lastUpdate=$lastUpdate, params=$params]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.gatewayId != null) {
      json[r'gatewayId'] = this.gatewayId;
    } else {
      json[r'gatewayId'] = null;
    }
    if (this.lastUpdate != null) {
      json[r'lastUpdate'] = this.lastUpdate;
    } else {
      json[r'lastUpdate'] = null;
    }
    json[r'params'] = this.params;
    return json;
  }

  /// Returns a new [GatewayDeviceMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GatewayDeviceMetadata? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GatewayDeviceMetadata[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GatewayDeviceMetadata[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GatewayDeviceMetadata(
        gatewayId: mapValueOfType<String>(json, r'gatewayId'),
        lastUpdate: mapValueOfType<String>(json, r'lastUpdate'),
        params: mapCastOfType<String, String>(json, r'params') ?? const {},
      );
    }
    return null;
  }

  static List<GatewayDeviceMetadata>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GatewayDeviceMetadata>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GatewayDeviceMetadata.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GatewayDeviceMetadata> mapFromJson(dynamic json) {
    final map = <String, GatewayDeviceMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GatewayDeviceMetadata.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GatewayDeviceMetadata-objects as value to a dart map
  static Map<String, List<GatewayDeviceMetadata>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GatewayDeviceMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GatewayDeviceMetadata.listFromJson(
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

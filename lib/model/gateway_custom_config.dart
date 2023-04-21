//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class GatewayCustomConfig {
  /// Returns a new [GatewayCustomConfig] instance.
  GatewayCustomConfig({
    this.params = const {},
  });

  Map<String, String> params;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GatewayCustomConfig && other.params == params;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (params.hashCode);

  @override
  String toString() => 'GatewayCustomConfig[params=$params]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'params'] = this.params;
    return json;
  }

  /// Returns a new [GatewayCustomConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GatewayCustomConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GatewayCustomConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GatewayCustomConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GatewayCustomConfig(
        params: mapCastOfType<String, String>(json, r'params') ?? const {},
      );
    }
    return null;
  }

  static List<GatewayCustomConfig>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GatewayCustomConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GatewayCustomConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GatewayCustomConfig> mapFromJson(dynamic json) {
    final map = <String, GatewayCustomConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GatewayCustomConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GatewayCustomConfig-objects as value to a dart map
  static Map<String, List<GatewayCustomConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GatewayCustomConfig>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GatewayCustomConfig.listFromJson(
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

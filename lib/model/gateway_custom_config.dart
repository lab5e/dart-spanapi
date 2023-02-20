//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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
  bool operator ==(Object other) => identical(this, other) || other is GatewayCustomConfig &&
     other.params == params;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (params == null ? 0 : params.hashCode);

  @override
  String toString() => 'GatewayCustomConfig[params=$params]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (params != null) {
      json[r'params'] = params;
    }
    return json;
  }

  /// Returns a new [GatewayCustomConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GatewayCustomConfig fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GatewayCustomConfig(
        params: mapCastOfType<String, String>(json, r'params'),
      );
    }
    return null;
  }

  static List<GatewayCustomConfig> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GatewayCustomConfig.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GatewayCustomConfig>[];

  static Map<String, GatewayCustomConfig> mapFromJson(dynamic json) {
    final map = <String, GatewayCustomConfig>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GatewayCustomConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GatewayCustomConfig-objects as value to a dart map
  static Map<String, List<GatewayCustomConfig>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GatewayCustomConfig>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GatewayCustomConfig.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


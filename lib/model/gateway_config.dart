//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class GatewayConfig {
  /// Returns a new [GatewayConfig] instance.
  GatewayConfig({
    this.ciot,
    this.inet,
    this.user,
  });

  GatewayCIoTConfig ciot;

  GatewayInetConfig inet;

  GatewayCustomConfig user;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GatewayConfig &&
          other.ciot == ciot &&
          other.inet == inet &&
          other.user == user;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (ciot == null ? 0 : ciot.hashCode) +
      (inet == null ? 0 : inet.hashCode) +
      (user == null ? 0 : user.hashCode);

  @override
  String toString() => 'GatewayConfig[ciot=$ciot, inet=$inet, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (ciot != null) {
      json[r'ciot'] = ciot;
    }
    if (inet != null) {
      json[r'inet'] = inet;
    }
    if (user != null) {
      json[r'user'] = user;
    }
    return json;
  }

  /// Returns a new [GatewayConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GatewayConfig fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GatewayConfig(
        ciot: GatewayCIoTConfig.fromJson(json[r'ciot']),
        inet: GatewayInetConfig.fromJson(json[r'inet']),
        user: GatewayCustomConfig.fromJson(json[r'user']),
      );
    }
    return null;
  }

  static List<GatewayConfig> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(GatewayConfig.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <GatewayConfig>[];

  static Map<String, GatewayConfig> mapFromJson(dynamic json) {
    final map = <String, GatewayConfig>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = GatewayConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GatewayConfig-objects as value to a dart map
  static Map<String, List<GatewayConfig>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<GatewayConfig>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = GatewayConfig.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

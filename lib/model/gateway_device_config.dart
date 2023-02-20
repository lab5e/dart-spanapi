//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class GatewayDeviceConfig {
  /// Returns a new [GatewayDeviceConfig] instance.
  GatewayDeviceConfig({
    this.gatewayId,
    this.params = const {},
  });

  /// This is the ID of the gateway this configuration applies to.
  String gatewayId;

  Map<String, String> params;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GatewayDeviceConfig &&
          other.gatewayId == gatewayId &&
          other.params == params;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (gatewayId == null ? 0 : gatewayId.hashCode) +
      (params == null ? 0 : params.hashCode);

  @override
  String toString() =>
      'GatewayDeviceConfig[gatewayId=$gatewayId, params=$params]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (gatewayId != null) {
      json[r'gatewayId'] = gatewayId;
    }
    if (params != null) {
      json[r'params'] = params;
    }
    return json;
  }

  /// Returns a new [GatewayDeviceConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GatewayDeviceConfig fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GatewayDeviceConfig(
        gatewayId: mapValueOfType<String>(json, r'gatewayId'),
        params: mapCastOfType<String, String>(json, r'params'),
      );
    }
    return null;
  }

  static List<GatewayDeviceConfig> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(GatewayDeviceConfig.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <GatewayDeviceConfig>[];

  static Map<String, GatewayDeviceConfig> mapFromJson(dynamic json) {
    final map = <String, GatewayDeviceConfig>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = GatewayDeviceConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GatewayDeviceConfig-objects as value to a dart map
  static Map<String, List<GatewayDeviceConfig>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<GatewayDeviceConfig>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = GatewayDeviceConfig.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

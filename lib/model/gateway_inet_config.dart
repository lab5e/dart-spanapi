//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  String dtlsEndpoint;

  String coapEndpoint;

  String mqttEndpoint;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GatewayInetConfig &&
     other.dtlsEndpoint == dtlsEndpoint &&
     other.coapEndpoint == coapEndpoint &&
     other.mqttEndpoint == mqttEndpoint;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (dtlsEndpoint == null ? 0 : dtlsEndpoint.hashCode) +
    (coapEndpoint == null ? 0 : coapEndpoint.hashCode) +
    (mqttEndpoint == null ? 0 : mqttEndpoint.hashCode);

  @override
  String toString() => 'GatewayInetConfig[dtlsEndpoint=$dtlsEndpoint, coapEndpoint=$coapEndpoint, mqttEndpoint=$mqttEndpoint]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (dtlsEndpoint != null) {
      json[r'dtlsEndpoint'] = dtlsEndpoint;
    }
    if (coapEndpoint != null) {
      json[r'coapEndpoint'] = coapEndpoint;
    }
    if (mqttEndpoint != null) {
      json[r'mqttEndpoint'] = mqttEndpoint;
    }
    return json;
  }

  /// Returns a new [GatewayInetConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GatewayInetConfig fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GatewayInetConfig(
        dtlsEndpoint: mapValueOfType<String>(json, r'dtlsEndpoint'),
        coapEndpoint: mapValueOfType<String>(json, r'coapEndpoint'),
        mqttEndpoint: mapValueOfType<String>(json, r'mqttEndpoint'),
      );
    }
    return null;
  }

  static List<GatewayInetConfig> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GatewayInetConfig.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GatewayInetConfig>[];

  static Map<String, GatewayInetConfig> mapFromJson(dynamic json) {
    final map = <String, GatewayInetConfig>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GatewayInetConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GatewayInetConfig-objects as value to a dart map
  static Map<String, List<GatewayInetConfig>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GatewayInetConfig>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GatewayInetConfig.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


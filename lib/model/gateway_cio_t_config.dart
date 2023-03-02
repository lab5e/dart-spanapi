//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  String apn;

  String udpEndpoint;

  String coapEndpoint;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GatewayCIoTConfig &&
     other.apn == apn &&
     other.udpEndpoint == udpEndpoint &&
     other.coapEndpoint == coapEndpoint;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (apn == null ? 0 : apn.hashCode) +
    (udpEndpoint == null ? 0 : udpEndpoint.hashCode) +
    (coapEndpoint == null ? 0 : coapEndpoint.hashCode);

  @override
  String toString() => 'GatewayCIoTConfig[apn=$apn, udpEndpoint=$udpEndpoint, coapEndpoint=$coapEndpoint]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (apn != null) {
      json[r'apn'] = apn;
    }
    if (udpEndpoint != null) {
      json[r'udpEndpoint'] = udpEndpoint;
    }
    if (coapEndpoint != null) {
      json[r'coapEndpoint'] = coapEndpoint;
    }
    return json;
  }

  /// Returns a new [GatewayCIoTConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GatewayCIoTConfig fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GatewayCIoTConfig(
        apn: mapValueOfType<String>(json, r'apn'),
        udpEndpoint: mapValueOfType<String>(json, r'udpEndpoint'),
        coapEndpoint: mapValueOfType<String>(json, r'coapEndpoint'),
      );
    }
    return null;
  }

  static List<GatewayCIoTConfig> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GatewayCIoTConfig.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GatewayCIoTConfig>[];

  static Map<String, GatewayCIoTConfig> mapFromJson(dynamic json) {
    final map = <String, GatewayCIoTConfig>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GatewayCIoTConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GatewayCIoTConfig-objects as value to a dart map
  static Map<String, List<GatewayCIoTConfig>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GatewayCIoTConfig>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GatewayCIoTConfig.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


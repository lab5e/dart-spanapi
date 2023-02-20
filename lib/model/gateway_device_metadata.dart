//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  String gatewayId;

  String lastUpdate;

  Map<String, String> params;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GatewayDeviceMetadata &&
     other.gatewayId == gatewayId &&
     other.lastUpdate == lastUpdate &&
     other.params == params;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (gatewayId == null ? 0 : gatewayId.hashCode) +
    (lastUpdate == null ? 0 : lastUpdate.hashCode) +
    (params == null ? 0 : params.hashCode);

  @override
  String toString() => 'GatewayDeviceMetadata[gatewayId=$gatewayId, lastUpdate=$lastUpdate, params=$params]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (gatewayId != null) {
      json[r'gatewayId'] = gatewayId;
    }
    if (lastUpdate != null) {
      json[r'lastUpdate'] = lastUpdate;
    }
    if (params != null) {
      json[r'params'] = params;
    }
    return json;
  }

  /// Returns a new [GatewayDeviceMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GatewayDeviceMetadata fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GatewayDeviceMetadata(
        gatewayId: mapValueOfType<String>(json, r'gatewayId'),
        lastUpdate: mapValueOfType<String>(json, r'lastUpdate'),
        params: mapCastOfType<String, String>(json, r'params'),
      );
    }
    return null;
  }

  static List<GatewayDeviceMetadata> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GatewayDeviceMetadata.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GatewayDeviceMetadata>[];

  static Map<String, GatewayDeviceMetadata> mapFromJson(dynamic json) {
    final map = <String, GatewayDeviceMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GatewayDeviceMetadata.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GatewayDeviceMetadata-objects as value to a dart map
  static Map<String, List<GatewayDeviceMetadata>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GatewayDeviceMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GatewayDeviceMetadata.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


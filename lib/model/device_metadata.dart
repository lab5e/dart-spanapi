//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class DeviceMetadata {
  /// Returns a new [DeviceMetadata] instance.
  DeviceMetadata({
    this.simOperator,
    this.ciot,
    this.inet,
    this.gateway,
  });

  NetworkOperator simOperator;

  CellularIoTMetadata ciot;

  InetMetadata inet;

  GatewayDeviceMetadata gateway;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeviceMetadata &&
     other.simOperator == simOperator &&
     other.ciot == ciot &&
     other.inet == inet &&
     other.gateway == gateway;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (simOperator == null ? 0 : simOperator.hashCode) +
    (ciot == null ? 0 : ciot.hashCode) +
    (inet == null ? 0 : inet.hashCode) +
    (gateway == null ? 0 : gateway.hashCode);

  @override
  String toString() => 'DeviceMetadata[simOperator=$simOperator, ciot=$ciot, inet=$inet, gateway=$gateway]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (simOperator != null) {
      json[r'simOperator'] = simOperator;
    }
    if (ciot != null) {
      json[r'ciot'] = ciot;
    }
    if (inet != null) {
      json[r'inet'] = inet;
    }
    if (gateway != null) {
      json[r'gateway'] = gateway;
    }
    return json;
  }

  /// Returns a new [DeviceMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeviceMetadata fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return DeviceMetadata(
        simOperator: NetworkOperator.fromJson(json[r'simOperator']),
        ciot: CellularIoTMetadata.fromJson(json[r'ciot']),
        inet: InetMetadata.fromJson(json[r'inet']),
        gateway: GatewayDeviceMetadata.fromJson(json[r'gateway']),
      );
    }
    return null;
  }

  static List<DeviceMetadata> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DeviceMetadata.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DeviceMetadata>[];

  static Map<String, DeviceMetadata> mapFromJson(dynamic json) {
    final map = <String, DeviceMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = DeviceMetadata.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DeviceMetadata-objects as value to a dart map
  static Map<String, List<DeviceMetadata>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DeviceMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = DeviceMetadata.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


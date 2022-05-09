//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class Device {
  /// Returns a new [Device] instance.
  Device({
    this.deviceId,
    this.collectionId,
    this.tags = const {},
    this.firmware,
    this.config,
    this.metadata,
    this.imsi,
    this.imei,
    this.network,
  });

  /// The device ID is assigned by the backend.
  String deviceId;

  String collectionId;

  /// Tags are metadata for the device that you can set. These are just strings.
  Map<String, String> tags;

  FirmwareMetadata firmware;

  DeviceConfig config;

  DeviceMetadata metadata;

  /// The IMSI is the unique ID for the (e|nu|whatever)SIM card on your device. This is the primary identifier for your device on the network.  Deprecated: The IMSI is replaced by CellularIoTMetadata
  String imsi;

  /// The IMEI number is the unique ID for your hardware as seen by the network. Obviously you might have a completely different view on things.  Deprecated: The IMEI is replaced by CellularIoTMetadata
  String imei;

  NetworkMetadata network;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Device &&
     other.deviceId == deviceId &&
     other.collectionId == collectionId &&
     other.tags == tags &&
     other.firmware == firmware &&
     other.config == config &&
     other.metadata == metadata &&
     other.imsi == imsi &&
     other.imei == imei &&
     other.network == network;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (deviceId == null ? 0 : deviceId.hashCode) +
    (collectionId == null ? 0 : collectionId.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (firmware == null ? 0 : firmware.hashCode) +
    (config == null ? 0 : config.hashCode) +
    (metadata == null ? 0 : metadata.hashCode) +
    (imsi == null ? 0 : imsi.hashCode) +
    (imei == null ? 0 : imei.hashCode) +
    (network == null ? 0 : network.hashCode);

  @override
  String toString() => 'Device[deviceId=$deviceId, collectionId=$collectionId, tags=$tags, firmware=$firmware, config=$config, metadata=$metadata, imsi=$imsi, imei=$imei, network=$network]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (deviceId != null) {
      json[r'deviceId'] = deviceId;
    }
    if (collectionId != null) {
      json[r'collectionId'] = collectionId;
    }
    if (tags != null) {
      json[r'tags'] = tags;
    }
    if (firmware != null) {
      json[r'firmware'] = firmware;
    }
    if (config != null) {
      json[r'config'] = config;
    }
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    if (imsi != null) {
      json[r'imsi'] = imsi;
    }
    if (imei != null) {
      json[r'imei'] = imei;
    }
    if (network != null) {
      json[r'network'] = network;
    }
    return json;
  }

  /// Returns a new [Device] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Device fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Device(
        deviceId: mapValueOfType<String>(json, r'deviceId'),
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        tags: mapCastOfType<String, String>(json, r'tags'),
        firmware: FirmwareMetadata.fromJson(json[r'firmware']),
        config: DeviceConfig.fromJson(json[r'config']),
        metadata: DeviceMetadata.fromJson(json[r'metadata']),
        imsi: mapValueOfType<String>(json, r'imsi'),
        imei: mapValueOfType<String>(json, r'imei'),
        network: NetworkMetadata.fromJson(json[r'network']),
      );
    }
    return null;
  }

  static List<Device> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Device.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Device>[];

  static Map<String, Device> mapFromJson(dynamic json) {
    final map = <String, Device>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Device.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Device-objects as value to a dart map
  static Map<String, List<Device>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Device>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Device.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


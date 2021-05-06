//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class Device {
  /// Returns a new [Device] instance.
  Device({
    this.deviceId,
    this.collectionId,
    this.imsi,
    this.imei,
    this.tags = const {},
    this.network,
    this.firmware,
  });

  /// The device ID is assigned by the backend.
  String deviceId;

  String collectionId;

  /// The IMSI is the unique ID for the (e|nu|whatever)SIM card on your device. This is the primary identifier for your device on the network.
  String imsi;

  /// The IMEI number is the unique ID for your hardware as seen by the network. Obviously you might have a completely different view on things.
  String imei;

  /// Tags are metadata for the device that you can set. These are just strings.
  Map<String, String> tags;

  NetworkMetadata network;

  FirmwareMetadata firmware;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Device &&
     other.deviceId == deviceId &&
     other.collectionId == collectionId &&
     other.imsi == imsi &&
     other.imei == imei &&
     other.tags == tags &&
     other.network == network &&
     other.firmware == firmware;

  @override
  int get hashCode =>
    (deviceId == null ? 0 : deviceId.hashCode) +
    (collectionId == null ? 0 : collectionId.hashCode) +
    (imsi == null ? 0 : imsi.hashCode) +
    (imei == null ? 0 : imei.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (network == null ? 0 : network.hashCode) +
    (firmware == null ? 0 : firmware.hashCode);

  @override
  String toString() => 'Device[deviceId=$deviceId, collectionId=$collectionId, imsi=$imsi, imei=$imei, tags=$tags, network=$network, firmware=$firmware]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (deviceId != null) {
      json[r'deviceId'] = deviceId;
    }
    if (collectionId != null) {
      json[r'collectionId'] = collectionId;
    }
    if (imsi != null) {
      json[r'imsi'] = imsi;
    }
    if (imei != null) {
      json[r'imei'] = imei;
    }
    if (tags != null) {
      json[r'tags'] = tags;
    }
    if (network != null) {
      json[r'network'] = network;
    }
    if (firmware != null) {
      json[r'firmware'] = firmware;
    }
    return json;
  }

  /// Returns a new [Device] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Device fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Device(
        deviceId: json[r'deviceId'],
        collectionId: json[r'collectionId'],
        imsi: json[r'imsi'],
        imei: json[r'imei'],
        tags: json[r'tags'] == null ?
          null :
          (json[r'tags'] as Map).cast<String, String>(),
        network: NetworkMetadata.fromJson(json[r'network']),
        firmware: FirmwareMetadata.fromJson(json[r'firmware']),
    );

  static List<Device> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Device>[]
      : json.map((v) => Device.fromJson(v)).toList(growable: true == growable);

  static Map<String, Device> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Device>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Device.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Device-objects as value to a dart map
  static Map<String, List<Device>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Device>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Device.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class UpdateDeviceRequest {
  /// Returns a new [UpdateDeviceRequest] instance.
  UpdateDeviceRequest({
    this.existingCollectionId,
    this.deviceId,
    this.collectionId,
    this.imsi,
    this.imei,
    this.tags = const {},
    this.firmware,
  });

  String existingCollectionId;

  String deviceId;

  /// The collection id for the device. This field is optional and can be omitted if the collection id isn't changed. When changing to a new collection you must be an owner of the other collection, ie an administrator of the team that owns the new collection.
  String collectionId;

  /// The IMSI is the unique ID for the (e|nu|whatever)SIM card on your device. This is the primary identifier for your device on the network.
  String imsi;

  /// The IMEI number is the unique ID for your hardware as seen by the network. Obviously you might have a completely different view on things.
  String imei;

  /// Tags are metadata for the device that you can set. These are just strings.
  Map<String, String> tags;

  FirmwareMetadata firmware;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateDeviceRequest &&
     other.existingCollectionId == existingCollectionId &&
     other.deviceId == deviceId &&
     other.collectionId == collectionId &&
     other.imsi == imsi &&
     other.imei == imei &&
     other.tags == tags &&
     other.firmware == firmware;

  @override
  int get hashCode =>
    (existingCollectionId == null ? 0 : existingCollectionId.hashCode) +
    (deviceId == null ? 0 : deviceId.hashCode) +
    (collectionId == null ? 0 : collectionId.hashCode) +
    (imsi == null ? 0 : imsi.hashCode) +
    (imei == null ? 0 : imei.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (firmware == null ? 0 : firmware.hashCode);

  @override
  String toString() => 'UpdateDeviceRequest[existingCollectionId=$existingCollectionId, deviceId=$deviceId, collectionId=$collectionId, imsi=$imsi, imei=$imei, tags=$tags, firmware=$firmware]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (existingCollectionId != null) {
      json[r'existingCollectionId'] = existingCollectionId;
    }
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
    if (firmware != null) {
      json[r'firmware'] = firmware;
    }
    return json;
  }

  /// Returns a new [UpdateDeviceRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UpdateDeviceRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UpdateDeviceRequest(
        existingCollectionId: json[r'existingCollectionId'],
        deviceId: json[r'deviceId'],
        collectionId: json[r'collectionId'],
        imsi: json[r'imsi'],
        imei: json[r'imei'],
        tags: json[r'tags'] == null ?
          null :
          (json[r'tags'] as Map).cast<String, String>(),
        firmware: FirmwareMetadata.fromJson(json[r'firmware']),
    );

  static List<UpdateDeviceRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UpdateDeviceRequest>[]
      : json.map((v) => UpdateDeviceRequest.fromJson(v)).toList(growable: true == growable);

  static Map<String, UpdateDeviceRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UpdateDeviceRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UpdateDeviceRequest.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UpdateDeviceRequest-objects as value to a dart map
  static Map<String, List<UpdateDeviceRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UpdateDeviceRequest>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UpdateDeviceRequest.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


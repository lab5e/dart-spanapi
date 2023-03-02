//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class UpdateDeviceRequest {
  /// Returns a new [UpdateDeviceRequest] instance.
  UpdateDeviceRequest({
    this.collectionId,
    this.tags = const {},
    this.firmware,
    this.config,
  });

  /// The collection id for the device. This field is optional and can be omitted if the collection id isn't changed. When changing to a new collection you must be an owner of the other collection, ie an administrator of the team that owns the new collection.
  String collectionId;

  /// Tags are metadata for the device that you can set. These are just strings.
  Map<String, String> tags;

  FirmwareMetadata firmware;

  DeviceConfig config;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateDeviceRequest &&
     other.collectionId == collectionId &&
     other.tags == tags &&
     other.firmware == firmware &&
     other.config == config;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (collectionId == null ? 0 : collectionId.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (firmware == null ? 0 : firmware.hashCode) +
    (config == null ? 0 : config.hashCode);

  @override
  String toString() => 'UpdateDeviceRequest[collectionId=$collectionId, tags=$tags, firmware=$firmware, config=$config]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    return json;
  }

  /// Returns a new [UpdateDeviceRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateDeviceRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return UpdateDeviceRequest(
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        tags: mapCastOfType<String, String>(json, r'tags'),
        firmware: FirmwareMetadata.fromJson(json[r'firmware']),
        config: DeviceConfig.fromJson(json[r'config']),
      );
    }
    return null;
  }

  static List<UpdateDeviceRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(UpdateDeviceRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <UpdateDeviceRequest>[];

  static Map<String, UpdateDeviceRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateDeviceRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = UpdateDeviceRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UpdateDeviceRequest-objects as value to a dart map
  static Map<String, List<UpdateDeviceRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UpdateDeviceRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = UpdateDeviceRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class CreateDeviceRequest {
  /// Returns a new [CreateDeviceRequest] instance.
  CreateDeviceRequest({
    this.tags = const {},
    this.firmware,
    this.config,
    this.metadata,
  });

  /// Tags are metadata for the device that you can set. These are just strings.
  Map<String, String> tags;

  FirmwareMetadata firmware;

  DeviceConfig config;

  DeviceMetadata metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateDeviceRequest &&
     other.tags == tags &&
     other.firmware == firmware &&
     other.config == config &&
     other.metadata == metadata;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (tags == null ? 0 : tags.hashCode) +
    (firmware == null ? 0 : firmware.hashCode) +
    (config == null ? 0 : config.hashCode) +
    (metadata == null ? 0 : metadata.hashCode);

  @override
  String toString() => 'CreateDeviceRequest[tags=$tags, firmware=$firmware, config=$config, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    return json;
  }

  /// Returns a new [CreateDeviceRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateDeviceRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CreateDeviceRequest(
        tags: mapCastOfType<String, String>(json, r'tags'),
        firmware: FirmwareMetadata.fromJson(json[r'firmware']),
        config: DeviceConfig.fromJson(json[r'config']),
        metadata: DeviceMetadata.fromJson(json[r'metadata']),
      );
    }
    return null;
  }

  static List<CreateDeviceRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CreateDeviceRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CreateDeviceRequest>[];

  static Map<String, CreateDeviceRequest> mapFromJson(dynamic json) {
    final map = <String, CreateDeviceRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CreateDeviceRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateDeviceRequest-objects as value to a dart map
  static Map<String, List<CreateDeviceRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CreateDeviceRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CreateDeviceRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


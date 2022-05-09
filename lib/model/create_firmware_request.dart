//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class CreateFirmwareRequest {
  /// Returns a new [CreateFirmwareRequest] instance.
  CreateFirmwareRequest({
    this.image,
    this.version,
    this.filename,
    this.tags = const {},
  });

  String image;

  String version;

  String filename;

  Map<String, String> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateFirmwareRequest &&
     other.image == image &&
     other.version == version &&
     other.filename == filename &&
     other.tags == tags;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (image == null ? 0 : image.hashCode) +
    (version == null ? 0 : version.hashCode) +
    (filename == null ? 0 : filename.hashCode) +
    (tags == null ? 0 : tags.hashCode);

  @override
  String toString() => 'CreateFirmwareRequest[image=$image, version=$version, filename=$filename, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (image != null) {
      json[r'image'] = image;
    }
    if (version != null) {
      json[r'version'] = version;
    }
    if (filename != null) {
      json[r'filename'] = filename;
    }
    if (tags != null) {
      json[r'tags'] = tags;
    }
    return json;
  }

  /// Returns a new [CreateFirmwareRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateFirmwareRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CreateFirmwareRequest(
        image: mapValueOfType<String>(json, r'image'),
        version: mapValueOfType<String>(json, r'version'),
        filename: mapValueOfType<String>(json, r'filename'),
        tags: mapCastOfType<String, String>(json, r'tags'),
      );
    }
    return null;
  }

  static List<CreateFirmwareRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CreateFirmwareRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CreateFirmwareRequest>[];

  static Map<String, CreateFirmwareRequest> mapFromJson(dynamic json) {
    final map = <String, CreateFirmwareRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CreateFirmwareRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateFirmwareRequest-objects as value to a dart map
  static Map<String, List<CreateFirmwareRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CreateFirmwareRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CreateFirmwareRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


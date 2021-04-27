//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class CreateFirmwareRequest {
  /// Returns a new [CreateFirmwareRequest] instance.
  CreateFirmwareRequest({
    this.collectionId,
    this.image,
    this.version,
    this.filename,
    this.tags = const {},
  });

  String collectionId;

  String image;

  String version;

  String filename;

  Map<String, String> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateFirmwareRequest &&
     other.collectionId == collectionId &&
     other.image == image &&
     other.version == version &&
     other.filename == filename &&
     other.tags == tags;

  @override
  int get hashCode =>
    (collectionId == null ? 0 : collectionId.hashCode) +
    (image == null ? 0 : image.hashCode) +
    (version == null ? 0 : version.hashCode) +
    (filename == null ? 0 : filename.hashCode) +
    (tags == null ? 0 : tags.hashCode);

  @override
  String toString() => 'CreateFirmwareRequest[collectionId=$collectionId, image=$image, version=$version, filename=$filename, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (collectionId != null) {
      json[r'collectionId'] = collectionId;
    }
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
  /// [json] if it's non-null, null if [json] is null.
  static CreateFirmwareRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CreateFirmwareRequest(
        collectionId: json[r'collectionId'],
        image: json[r'image'],
        version: json[r'version'],
        filename: json[r'filename'],
        tags: json[r'tags'] == null ?
          null :
          (json[r'tags'] as Map).cast<String, String>(),
    );

  static List<CreateFirmwareRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateFirmwareRequest>[]
      : json.map((v) => CreateFirmwareRequest.fromJson(v)).toList(growable: true == growable);

  static Map<String, CreateFirmwareRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CreateFirmwareRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CreateFirmwareRequest.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CreateFirmwareRequest-objects as value to a dart map
  static Map<String, List<CreateFirmwareRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CreateFirmwareRequest>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CreateFirmwareRequest.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


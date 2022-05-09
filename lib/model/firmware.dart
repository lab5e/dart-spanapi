//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class Firmware {
  /// Returns a new [Firmware] instance.
  Firmware({
    this.imageId,
    this.version,
    this.filename,
    this.sha256,
    this.length,
    this.collectionId,
    this.created,
    this.tags = const {},
  });

  String imageId;

  /// Make sure that the firmware image reports this version. If the version reported by this image is different the FOTA process won't be reported as successful since the device will report a version different from this.
  String version;

  /// This is just for internal house keeping, making it potentially easier to identify the firmware image.
  String filename;

  /// To ensure each image is unique the SHA-256 hash for all images in a collection must be unqique
  String sha256;

  int length;

  /// Collection ID for the collection owning the firmware image.
  String collectionId;

  String created;

  /// Tags for firmware image.
  Map<String, String> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Firmware &&
     other.imageId == imageId &&
     other.version == version &&
     other.filename == filename &&
     other.sha256 == sha256 &&
     other.length == length &&
     other.collectionId == collectionId &&
     other.created == created &&
     other.tags == tags;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (imageId == null ? 0 : imageId.hashCode) +
    (version == null ? 0 : version.hashCode) +
    (filename == null ? 0 : filename.hashCode) +
    (sha256 == null ? 0 : sha256.hashCode) +
    (length == null ? 0 : length.hashCode) +
    (collectionId == null ? 0 : collectionId.hashCode) +
    (created == null ? 0 : created.hashCode) +
    (tags == null ? 0 : tags.hashCode);

  @override
  String toString() => 'Firmware[imageId=$imageId, version=$version, filename=$filename, sha256=$sha256, length=$length, collectionId=$collectionId, created=$created, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (imageId != null) {
      json[r'imageId'] = imageId;
    }
    if (version != null) {
      json[r'version'] = version;
    }
    if (filename != null) {
      json[r'filename'] = filename;
    }
    if (sha256 != null) {
      json[r'sha256'] = sha256;
    }
    if (length != null) {
      json[r'length'] = length;
    }
    if (collectionId != null) {
      json[r'collectionId'] = collectionId;
    }
    if (created != null) {
      json[r'created'] = created;
    }
    if (tags != null) {
      json[r'tags'] = tags;
    }
    return json;
  }

  /// Returns a new [Firmware] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Firmware fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Firmware(
        imageId: mapValueOfType<String>(json, r'imageId'),
        version: mapValueOfType<String>(json, r'version'),
        filename: mapValueOfType<String>(json, r'filename'),
        sha256: mapValueOfType<String>(json, r'sha256'),
        length: mapValueOfType<int>(json, r'length'),
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        created: mapValueOfType<String>(json, r'created'),
        tags: mapCastOfType<String, String>(json, r'tags'),
      );
    }
    return null;
  }

  static List<Firmware> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Firmware.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Firmware>[];

  static Map<String, Firmware> mapFromJson(dynamic json) {
    final map = <String, Firmware>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Firmware.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Firmware-objects as value to a dart map
  static Map<String, List<Firmware>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Firmware>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Firmware.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


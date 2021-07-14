//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Firmware &&
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
      (imageId == null ? 0 : imageId.hashCode) +
      (version == null ? 0 : version.hashCode) +
      (filename == null ? 0 : filename.hashCode) +
      (sha256 == null ? 0 : sha256.hashCode) +
      (length == null ? 0 : length.hashCode) +
      (collectionId == null ? 0 : collectionId.hashCode) +
      (created == null ? 0 : created.hashCode) +
      (tags == null ? 0 : tags.hashCode);

  @override
  String toString() =>
      'Firmware[imageId=$imageId, version=$version, filename=$filename, sha256=$sha256, length=$length, collectionId=$collectionId, created=$created, tags=$tags]';

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
  /// [json] if it's non-null, null if [json] is null.
  static Firmware fromJson(Map<String, dynamic> json) => json == null
      ? null
      : Firmware(
          imageId: json[r'imageId'],
          version: json[r'version'],
          filename: json[r'filename'],
          sha256: json[r'sha256'],
          length: json[r'length'],
          collectionId: json[r'collectionId'],
          created: json[r'created'],
          tags: json[r'tags'] == null
              ? null
              : (json[r'tags'] as Map).cast<String, String>(),
        );

  static List<Firmware> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <Firmware>[]
          : json
              .map((v) => Firmware.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, Firmware> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Firmware>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Firmware.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Firmware-objects as value to a dart map
  static Map<String, List<Firmware>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<Firmware>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Firmware.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

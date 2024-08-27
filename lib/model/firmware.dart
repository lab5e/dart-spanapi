//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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
    this.enabled,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imageId;

  /// Make sure that the firmware image reports this version. If the version reported by this image is different the FOTA process won't be reported as successful since the device will report a version different from this.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  /// This is just for internal house keeping, making it potentially easier to identify the firmware image.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filename;

  /// To ensure each image is unique the SHA-256 hash for all images in a collection must be unqique
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sha256;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? length;

  /// Collection ID for the collection owning the firmware image.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? collectionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  /// Tags for firmware image.
  Map<String, String> tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

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
          other.tags == tags &&
          other.enabled == enabled;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (imageId == null ? 0 : imageId!.hashCode) +
      (version == null ? 0 : version!.hashCode) +
      (filename == null ? 0 : filename!.hashCode) +
      (sha256 == null ? 0 : sha256!.hashCode) +
      (length == null ? 0 : length!.hashCode) +
      (collectionId == null ? 0 : collectionId!.hashCode) +
      (created == null ? 0 : created!.hashCode) +
      (tags.hashCode) +
      (enabled == null ? 0 : enabled!.hashCode);

  @override
  String toString() =>
      'Firmware[imageId=$imageId, version=$version, filename=$filename, sha256=$sha256, length=$length, collectionId=$collectionId, created=$created, tags=$tags, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.imageId != null) {
      json[r'imageId'] = this.imageId;
    } else {
      json[r'imageId'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.filename != null) {
      json[r'filename'] = this.filename;
    } else {
      json[r'filename'] = null;
    }
    if (this.sha256 != null) {
      json[r'sha256'] = this.sha256;
    } else {
      json[r'sha256'] = null;
    }
    if (this.length != null) {
      json[r'length'] = this.length;
    } else {
      json[r'length'] = null;
    }
    if (this.collectionId != null) {
      json[r'collectionId'] = this.collectionId;
    } else {
      json[r'collectionId'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    json[r'tags'] = this.tags;
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    return json;
  }

  /// Returns a new [Firmware] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Firmware? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Firmware[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Firmware[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Firmware(
        imageId: mapValueOfType<String>(json, r'imageId'),
        version: mapValueOfType<String>(json, r'version'),
        filename: mapValueOfType<String>(json, r'filename'),
        sha256: mapValueOfType<String>(json, r'sha256'),
        length: mapValueOfType<int>(json, r'length'),
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        created: mapValueOfType<String>(json, r'created'),
        tags: mapCastOfType<String, String>(json, r'tags') ?? const {},
        enabled: mapValueOfType<bool>(json, r'enabled'),
      );
    }
    return null;
  }

  static List<Firmware>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Firmware>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Firmware.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Firmware> mapFromJson(dynamic json) {
    final map = <String, Firmware>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Firmware.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Firmware-objects as value to a dart map
  static Map<String, List<Firmware>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Firmware>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Firmware.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class ImageUploadReference {
  /// Returns a new [ImageUploadReference] instance.
  ImageUploadReference({
    this.imageRef,
    this.createdAt,
    this.fileName,
    this.length,
    this.checksum,
    this.sha256,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imageRef;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fileName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? length;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? checksum;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sha256;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageUploadReference &&
          other.imageRef == imageRef &&
          other.createdAt == createdAt &&
          other.fileName == fileName &&
          other.length == length &&
          other.checksum == checksum &&
          other.sha256 == sha256;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (imageRef == null ? 0 : imageRef!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (fileName == null ? 0 : fileName!.hashCode) +
      (length == null ? 0 : length!.hashCode) +
      (checksum == null ? 0 : checksum!.hashCode) +
      (sha256 == null ? 0 : sha256!.hashCode);

  @override
  String toString() =>
      'ImageUploadReference[imageRef=$imageRef, createdAt=$createdAt, fileName=$fileName, length=$length, checksum=$checksum, sha256=$sha256]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.imageRef != null) {
      json[r'imageRef'] = this.imageRef;
    } else {
      json[r'imageRef'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.fileName != null) {
      json[r'fileName'] = this.fileName;
    } else {
      json[r'fileName'] = null;
    }
    if (this.length != null) {
      json[r'length'] = this.length;
    } else {
      json[r'length'] = null;
    }
    if (this.checksum != null) {
      json[r'checksum'] = this.checksum;
    } else {
      json[r'checksum'] = null;
    }
    if (this.sha256 != null) {
      json[r'sha256'] = this.sha256;
    } else {
      json[r'sha256'] = null;
    }
    return json;
  }

  /// Returns a new [ImageUploadReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageUploadReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ImageUploadReference[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ImageUploadReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImageUploadReference(
        imageRef: mapValueOfType<String>(json, r'imageRef'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        fileName: mapValueOfType<String>(json, r'fileName'),
        length: mapValueOfType<String>(json, r'length'),
        checksum: mapValueOfType<String>(json, r'checksum'),
        sha256: mapValueOfType<String>(json, r'sha256'),
      );
    }
    return null;
  }

  static List<ImageUploadReference>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ImageUploadReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageUploadReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageUploadReference> mapFromJson(dynamic json) {
    final map = <String, ImageUploadReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageUploadReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageUploadReference-objects as value to a dart map
  static Map<String, List<ImageUploadReference>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ImageUploadReference>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageUploadReference.listFromJson(
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

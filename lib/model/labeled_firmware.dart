//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class LabeledFirmware {
  /// Returns a new [LabeledFirmware] instance.
  LabeledFirmware({
    this.collectionId,
    this.imageId,
    this.imageRef,
    this.version,
    this.label,
    this.fileName,
    this.length,
    this.sha256,
    this.createdAt,
  });

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
  String? imageId;

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
  String? version;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

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
  String? sha256;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LabeledFirmware &&
          other.collectionId == collectionId &&
          other.imageId == imageId &&
          other.imageRef == imageRef &&
          other.version == version &&
          other.label == label &&
          other.fileName == fileName &&
          other.length == length &&
          other.sha256 == sha256 &&
          other.createdAt == createdAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (collectionId == null ? 0 : collectionId!.hashCode) +
      (imageId == null ? 0 : imageId!.hashCode) +
      (imageRef == null ? 0 : imageRef!.hashCode) +
      (version == null ? 0 : version!.hashCode) +
      (label == null ? 0 : label!.hashCode) +
      (fileName == null ? 0 : fileName!.hashCode) +
      (length == null ? 0 : length!.hashCode) +
      (sha256 == null ? 0 : sha256!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() =>
      'LabeledFirmware[collectionId=$collectionId, imageId=$imageId, imageRef=$imageRef, version=$version, label=$label, fileName=$fileName, length=$length, sha256=$sha256, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.collectionId != null) {
      json[r'collectionId'] = this.collectionId;
    } else {
      json[r'collectionId'] = null;
    }
    if (this.imageId != null) {
      json[r'imageId'] = this.imageId;
    } else {
      json[r'imageId'] = null;
    }
    if (this.imageRef != null) {
      json[r'imageRef'] = this.imageRef;
    } else {
      json[r'imageRef'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
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
    if (this.sha256 != null) {
      json[r'sha256'] = this.sha256;
    } else {
      json[r'sha256'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    return json;
  }

  /// Returns a new [LabeledFirmware] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LabeledFirmware? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "LabeledFirmware[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "LabeledFirmware[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LabeledFirmware(
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        imageId: mapValueOfType<String>(json, r'imageId'),
        imageRef: mapValueOfType<String>(json, r'imageRef'),
        version: mapValueOfType<String>(json, r'version'),
        label: mapValueOfType<String>(json, r'label'),
        fileName: mapValueOfType<String>(json, r'fileName'),
        length: mapValueOfType<String>(json, r'length'),
        sha256: mapValueOfType<String>(json, r'sha256'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
      );
    }
    return null;
  }

  static List<LabeledFirmware>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <LabeledFirmware>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LabeledFirmware.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LabeledFirmware> mapFromJson(dynamic json) {
    final map = <String, LabeledFirmware>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LabeledFirmware.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LabeledFirmware-objects as value to a dart map
  static Map<String, List<LabeledFirmware>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<LabeledFirmware>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LabeledFirmware.listFromJson(
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

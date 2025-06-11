//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class ImageVersionEntry {
  /// Returns a new [ImageVersionEntry] instance.
  ImageVersionEntry({
    this.deviceId,
    this.imageId,
    this.imageVersion,
    this.imageLabel,
    this.reported,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deviceId;

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
  String? imageVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imageLabel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reported;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageVersionEntry &&
          other.deviceId == deviceId &&
          other.imageId == imageId &&
          other.imageVersion == imageVersion &&
          other.imageLabel == imageLabel &&
          other.reported == reported;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (deviceId == null ? 0 : deviceId!.hashCode) +
      (imageId == null ? 0 : imageId!.hashCode) +
      (imageVersion == null ? 0 : imageVersion!.hashCode) +
      (imageLabel == null ? 0 : imageLabel!.hashCode) +
      (reported == null ? 0 : reported!.hashCode);

  @override
  String toString() =>
      'ImageVersionEntry[deviceId=$deviceId, imageId=$imageId, imageVersion=$imageVersion, imageLabel=$imageLabel, reported=$reported]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.deviceId != null) {
      json[r'deviceId'] = this.deviceId;
    } else {
      json[r'deviceId'] = null;
    }
    if (this.imageId != null) {
      json[r'imageId'] = this.imageId;
    } else {
      json[r'imageId'] = null;
    }
    if (this.imageVersion != null) {
      json[r'imageVersion'] = this.imageVersion;
    } else {
      json[r'imageVersion'] = null;
    }
    if (this.imageLabel != null) {
      json[r'imageLabel'] = this.imageLabel;
    } else {
      json[r'imageLabel'] = null;
    }
    if (this.reported != null) {
      json[r'reported'] = this.reported;
    } else {
      json[r'reported'] = null;
    }
    return json;
  }

  /// Returns a new [ImageVersionEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageVersionEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ImageVersionEntry[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ImageVersionEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImageVersionEntry(
        deviceId: mapValueOfType<String>(json, r'deviceId'),
        imageId: mapValueOfType<String>(json, r'imageId'),
        imageVersion: mapValueOfType<String>(json, r'imageVersion'),
        imageLabel: mapValueOfType<String>(json, r'imageLabel'),
        reported: mapValueOfType<String>(json, r'reported'),
      );
    }
    return null;
  }

  static List<ImageVersionEntry>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ImageVersionEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageVersionEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageVersionEntry> mapFromJson(dynamic json) {
    final map = <String, ImageVersionEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageVersionEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageVersionEntry-objects as value to a dart map
  static Map<String, List<ImageVersionEntry>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ImageVersionEntry>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageVersionEntry.listFromJson(
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

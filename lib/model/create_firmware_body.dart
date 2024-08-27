//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class CreateFirmwareBody {
  /// Returns a new [CreateFirmwareBody] instance.
  CreateFirmwareBody({
    this.image,
    this.version,
    this.filename,
    this.tags = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

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
  String? filename;

  Map<String, String> tags;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateFirmwareBody &&
          other.image == image &&
          other.version == version &&
          other.filename == filename &&
          other.tags == tags;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (image == null ? 0 : image!.hashCode) +
      (version == null ? 0 : version!.hashCode) +
      (filename == null ? 0 : filename!.hashCode) +
      (tags.hashCode);

  @override
  String toString() =>
      'CreateFirmwareBody[image=$image, version=$version, filename=$filename, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
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
    json[r'tags'] = this.tags;
    return json;
  }

  /// Returns a new [CreateFirmwareBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateFirmwareBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CreateFirmwareBody[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CreateFirmwareBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateFirmwareBody(
        image: mapValueOfType<String>(json, r'image'),
        version: mapValueOfType<String>(json, r'version'),
        filename: mapValueOfType<String>(json, r'filename'),
        tags: mapCastOfType<String, String>(json, r'tags') ?? const {},
      );
    }
    return null;
  }

  static List<CreateFirmwareBody>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CreateFirmwareBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateFirmwareBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateFirmwareBody> mapFromJson(dynamic json) {
    final map = <String, CreateFirmwareBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateFirmwareBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateFirmwareBody-objects as value to a dart map
  static Map<String, List<CreateFirmwareBody>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CreateFirmwareBody>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateFirmwareBody.listFromJson(
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

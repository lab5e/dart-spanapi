//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class Blob {
  /// Returns a new [Blob] instance.
  Blob({
    this.blobId,
    this.blobPath,
    this.contentType,
    this.size,
    this.created,
    this.collectionId,
    this.deviceId,
    this.gatewayId,
    this.properties = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? blobId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? blobPath;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contentType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? size;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

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
  String? deviceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gatewayId;

  Map<String, String> properties;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Blob &&
          other.blobId == blobId &&
          other.blobPath == blobPath &&
          other.contentType == contentType &&
          other.size == size &&
          other.created == created &&
          other.collectionId == collectionId &&
          other.deviceId == deviceId &&
          other.gatewayId == gatewayId &&
          other.properties == properties;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (blobId == null ? 0 : blobId!.hashCode) +
      (blobPath == null ? 0 : blobPath!.hashCode) +
      (contentType == null ? 0 : contentType!.hashCode) +
      (size == null ? 0 : size!.hashCode) +
      (created == null ? 0 : created!.hashCode) +
      (collectionId == null ? 0 : collectionId!.hashCode) +
      (deviceId == null ? 0 : deviceId!.hashCode) +
      (gatewayId == null ? 0 : gatewayId!.hashCode) +
      (properties.hashCode);

  @override
  String toString() =>
      'Blob[blobId=$blobId, blobPath=$blobPath, contentType=$contentType, size=$size, created=$created, collectionId=$collectionId, deviceId=$deviceId, gatewayId=$gatewayId, properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.blobId != null) {
      json[r'blobId'] = this.blobId;
    } else {
      json[r'blobId'] = null;
    }
    if (this.blobPath != null) {
      json[r'blobPath'] = this.blobPath;
    } else {
      json[r'blobPath'] = null;
    }
    if (this.contentType != null) {
      json[r'contentType'] = this.contentType;
    } else {
      json[r'contentType'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.collectionId != null) {
      json[r'collectionId'] = this.collectionId;
    } else {
      json[r'collectionId'] = null;
    }
    if (this.deviceId != null) {
      json[r'deviceId'] = this.deviceId;
    } else {
      json[r'deviceId'] = null;
    }
    if (this.gatewayId != null) {
      json[r'gatewayId'] = this.gatewayId;
    } else {
      json[r'gatewayId'] = null;
    }
    json[r'properties'] = this.properties;
    return json;
  }

  /// Returns a new [Blob] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Blob? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Blob[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Blob[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Blob(
        blobId: mapValueOfType<String>(json, r'blobId'),
        blobPath: mapValueOfType<String>(json, r'blobPath'),
        contentType: mapValueOfType<String>(json, r'contentType'),
        size: mapValueOfType<String>(json, r'size'),
        created: mapValueOfType<String>(json, r'created'),
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        deviceId: mapValueOfType<String>(json, r'deviceId'),
        gatewayId: mapValueOfType<String>(json, r'gatewayId'),
        properties:
            mapCastOfType<String, String>(json, r'properties') ?? const {},
      );
    }
    return null;
  }

  static List<Blob>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Blob>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Blob.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Blob> mapFromJson(dynamic json) {
    final map = <String, Blob>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Blob.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Blob-objects as value to a dart map
  static Map<String, List<Blob>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Blob>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Blob.listFromJson(
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

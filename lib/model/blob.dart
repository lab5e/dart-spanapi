//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  String blobId;

  String blobPath;

  String contentType;

  String size;

  String created;

  String collectionId;

  String deviceId;

  String gatewayId;

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
      (blobId == null ? 0 : blobId.hashCode) +
      (blobPath == null ? 0 : blobPath.hashCode) +
      (contentType == null ? 0 : contentType.hashCode) +
      (size == null ? 0 : size.hashCode) +
      (created == null ? 0 : created.hashCode) +
      (collectionId == null ? 0 : collectionId.hashCode) +
      (deviceId == null ? 0 : deviceId.hashCode) +
      (gatewayId == null ? 0 : gatewayId.hashCode) +
      (properties == null ? 0 : properties.hashCode);

  @override
  String toString() =>
      'Blob[blobId=$blobId, blobPath=$blobPath, contentType=$contentType, size=$size, created=$created, collectionId=$collectionId, deviceId=$deviceId, gatewayId=$gatewayId, properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (blobId != null) {
      json[r'blobId'] = blobId;
    }
    if (blobPath != null) {
      json[r'blobPath'] = blobPath;
    }
    if (contentType != null) {
      json[r'contentType'] = contentType;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (created != null) {
      json[r'created'] = created;
    }
    if (collectionId != null) {
      json[r'collectionId'] = collectionId;
    }
    if (deviceId != null) {
      json[r'deviceId'] = deviceId;
    }
    if (gatewayId != null) {
      json[r'gatewayId'] = gatewayId;
    }
    if (properties != null) {
      json[r'properties'] = properties;
    }
    return json;
  }

  /// Returns a new [Blob] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Blob fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Blob(
        blobId: mapValueOfType<String>(json, r'blobId'),
        blobPath: mapValueOfType<String>(json, r'blobPath'),
        contentType: mapValueOfType<String>(json, r'contentType'),
        size: mapValueOfType<String>(json, r'size'),
        created: mapValueOfType<String>(json, r'created'),
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        deviceId: mapValueOfType<String>(json, r'deviceId'),
        gatewayId: mapValueOfType<String>(json, r'gatewayId'),
        properties: mapCastOfType<String, String>(json, r'properties'),
      );
    }
    return null;
  }

  static List<Blob> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(Blob.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <Blob>[];

  static Map<String, Blob> mapFromJson(dynamic json) {
    final map = <String, Blob>{};
    if (json is Map && json.isNotEmpty) {
      json
          .cast<String, dynamic>()
          .forEach((key, dynamic value) => map[key] = Blob.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Blob-objects as value to a dart map
  static Map<String, List<Blob>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<Blob>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = Blob.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

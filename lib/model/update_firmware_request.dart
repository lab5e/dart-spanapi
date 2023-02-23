//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class UpdateFirmwareRequest {
  /// Returns a new [UpdateFirmwareRequest] instance.
  UpdateFirmwareRequest({
    this.collectionId,
    this.version,
    this.tags = const {},
  });

  String collectionId;

  String version;

  Map<String, String> tags;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateFirmwareRequest &&
          other.collectionId == collectionId &&
          other.version == version &&
          other.tags == tags;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (collectionId == null ? 0 : collectionId.hashCode) +
      (version == null ? 0 : version.hashCode) +
      (tags == null ? 0 : tags.hashCode);

  @override
  String toString() =>
      'UpdateFirmwareRequest[collectionId=$collectionId, version=$version, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (collectionId != null) {
      json[r'collectionId'] = collectionId;
    }
    if (version != null) {
      json[r'version'] = version;
    }
    if (tags != null) {
      json[r'tags'] = tags;
    }
    return json;
  }

  /// Returns a new [UpdateFirmwareRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateFirmwareRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return UpdateFirmwareRequest(
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        version: mapValueOfType<String>(json, r'version'),
        tags: mapCastOfType<String, String>(json, r'tags'),
      );
    }
    return null;
  }

  static List<UpdateFirmwareRequest> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(UpdateFirmwareRequest.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <UpdateFirmwareRequest>[];

  static Map<String, UpdateFirmwareRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateFirmwareRequest>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = UpdateFirmwareRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UpdateFirmwareRequest-objects as value to a dart map
  static Map<String, List<UpdateFirmwareRequest>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<UpdateFirmwareRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = UpdateFirmwareRequest.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

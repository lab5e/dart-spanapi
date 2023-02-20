//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class CreateCollectionRequest {
  /// Returns a new [CreateCollectionRequest] instance.
  CreateCollectionRequest({
    this.teamId,
    this.firmware,
    this.tags = const {},
  });

  /// The team ID that owns the collection. This field is required. When you create new collections the default is to use your private team ID.
  String teamId;

  CollectionFirmware firmware;

  /// Tags for the collection. Tags are metadata fields that you can assign to the collection.
  Map<String, String> tags;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateCollectionRequest &&
          other.teamId == teamId &&
          other.firmware == firmware &&
          other.tags == tags;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (teamId == null ? 0 : teamId.hashCode) +
      (firmware == null ? 0 : firmware.hashCode) +
      (tags == null ? 0 : tags.hashCode);

  @override
  String toString() =>
      'CreateCollectionRequest[teamId=$teamId, firmware=$firmware, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (teamId != null) {
      json[r'teamId'] = teamId;
    }
    if (firmware != null) {
      json[r'firmware'] = firmware;
    }
    if (tags != null) {
      json[r'tags'] = tags;
    }
    return json;
  }

  /// Returns a new [CreateCollectionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateCollectionRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CreateCollectionRequest(
        teamId: mapValueOfType<String>(json, r'teamId'),
        firmware: CollectionFirmware.fromJson(json[r'firmware']),
        tags: mapCastOfType<String, String>(json, r'tags'),
      );
    }
    return null;
  }

  static List<CreateCollectionRequest> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(CreateCollectionRequest.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <CreateCollectionRequest>[];

  static Map<String, CreateCollectionRequest> mapFromJson(dynamic json) {
    final map = <String, CreateCollectionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = CreateCollectionRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateCollectionRequest-objects as value to a dart map
  static Map<String, List<CreateCollectionRequest>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<CreateCollectionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = CreateCollectionRequest.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

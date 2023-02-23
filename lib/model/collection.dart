//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class Collection {
  /// Returns a new [Collection] instance.
  Collection({
    this.collectionId,
    this.teamId,
    this.firmware,
    this.tags = const {},
  });

  /// The ID of the collection. This is assigned by the backend.
  String collectionId;

  /// The team ID that owns the collection. This field is required. When you create new collections the default is to use your private team ID.
  String teamId;

  CollectionFirmware firmware;

  /// Tags for the collection. Tags are metadata fields that you can assign to the collection.
  Map<String, String> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Collection &&
     other.collectionId == collectionId &&
     other.teamId == teamId &&
     other.firmware == firmware &&
     other.tags == tags;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (collectionId == null ? 0 : collectionId.hashCode) +
    (teamId == null ? 0 : teamId.hashCode) +
    (firmware == null ? 0 : firmware.hashCode) +
    (tags == null ? 0 : tags.hashCode);

  @override
  String toString() => 'Collection[collectionId=$collectionId, teamId=$teamId, firmware=$firmware, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (collectionId != null) {
      json[r'collectionId'] = collectionId;
    }
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

  /// Returns a new [Collection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Collection fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Collection(
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        teamId: mapValueOfType<String>(json, r'teamId'),
        firmware: CollectionFirmware.fromJson(json[r'firmware']),
        tags: mapCastOfType<String, String>(json, r'tags'),
      );
    }
    return null;
  }

  static List<Collection> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Collection.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Collection>[];

  static Map<String, Collection> mapFromJson(dynamic json) {
    final map = <String, Collection>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Collection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Collection-objects as value to a dart map
  static Map<String, List<Collection>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Collection>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Collection.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class Collection {
  /// Returns a new [Collection] instance.
  Collection({
    this.collectionId,
    this.teamId,
    this.fieldMask,
    this.firmware,
    this.tags = const {},
  });

  /// The ID of the collection. This is assigned by the backend.
  String collectionId;

  /// The team ID that owns the collection. This field is required. When you create new collections the default is to use your private team ID.
  String teamId;

  FieldMask fieldMask;

  CollectionFirmware firmware;

  /// Tags for the collection. Tags are metadata fields that you can assign to the collection.
  Map<String, String> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Collection &&
     other.collectionId == collectionId &&
     other.teamId == teamId &&
     other.fieldMask == fieldMask &&
     other.firmware == firmware &&
     other.tags == tags;

  @override
  int get hashCode =>
    (collectionId == null ? 0 : collectionId.hashCode) +
    (teamId == null ? 0 : teamId.hashCode) +
    (fieldMask == null ? 0 : fieldMask.hashCode) +
    (firmware == null ? 0 : firmware.hashCode) +
    (tags == null ? 0 : tags.hashCode);

  @override
  String toString() => 'Collection[collectionId=$collectionId, teamId=$teamId, fieldMask=$fieldMask, firmware=$firmware, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (collectionId != null) {
      json[r'collectionId'] = collectionId;
    }
    if (teamId != null) {
      json[r'teamId'] = teamId;
    }
    if (fieldMask != null) {
      json[r'fieldMask'] = fieldMask;
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
  /// [json] if it's non-null, null if [json] is null.
  static Collection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Collection(
        collectionId: json[r'collectionId'],
        teamId: json[r'teamId'],
        fieldMask: FieldMask.fromJson(json[r'fieldMask']),
        firmware: CollectionFirmware.fromJson(json[r'firmware']),
        tags: json[r'tags'] == null ?
          null :
          (json[r'tags'] as Map).cast<String, String>(),
    );

  static List<Collection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Collection>[]
      : json.map((v) => Collection.fromJson(v)).toList(growable: true == growable);

  static Map<String, Collection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Collection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Collection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Collection-objects as value to a dart map
  static Map<String, List<Collection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Collection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Collection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


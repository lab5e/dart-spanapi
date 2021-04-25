//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class ListCollectionResponse {
  /// Returns a new [ListCollectionResponse] instance.
  ListCollectionResponse({
    this.collections = const [],
  });

  List<Collection> collections;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListCollectionResponse &&
     other.collections == collections;

  @override
  int get hashCode =>
    (collections == null ? 0 : collections.hashCode);

  @override
  String toString() => 'ListCollectionResponse[collections=$collections]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (collections != null) {
      json[r'collections'] = collections;
    }
    return json;
  }

  /// Returns a new [ListCollectionResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ListCollectionResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ListCollectionResponse(
        collections: Collection.listFromJson(json[r'collections']),
    );

  static List<ListCollectionResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ListCollectionResponse>[]
      : json.map((v) => ListCollectionResponse.fromJson(v)).toList(growable: true == growable);

  static Map<String, ListCollectionResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ListCollectionResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ListCollectionResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ListCollectionResponse-objects as value to a dart map
  static Map<String, List<ListCollectionResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListCollectionResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ListCollectionResponse.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


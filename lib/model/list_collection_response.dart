//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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
  // ignore: unnecessary_parenthesis
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
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListCollectionResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ListCollectionResponse(
        collections: Collection.listFromJson(json[r'collections']),
      );
    }
    return null;
  }

  static List<ListCollectionResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ListCollectionResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ListCollectionResponse>[];

  static Map<String, ListCollectionResponse> mapFromJson(dynamic json) {
    final map = <String, ListCollectionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ListCollectionResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListCollectionResponse-objects as value to a dart map
  static Map<String, List<ListCollectionResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListCollectionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ListCollectionResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


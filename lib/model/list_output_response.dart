//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class ListOutputResponse {
  /// Returns a new [ListOutputResponse] instance.
  ListOutputResponse({
    this.collectionId,
    this.outputs = const [],
  });

  String collectionId;

  List<Output> outputs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListOutputResponse &&
     other.collectionId == collectionId &&
     other.outputs == outputs;

  @override
  int get hashCode =>
    (collectionId == null ? 0 : collectionId.hashCode) +
    (outputs == null ? 0 : outputs.hashCode);

  @override
  String toString() => 'ListOutputResponse[collectionId=$collectionId, outputs=$outputs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (collectionId != null) {
      json[r'collectionId'] = collectionId;
    }
    if (outputs != null) {
      json[r'outputs'] = outputs;
    }
    return json;
  }

  /// Returns a new [ListOutputResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ListOutputResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ListOutputResponse(
        collectionId: json[r'collectionId'],
        outputs: Output.listFromJson(json[r'outputs']),
    );

  static List<ListOutputResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ListOutputResponse>[]
      : json.map((v) => ListOutputResponse.fromJson(v)).toList(growable: true == growable);

  static Map<String, ListOutputResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ListOutputResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ListOutputResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ListOutputResponse-objects as value to a dart map
  static Map<String, List<ListOutputResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListOutputResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ListOutputResponse.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


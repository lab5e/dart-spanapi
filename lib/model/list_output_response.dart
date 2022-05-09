//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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
  // ignore: unnecessary_parenthesis
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
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListOutputResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ListOutputResponse(
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        outputs: Output.listFromJson(json[r'outputs']),
      );
    }
    return null;
  }

  static List<ListOutputResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ListOutputResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ListOutputResponse>[];

  static Map<String, ListOutputResponse> mapFromJson(dynamic json) {
    final map = <String, ListOutputResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ListOutputResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListOutputResponse-objects as value to a dart map
  static Map<String, List<ListOutputResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListOutputResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ListOutputResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


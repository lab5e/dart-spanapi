//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class ListDataResponse {
  /// Returns a new [ListDataResponse] instance.
  ListDataResponse({
    this.data = const [],
  });

  List<OutputDataMessage> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListDataResponse &&
     other.data == data;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (data == null ? 0 : data.hashCode);

  @override
  String toString() => 'ListDataResponse[data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (data != null) {
      json[r'data'] = data;
    }
    return json;
  }

  /// Returns a new [ListDataResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListDataResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ListDataResponse(
        data: OutputDataMessage.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<ListDataResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ListDataResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ListDataResponse>[];

  static Map<String, ListDataResponse> mapFromJson(dynamic json) {
    final map = <String, ListDataResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ListDataResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListDataResponse-objects as value to a dart map
  static Map<String, List<ListDataResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListDataResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ListDataResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


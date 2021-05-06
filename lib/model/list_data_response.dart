//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class ListDataResponse {
  /// Returns a new [ListDataResponse] instance.
  ListDataResponse({
    this.data = const [],
  });

  List<OutputDataMessage> data;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is ListDataResponse && other.data == data;

  @override
  int get hashCode => (data == null ? 0 : data.hashCode);

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
  /// [json] if it's non-null, null if [json] is null.
  static ListDataResponse fromJson(Map<String, dynamic> json) => json == null
      ? null
      : ListDataResponse(
          data: OutputDataMessage.listFromJson(json[r'data']),
        );

  static List<ListDataResponse> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <ListDataResponse>[]
          : json
              .map((v) => ListDataResponse.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, ListDataResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ListDataResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = ListDataResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ListDataResponse-objects as value to a dart map
  static Map<String, List<ListDataResponse>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<ListDataResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ListDataResponse.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class DataDumpResponse {
  /// Returns a new [DataDumpResponse] instance.
  DataDumpResponse({
    this.collections = const [],
  });

  List<DumpedCollection> collections;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DataDumpResponse && other.collections == collections;

  @override
  int get hashCode => (collections == null ? 0 : collections.hashCode);

  @override
  String toString() => 'DataDumpResponse[collections=$collections]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (collections != null) {
      json[r'collections'] = collections;
    }
    return json;
  }

  /// Returns a new [DataDumpResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DataDumpResponse fromJson(Map<String, dynamic> json) => json == null
      ? null
      : DataDumpResponse(
          collections: DumpedCollection.listFromJson(json[r'collections']),
        );

  static List<DataDumpResponse> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <DataDumpResponse>[]
          : json
              .map((v) => DataDumpResponse.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, DataDumpResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DataDumpResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = DataDumpResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of DataDumpResponse-objects as value to a dart map
  static Map<String, List<DataDumpResponse>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<DataDumpResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = DataDumpResponse.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

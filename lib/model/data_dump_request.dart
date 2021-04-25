//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class DataDumpRequest {
  /// Returns a new [DataDumpRequest] instance.
  DataDumpRequest({
    this.comment,
  });

  String comment;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DataDumpRequest && other.comment == comment;

  @override
  int get hashCode => (comment == null ? 0 : comment.hashCode);

  @override
  String toString() => 'DataDumpRequest[comment=$comment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (comment != null) {
      json[r'comment'] = comment;
    }
    return json;
  }

  /// Returns a new [DataDumpRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DataDumpRequest fromJson(Map<String, dynamic> json) => json == null
      ? null
      : DataDumpRequest(
          comment: json[r'comment'],
        );

  static List<DataDumpRequest> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <DataDumpRequest>[]
          : json
              .map((v) => DataDumpRequest.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, DataDumpRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DataDumpRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = DataDumpRequest.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of DataDumpRequest-objects as value to a dart map
  static Map<String, List<DataDumpRequest>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<DataDumpRequest>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = DataDumpRequest.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

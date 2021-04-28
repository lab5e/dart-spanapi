//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class CoAPMetadata {
  /// Returns a new [CoAPMetadata] instance.
  CoAPMetadata({
    this.code,
    this.path,
  });

  String code;

  String path;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoAPMetadata && other.code == code && other.path == path;

  @override
  int get hashCode =>
      (code == null ? 0 : code.hashCode) + (path == null ? 0 : path.hashCode);

  @override
  String toString() => 'CoAPMetadata[code=$code, path=$path]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json[r'code'] = code;
    }
    if (path != null) {
      json[r'path'] = path;
    }
    return json;
  }

  /// Returns a new [CoAPMetadata] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CoAPMetadata fromJson(Map<String, dynamic> json) => json == null
      ? null
      : CoAPMetadata(
          code: json[r'code'],
          path: json[r'path'],
        );

  static List<CoAPMetadata> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <CoAPMetadata>[]
          : json
              .map((v) => CoAPMetadata.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, CoAPMetadata> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CoAPMetadata>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = CoAPMetadata.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CoAPMetadata-objects as value to a dart map
  static Map<String, List<CoAPMetadata>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<CoAPMetadata>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CoAPMetadata.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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
      // ignore: unnecessary_parenthesis
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
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CoAPMetadata fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CoAPMetadata(
        code: mapValueOfType<String>(json, r'code'),
        path: mapValueOfType<String>(json, r'path'),
      );
    }
    return null;
  }

  static List<CoAPMetadata> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(CoAPMetadata.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <CoAPMetadata>[];

  static Map<String, CoAPMetadata> mapFromJson(dynamic json) {
    final map = <String, CoAPMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = CoAPMetadata.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CoAPMetadata-objects as value to a dart map
  static Map<String, List<CoAPMetadata>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<CoAPMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = CoAPMetadata.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

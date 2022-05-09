//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class Any {
  /// Returns a new [Any] instance.
  Any({
    this.atType,
  });

  String atType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Any &&
     other.atType == atType;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (atType == null ? 0 : atType.hashCode);

  @override
  String toString() => 'Any[atType=$atType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (atType != null) {
      json[r'@type'] = atType;
    }
    return json;
  }

  /// Returns a new [Any] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Any fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Any(
        atType: mapValueOfType<String>(json, r'@type'),
      );
    }
    return null;
  }

  static List<Any> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Any.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Any>[];

  static Map<String, Any> mapFromJson(dynamic json) {
    final map = <String, Any>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Any.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Any-objects as value to a dart map
  static Map<String, List<Any>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Any>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Any.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


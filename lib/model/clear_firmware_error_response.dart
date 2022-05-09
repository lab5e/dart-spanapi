//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class ClearFirmwareErrorResponse {
  /// Returns a new [ClearFirmwareErrorResponse] instance.
  ClearFirmwareErrorResponse({
    this.result,
  });

  String result;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClearFirmwareErrorResponse &&
     other.result == result;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (result == null ? 0 : result.hashCode);

  @override
  String toString() => 'ClearFirmwareErrorResponse[result=$result]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (result != null) {
      json[r'result'] = result;
    }
    return json;
  }

  /// Returns a new [ClearFirmwareErrorResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClearFirmwareErrorResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ClearFirmwareErrorResponse(
        result: mapValueOfType<String>(json, r'result'),
      );
    }
    return null;
  }

  static List<ClearFirmwareErrorResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ClearFirmwareErrorResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ClearFirmwareErrorResponse>[];

  static Map<String, ClearFirmwareErrorResponse> mapFromJson(dynamic json) {
    final map = <String, ClearFirmwareErrorResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ClearFirmwareErrorResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ClearFirmwareErrorResponse-objects as value to a dart map
  static Map<String, List<ClearFirmwareErrorResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ClearFirmwareErrorResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ClearFirmwareErrorResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


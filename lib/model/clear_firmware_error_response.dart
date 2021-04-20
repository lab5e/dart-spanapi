//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
  /// [json] if it's non-null, null if [json] is null.
  static ClearFirmwareErrorResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ClearFirmwareErrorResponse(
        result: json[r'result'],
    );

  static List<ClearFirmwareErrorResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ClearFirmwareErrorResponse>[]
      : json.map((v) => ClearFirmwareErrorResponse.fromJson(v)).toList(growable: true == growable);

  static Map<String, ClearFirmwareErrorResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ClearFirmwareErrorResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ClearFirmwareErrorResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ClearFirmwareErrorResponse-objects as value to a dart map
  static Map<String, List<ClearFirmwareErrorResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ClearFirmwareErrorResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ClearFirmwareErrorResponse.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class SystemInfoResponse {
  /// Returns a new [SystemInfoResponse] instance.
  SystemInfoResponse({
    this.version,
    this.buildDate,
    this.releaseName,
    this.defaultFieldMask,
    this.forcedFieldMask,
  });

  String version;

  String buildDate;

  String releaseName;

  FieldMask defaultFieldMask;

  FieldMask forcedFieldMask;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SystemInfoResponse &&
          other.version == version &&
          other.buildDate == buildDate &&
          other.releaseName == releaseName &&
          other.defaultFieldMask == defaultFieldMask &&
          other.forcedFieldMask == forcedFieldMask;

  @override
  int get hashCode =>
      (version == null ? 0 : version.hashCode) +
      (buildDate == null ? 0 : buildDate.hashCode) +
      (releaseName == null ? 0 : releaseName.hashCode) +
      (defaultFieldMask == null ? 0 : defaultFieldMask.hashCode) +
      (forcedFieldMask == null ? 0 : forcedFieldMask.hashCode);

  @override
  String toString() =>
      'SystemInfoResponse[version=$version, buildDate=$buildDate, releaseName=$releaseName, defaultFieldMask=$defaultFieldMask, forcedFieldMask=$forcedFieldMask]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (version != null) {
      json[r'version'] = version;
    }
    if (buildDate != null) {
      json[r'buildDate'] = buildDate;
    }
    if (releaseName != null) {
      json[r'releaseName'] = releaseName;
    }
    if (defaultFieldMask != null) {
      json[r'defaultFieldMask'] = defaultFieldMask;
    }
    if (forcedFieldMask != null) {
      json[r'forcedFieldMask'] = forcedFieldMask;
    }
    return json;
  }

  /// Returns a new [SystemInfoResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SystemInfoResponse fromJson(Map<String, dynamic> json) => json == null
      ? null
      : SystemInfoResponse(
          version: json[r'version'],
          buildDate: json[r'buildDate'],
          releaseName: json[r'releaseName'],
          defaultFieldMask: FieldMask.fromJson(json[r'defaultFieldMask']),
          forcedFieldMask: FieldMask.fromJson(json[r'forcedFieldMask']),
        );

  static List<SystemInfoResponse> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <SystemInfoResponse>[]
          : json
              .map((v) => SystemInfoResponse.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, SystemInfoResponse> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, SystemInfoResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = SystemInfoResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SystemInfoResponse-objects as value to a dart map
  static Map<String, List<SystemInfoResponse>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<SystemInfoResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SystemInfoResponse.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

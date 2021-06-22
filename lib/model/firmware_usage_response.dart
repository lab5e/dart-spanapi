//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class FirmwareUsageResponse {
  /// Returns a new [FirmwareUsageResponse] instance.
  FirmwareUsageResponse({
    this.imageId,
    this.targeted = const [],
    this.current = const [],
  });

  String imageId;

  List<String> targeted;

  List<String> current;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FirmwareUsageResponse &&
          other.imageId == imageId &&
          other.targeted == targeted &&
          other.current == current;

  @override
  int get hashCode =>
      (imageId == null ? 0 : imageId.hashCode) +
      (targeted == null ? 0 : targeted.hashCode) +
      (current == null ? 0 : current.hashCode);

  @override
  String toString() =>
      'FirmwareUsageResponse[imageId=$imageId, targeted=$targeted, current=$current]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (imageId != null) {
      json[r'imageId'] = imageId;
    }
    if (targeted != null) {
      json[r'targeted'] = targeted;
    }
    if (current != null) {
      json[r'current'] = current;
    }
    return json;
  }

  /// Returns a new [FirmwareUsageResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FirmwareUsageResponse fromJson(Map<String, dynamic> json) =>
      json == null
          ? null
          : FirmwareUsageResponse(
              imageId: json[r'imageId'],
              targeted: json[r'targeted'] == null
                  ? null
                  : (json[r'targeted'] as List).cast<String>(),
              current: json[r'current'] == null
                  ? null
                  : (json[r'current'] as List).cast<String>(),
            );

  static List<FirmwareUsageResponse> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <FirmwareUsageResponse>[]
          : json
              .map((v) => FirmwareUsageResponse.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, FirmwareUsageResponse> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, FirmwareUsageResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) =>
          map[key] = FirmwareUsageResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FirmwareUsageResponse-objects as value to a dart map
  static Map<String, List<FirmwareUsageResponse>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<FirmwareUsageResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FirmwareUsageResponse.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

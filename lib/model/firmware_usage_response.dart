//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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
      // ignore: unnecessary_parenthesis
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
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FirmwareUsageResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FirmwareUsageResponse(
        imageId: mapValueOfType<String>(json, r'imageId'),
        targeted: json[r'targeted'] is List
            ? (json[r'targeted'] as List).cast<String>()
            : null,
        current: json[r'current'] is List
            ? (json[r'current'] as List).cast<String>()
            : null,
      );
    }
    return null;
  }

  static List<FirmwareUsageResponse> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(FirmwareUsageResponse.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <FirmwareUsageResponse>[];

  static Map<String, FirmwareUsageResponse> mapFromJson(dynamic json) {
    final map = <String, FirmwareUsageResponse>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = FirmwareUsageResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FirmwareUsageResponse-objects as value to a dart map
  static Map<String, List<FirmwareUsageResponse>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<FirmwareUsageResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = FirmwareUsageResponse.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

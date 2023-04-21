//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imageId;

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
      (imageId == null ? 0 : imageId!.hashCode) +
      (targeted.hashCode) +
      (current.hashCode);

  @override
  String toString() =>
      'FirmwareUsageResponse[imageId=$imageId, targeted=$targeted, current=$current]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.imageId != null) {
      json[r'imageId'] = this.imageId;
    } else {
      json[r'imageId'] = null;
    }
    json[r'targeted'] = this.targeted;
    json[r'current'] = this.current;
    return json;
  }

  /// Returns a new [FirmwareUsageResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FirmwareUsageResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "FirmwareUsageResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "FirmwareUsageResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FirmwareUsageResponse(
        imageId: mapValueOfType<String>(json, r'imageId'),
        targeted: json[r'targeted'] is List
            ? (json[r'targeted'] as List).cast<String>()
            : const [],
        current: json[r'current'] is List
            ? (json[r'current'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<FirmwareUsageResponse>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FirmwareUsageResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FirmwareUsageResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FirmwareUsageResponse> mapFromJson(dynamic json) {
    final map = <String, FirmwareUsageResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FirmwareUsageResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FirmwareUsageResponse-objects as value to a dart map
  static Map<String, List<FirmwareUsageResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<FirmwareUsageResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FirmwareUsageResponse.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class SystemInfoResponse {
  /// Returns a new [SystemInfoResponse] instance.
  SystemInfoResponse({
    this.version,
    this.buildDate,
    this.releaseName,
  });

  /// This is the system version
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  /// The build time for this version.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buildDate;

  /// Human-readable code name for this release. This can be easier to remember than the version number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? releaseName;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SystemInfoResponse &&
          other.version == version &&
          other.buildDate == buildDate &&
          other.releaseName == releaseName;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (version == null ? 0 : version!.hashCode) +
      (buildDate == null ? 0 : buildDate!.hashCode) +
      (releaseName == null ? 0 : releaseName!.hashCode);

  @override
  String toString() =>
      'SystemInfoResponse[version=$version, buildDate=$buildDate, releaseName=$releaseName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.buildDate != null) {
      json[r'buildDate'] = this.buildDate;
    } else {
      json[r'buildDate'] = null;
    }
    if (this.releaseName != null) {
      json[r'releaseName'] = this.releaseName;
    } else {
      json[r'releaseName'] = null;
    }
    return json;
  }

  /// Returns a new [SystemInfoResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SystemInfoResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SystemInfoResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SystemInfoResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SystemInfoResponse(
        version: mapValueOfType<String>(json, r'version'),
        buildDate: mapValueOfType<String>(json, r'buildDate'),
        releaseName: mapValueOfType<String>(json, r'releaseName'),
      );
    }
    return null;
  }

  static List<SystemInfoResponse>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SystemInfoResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SystemInfoResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SystemInfoResponse> mapFromJson(dynamic json) {
    final map = <String, SystemInfoResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SystemInfoResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SystemInfoResponse-objects as value to a dart map
  static Map<String, List<SystemInfoResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SystemInfoResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SystemInfoResponse.listFromJson(
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class VerifyCertificateBody {
  /// Returns a new [VerifyCertificateBody] instance.
  VerifyCertificateBody({
    this.gatewayId,
    this.deviceId,
    this.certificate,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gatewayId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deviceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? certificate;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VerifyCertificateBody &&
          other.gatewayId == gatewayId &&
          other.deviceId == deviceId &&
          other.certificate == certificate;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (gatewayId == null ? 0 : gatewayId!.hashCode) +
      (deviceId == null ? 0 : deviceId!.hashCode) +
      (certificate == null ? 0 : certificate!.hashCode);

  @override
  String toString() =>
      'VerifyCertificateBody[gatewayId=$gatewayId, deviceId=$deviceId, certificate=$certificate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.gatewayId != null) {
      json[r'gatewayId'] = this.gatewayId;
    } else {
      json[r'gatewayId'] = null;
    }
    if (this.deviceId != null) {
      json[r'deviceId'] = this.deviceId;
    } else {
      json[r'deviceId'] = null;
    }
    if (this.certificate != null) {
      json[r'certificate'] = this.certificate;
    } else {
      json[r'certificate'] = null;
    }
    return json;
  }

  /// Returns a new [VerifyCertificateBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VerifyCertificateBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "VerifyCertificateBody[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "VerifyCertificateBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VerifyCertificateBody(
        gatewayId: mapValueOfType<String>(json, r'gatewayId'),
        deviceId: mapValueOfType<String>(json, r'deviceId'),
        certificate: mapValueOfType<String>(json, r'certificate'),
      );
    }
    return null;
  }

  static List<VerifyCertificateBody>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <VerifyCertificateBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerifyCertificateBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VerifyCertificateBody> mapFromJson(dynamic json) {
    final map = <String, VerifyCertificateBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VerifyCertificateBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VerifyCertificateBody-objects as value to a dart map
  static Map<String, List<VerifyCertificateBody>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<VerifyCertificateBody>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VerifyCertificateBody.listFromJson(
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

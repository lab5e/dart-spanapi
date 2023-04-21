//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class SignCertificateRequest {
  /// Returns a new [SignCertificateRequest] instance.
  SignCertificateRequest({
    this.gatewayId,
    this.deviceId,
    this.csr,
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
  String? csr;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SignCertificateRequest &&
          other.gatewayId == gatewayId &&
          other.deviceId == deviceId &&
          other.csr == csr;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (gatewayId == null ? 0 : gatewayId!.hashCode) +
      (deviceId == null ? 0 : deviceId!.hashCode) +
      (csr == null ? 0 : csr!.hashCode);

  @override
  String toString() =>
      'SignCertificateRequest[gatewayId=$gatewayId, deviceId=$deviceId, csr=$csr]';

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
    if (this.csr != null) {
      json[r'csr'] = this.csr;
    } else {
      json[r'csr'] = null;
    }
    return json;
  }

  /// Returns a new [SignCertificateRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SignCertificateRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SignCertificateRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SignCertificateRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SignCertificateRequest(
        gatewayId: mapValueOfType<String>(json, r'gatewayId'),
        deviceId: mapValueOfType<String>(json, r'deviceId'),
        csr: mapValueOfType<String>(json, r'csr'),
      );
    }
    return null;
  }

  static List<SignCertificateRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SignCertificateRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SignCertificateRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SignCertificateRequest> mapFromJson(dynamic json) {
    final map = <String, SignCertificateRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SignCertificateRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SignCertificateRequest-objects as value to a dart map
  static Map<String, List<SignCertificateRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SignCertificateRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SignCertificateRequest.listFromJson(
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

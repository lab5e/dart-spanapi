//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  String gatewayId;

  String deviceId;

  String csr;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SignCertificateRequest &&
     other.gatewayId == gatewayId &&
     other.deviceId == deviceId &&
     other.csr == csr;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (gatewayId == null ? 0 : gatewayId.hashCode) +
    (deviceId == null ? 0 : deviceId.hashCode) +
    (csr == null ? 0 : csr.hashCode);

  @override
  String toString() => 'SignCertificateRequest[gatewayId=$gatewayId, deviceId=$deviceId, csr=$csr]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (gatewayId != null) {
      json[r'gatewayId'] = gatewayId;
    }
    if (deviceId != null) {
      json[r'deviceId'] = deviceId;
    }
    if (csr != null) {
      json[r'csr'] = csr;
    }
    return json;
  }

  /// Returns a new [SignCertificateRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SignCertificateRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SignCertificateRequest(
        gatewayId: mapValueOfType<String>(json, r'gatewayId'),
        deviceId: mapValueOfType<String>(json, r'deviceId'),
        csr: mapValueOfType<String>(json, r'csr'),
      );
    }
    return null;
  }

  static List<SignCertificateRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SignCertificateRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SignCertificateRequest>[];

  static Map<String, SignCertificateRequest> mapFromJson(dynamic json) {
    final map = <String, SignCertificateRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SignCertificateRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SignCertificateRequest-objects as value to a dart map
  static Map<String, List<SignCertificateRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SignCertificateRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SignCertificateRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


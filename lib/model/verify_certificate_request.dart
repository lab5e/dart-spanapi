//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class VerifyCertificateRequest {
  /// Returns a new [VerifyCertificateRequest] instance.
  VerifyCertificateRequest({
    this.gatewayId,
    this.deviceId,
    this.certificate,
  });

  String gatewayId;

  String deviceId;

  String certificate;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VerifyCertificateRequest &&
          other.gatewayId == gatewayId &&
          other.deviceId == deviceId &&
          other.certificate == certificate;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (gatewayId == null ? 0 : gatewayId.hashCode) +
      (deviceId == null ? 0 : deviceId.hashCode) +
      (certificate == null ? 0 : certificate.hashCode);

  @override
  String toString() =>
      'VerifyCertificateRequest[gatewayId=$gatewayId, deviceId=$deviceId, certificate=$certificate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (gatewayId != null) {
      json[r'gatewayId'] = gatewayId;
    }
    if (deviceId != null) {
      json[r'deviceId'] = deviceId;
    }
    if (certificate != null) {
      json[r'certificate'] = certificate;
    }
    return json;
  }

  /// Returns a new [VerifyCertificateRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VerifyCertificateRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return VerifyCertificateRequest(
        gatewayId: mapValueOfType<String>(json, r'gatewayId'),
        deviceId: mapValueOfType<String>(json, r'deviceId'),
        certificate: mapValueOfType<String>(json, r'certificate'),
      );
    }
    return null;
  }

  static List<VerifyCertificateRequest> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(VerifyCertificateRequest.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <VerifyCertificateRequest>[];

  static Map<String, VerifyCertificateRequest> mapFromJson(dynamic json) {
    final map = <String, VerifyCertificateRequest>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = VerifyCertificateRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of VerifyCertificateRequest-objects as value to a dart map
  static Map<String, List<VerifyCertificateRequest>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<VerifyCertificateRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = VerifyCertificateRequest.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

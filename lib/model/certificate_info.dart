//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class CertificateInfo {
  /// Returns a new [CertificateInfo] instance.
  CertificateInfo({
    this.certificateSerial,
    this.expires,
  });

  String certificateSerial;

  String expires;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CertificateInfo &&
     other.certificateSerial == certificateSerial &&
     other.expires == expires;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (certificateSerial == null ? 0 : certificateSerial.hashCode) +
    (expires == null ? 0 : expires.hashCode);

  @override
  String toString() => 'CertificateInfo[certificateSerial=$certificateSerial, expires=$expires]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (certificateSerial != null) {
      json[r'certificateSerial'] = certificateSerial;
    }
    if (expires != null) {
      json[r'expires'] = expires;
    }
    return json;
  }

  /// Returns a new [CertificateInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CertificateInfo fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CertificateInfo(
        certificateSerial: mapValueOfType<String>(json, r'certificateSerial'),
        expires: mapValueOfType<String>(json, r'expires'),
      );
    }
    return null;
  }

  static List<CertificateInfo> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CertificateInfo.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CertificateInfo>[];

  static Map<String, CertificateInfo> mapFromJson(dynamic json) {
    final map = <String, CertificateInfo>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CertificateInfo.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CertificateInfo-objects as value to a dart map
  static Map<String, List<CertificateInfo>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CertificateInfo>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CertificateInfo.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


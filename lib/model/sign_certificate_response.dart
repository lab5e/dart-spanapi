//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class SignCertificateResponse {
  /// Returns a new [SignCertificateResponse] instance.
  SignCertificateResponse({
    this.certificate,
    this.chain,
  });

  String certificate;

  String chain;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SignCertificateResponse &&
          other.certificate == certificate &&
          other.chain == chain;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (certificate == null ? 0 : certificate.hashCode) +
      (chain == null ? 0 : chain.hashCode);

  @override
  String toString() =>
      'SignCertificateResponse[certificate=$certificate, chain=$chain]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (certificate != null) {
      json[r'certificate'] = certificate;
    }
    if (chain != null) {
      json[r'chain'] = chain;
    }
    return json;
  }

  /// Returns a new [SignCertificateResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SignCertificateResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SignCertificateResponse(
        certificate: mapValueOfType<String>(json, r'certificate'),
        chain: mapValueOfType<String>(json, r'chain'),
      );
    }
    return null;
  }

  static List<SignCertificateResponse> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(SignCertificateResponse.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <SignCertificateResponse>[];

  static Map<String, SignCertificateResponse> mapFromJson(dynamic json) {
    final map = <String, SignCertificateResponse>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = SignCertificateResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SignCertificateResponse-objects as value to a dart map
  static Map<String, List<SignCertificateResponse>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<SignCertificateResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = SignCertificateResponse.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

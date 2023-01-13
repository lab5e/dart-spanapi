//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class CreateCertificateResponse {
  /// Returns a new [CreateCertificateResponse] instance.
  CreateCertificateResponse({
    this.certificate,
    this.privateKey,
    this.chain,
  });

  String certificate;

  String privateKey;

  String chain;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateCertificateResponse &&
          other.certificate == certificate &&
          other.privateKey == privateKey &&
          other.chain == chain;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (certificate == null ? 0 : certificate.hashCode) +
      (privateKey == null ? 0 : privateKey.hashCode) +
      (chain == null ? 0 : chain.hashCode);

  @override
  String toString() =>
      'CreateCertificateResponse[certificate=$certificate, privateKey=$privateKey, chain=$chain]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (certificate != null) {
      json[r'certificate'] = certificate;
    }
    if (privateKey != null) {
      json[r'privateKey'] = privateKey;
    }
    if (chain != null) {
      json[r'chain'] = chain;
    }
    return json;
  }

  /// Returns a new [CreateCertificateResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateCertificateResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CreateCertificateResponse(
        certificate: mapValueOfType<String>(json, r'certificate'),
        privateKey: mapValueOfType<String>(json, r'privateKey'),
        chain: mapValueOfType<String>(json, r'chain'),
      );
    }
    return null;
  }

  static List<CreateCertificateResponse> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(CreateCertificateResponse.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <CreateCertificateResponse>[];

  static Map<String, CreateCertificateResponse> mapFromJson(dynamic json) {
    final map = <String, CreateCertificateResponse>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = CreateCertificateResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateCertificateResponse-objects as value to a dart map
  static Map<String, List<CreateCertificateResponse>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<CreateCertificateResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = CreateCertificateResponse.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

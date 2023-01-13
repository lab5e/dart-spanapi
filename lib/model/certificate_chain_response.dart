//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class CertificateChainResponse {
  /// Returns a new [CertificateChainResponse] instance.
  CertificateChainResponse({
    this.chain,
  });

  String chain;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CertificateChainResponse &&
     other.chain == chain;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (chain == null ? 0 : chain.hashCode);

  @override
  String toString() => 'CertificateChainResponse[chain=$chain]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (chain != null) {
      json[r'chain'] = chain;
    }
    return json;
  }

  /// Returns a new [CertificateChainResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CertificateChainResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CertificateChainResponse(
        chain: mapValueOfType<String>(json, r'chain'),
      );
    }
    return null;
  }

  static List<CertificateChainResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CertificateChainResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CertificateChainResponse>[];

  static Map<String, CertificateChainResponse> mapFromJson(dynamic json) {
    final map = <String, CertificateChainResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CertificateChainResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CertificateChainResponse-objects as value to a dart map
  static Map<String, List<CertificateChainResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CertificateChainResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CertificateChainResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class VerifyCertificateResponse {
  /// Returns a new [VerifyCertificateResponse] instance.
  VerifyCertificateResponse({
    this.valid,
    this.errors = const [],
  });

  bool valid;

  List<String> errors;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VerifyCertificateResponse &&
          other.valid == valid &&
          other.errors == errors;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (valid == null ? 0 : valid.hashCode) +
      (errors == null ? 0 : errors.hashCode);

  @override
  String toString() =>
      'VerifyCertificateResponse[valid=$valid, errors=$errors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (valid != null) {
      json[r'valid'] = valid;
    }
    if (errors != null) {
      json[r'errors'] = errors;
    }
    return json;
  }

  /// Returns a new [VerifyCertificateResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VerifyCertificateResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return VerifyCertificateResponse(
        valid: mapValueOfType<bool>(json, r'valid'),
        errors: json[r'errors'] is List
            ? (json[r'errors'] as List).cast<String>()
            : null,
      );
    }
    return null;
  }

  static List<VerifyCertificateResponse> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(VerifyCertificateResponse.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <VerifyCertificateResponse>[];

  static Map<String, VerifyCertificateResponse> mapFromJson(dynamic json) {
    final map = <String, VerifyCertificateResponse>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = VerifyCertificateResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of VerifyCertificateResponse-objects as value to a dart map
  static Map<String, List<VerifyCertificateResponse>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<VerifyCertificateResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = VerifyCertificateResponse.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

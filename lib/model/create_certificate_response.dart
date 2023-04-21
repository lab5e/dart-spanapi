//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? certificate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? privateKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? chain;

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
      (certificate == null ? 0 : certificate!.hashCode) +
      (privateKey == null ? 0 : privateKey!.hashCode) +
      (chain == null ? 0 : chain!.hashCode);

  @override
  String toString() =>
      'CreateCertificateResponse[certificate=$certificate, privateKey=$privateKey, chain=$chain]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.certificate != null) {
      json[r'certificate'] = this.certificate;
    } else {
      json[r'certificate'] = null;
    }
    if (this.privateKey != null) {
      json[r'privateKey'] = this.privateKey;
    } else {
      json[r'privateKey'] = null;
    }
    if (this.chain != null) {
      json[r'chain'] = this.chain;
    } else {
      json[r'chain'] = null;
    }
    return json;
  }

  /// Returns a new [CreateCertificateResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateCertificateResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CreateCertificateResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CreateCertificateResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateCertificateResponse(
        certificate: mapValueOfType<String>(json, r'certificate'),
        privateKey: mapValueOfType<String>(json, r'privateKey'),
        chain: mapValueOfType<String>(json, r'chain'),
      );
    }
    return null;
  }

  static List<CreateCertificateResponse>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CreateCertificateResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateCertificateResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateCertificateResponse> mapFromJson(dynamic json) {
    final map = <String, CreateCertificateResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateCertificateResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateCertificateResponse-objects as value to a dart map
  static Map<String, List<CreateCertificateResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CreateCertificateResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateCertificateResponse.listFromJson(
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

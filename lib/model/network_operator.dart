//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class NetworkOperator {
  /// Returns a new [NetworkOperator] instance.
  NetworkOperator({
    this.mcc,
    this.mnc,
    this.country,
    this.network,
    this.countryCode,
  });

  /// The Mobile Country Code for the operator.
  int mcc;

  int mnc;

  String country;

  String network;

  String countryCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NetworkOperator &&
     other.mcc == mcc &&
     other.mnc == mnc &&
     other.country == country &&
     other.network == network &&
     other.countryCode == countryCode;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (mcc == null ? 0 : mcc.hashCode) +
    (mnc == null ? 0 : mnc.hashCode) +
    (country == null ? 0 : country.hashCode) +
    (network == null ? 0 : network.hashCode) +
    (countryCode == null ? 0 : countryCode.hashCode);

  @override
  String toString() => 'NetworkOperator[mcc=$mcc, mnc=$mnc, country=$country, network=$network, countryCode=$countryCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (mcc != null) {
      json[r'mcc'] = mcc;
    }
    if (mnc != null) {
      json[r'mnc'] = mnc;
    }
    if (country != null) {
      json[r'country'] = country;
    }
    if (network != null) {
      json[r'network'] = network;
    }
    if (countryCode != null) {
      json[r'countryCode'] = countryCode;
    }
    return json;
  }

  /// Returns a new [NetworkOperator] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NetworkOperator fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NetworkOperator(
        mcc: mapValueOfType<int>(json, r'mcc'),
        mnc: mapValueOfType<int>(json, r'mnc'),
        country: mapValueOfType<String>(json, r'country'),
        network: mapValueOfType<String>(json, r'network'),
        countryCode: mapValueOfType<String>(json, r'countryCode'),
      );
    }
    return null;
  }

  static List<NetworkOperator> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NetworkOperator.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NetworkOperator>[];

  static Map<String, NetworkOperator> mapFromJson(dynamic json) {
    final map = <String, NetworkOperator>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NetworkOperator.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NetworkOperator-objects as value to a dart map
  static Map<String, List<NetworkOperator>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NetworkOperator>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NetworkOperator.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


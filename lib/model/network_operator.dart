//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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

  /// The Mobil Country Code for the operator.
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
  /// [json] if it's non-null, null if [json] is null.
  static NetworkOperator fromJson(Map<String, dynamic> json) => json == null
    ? null
    : NetworkOperator(
        mcc: json[r'mcc'],
        mnc: json[r'mnc'],
        country: json[r'country'],
        network: json[r'network'],
        countryCode: json[r'countryCode'],
    );

  static List<NetworkOperator> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <NetworkOperator>[]
      : json.map((v) => NetworkOperator.fromJson(v)).toList(growable: true == growable);

  static Map<String, NetworkOperator> mapFromJson(Map<String, dynamic> json) {
    final map = <String, NetworkOperator>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = NetworkOperator.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of NetworkOperator-objects as value to a dart map
  static Map<String, List<NetworkOperator>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NetworkOperator>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = NetworkOperator.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


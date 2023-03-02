//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class CellularIoTMetadata {
  /// Returns a new [CellularIoTMetadata] instance.
  CellularIoTMetadata({
    this.gatewayId,
    this.allocatedIp,
    this.allocatedAt,
    this.cellId,
    this.mcc,
    this.mnc,
    this.country,
    this.network,
    this.countryCode,
    this.lastUpdate,
  });

  String gatewayId;

  /// Allocated IP address.
  String allocatedIp;

  String allocatedAt;

  String cellId;

  /// the provider in use.  The Mobile Country Code for the operator.
  int mcc;

  int mnc;

  String country;

  String network;

  String countryCode;

  String lastUpdate;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CellularIoTMetadata &&
          other.gatewayId == gatewayId &&
          other.allocatedIp == allocatedIp &&
          other.allocatedAt == allocatedAt &&
          other.cellId == cellId &&
          other.mcc == mcc &&
          other.mnc == mnc &&
          other.country == country &&
          other.network == network &&
          other.countryCode == countryCode &&
          other.lastUpdate == lastUpdate;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (gatewayId == null ? 0 : gatewayId.hashCode) +
      (allocatedIp == null ? 0 : allocatedIp.hashCode) +
      (allocatedAt == null ? 0 : allocatedAt.hashCode) +
      (cellId == null ? 0 : cellId.hashCode) +
      (mcc == null ? 0 : mcc.hashCode) +
      (mnc == null ? 0 : mnc.hashCode) +
      (country == null ? 0 : country.hashCode) +
      (network == null ? 0 : network.hashCode) +
      (countryCode == null ? 0 : countryCode.hashCode) +
      (lastUpdate == null ? 0 : lastUpdate.hashCode);

  @override
  String toString() =>
      'CellularIoTMetadata[gatewayId=$gatewayId, allocatedIp=$allocatedIp, allocatedAt=$allocatedAt, cellId=$cellId, mcc=$mcc, mnc=$mnc, country=$country, network=$network, countryCode=$countryCode, lastUpdate=$lastUpdate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (gatewayId != null) {
      json[r'gatewayId'] = gatewayId;
    }
    if (allocatedIp != null) {
      json[r'allocatedIp'] = allocatedIp;
    }
    if (allocatedAt != null) {
      json[r'allocatedAt'] = allocatedAt;
    }
    if (cellId != null) {
      json[r'cellId'] = cellId;
    }
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
    if (lastUpdate != null) {
      json[r'lastUpdate'] = lastUpdate;
    }
    return json;
  }

  /// Returns a new [CellularIoTMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CellularIoTMetadata fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CellularIoTMetadata(
        gatewayId: mapValueOfType<String>(json, r'gatewayId'),
        allocatedIp: mapValueOfType<String>(json, r'allocatedIp'),
        allocatedAt: mapValueOfType<String>(json, r'allocatedAt'),
        cellId: mapValueOfType<String>(json, r'cellId'),
        mcc: mapValueOfType<int>(json, r'mcc'),
        mnc: mapValueOfType<int>(json, r'mnc'),
        country: mapValueOfType<String>(json, r'country'),
        network: mapValueOfType<String>(json, r'network'),
        countryCode: mapValueOfType<String>(json, r'countryCode'),
        lastUpdate: mapValueOfType<String>(json, r'lastUpdate'),
      );
    }
    return null;
  }

  static List<CellularIoTMetadata> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(CellularIoTMetadata.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <CellularIoTMetadata>[];

  static Map<String, CellularIoTMetadata> mapFromJson(dynamic json) {
    final map = <String, CellularIoTMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = CellularIoTMetadata.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CellularIoTMetadata-objects as value to a dart map
  static Map<String, List<CellularIoTMetadata>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<CellularIoTMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = CellularIoTMetadata.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

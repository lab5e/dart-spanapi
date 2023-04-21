//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gatewayId;

  /// Allocated IP address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? allocatedIp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? allocatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cellId;

  /// the provider in use.  The Mobile Country Code for the operator.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mcc;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mnc;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? country;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? network;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? countryCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastUpdate;

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
      (gatewayId == null ? 0 : gatewayId!.hashCode) +
      (allocatedIp == null ? 0 : allocatedIp!.hashCode) +
      (allocatedAt == null ? 0 : allocatedAt!.hashCode) +
      (cellId == null ? 0 : cellId!.hashCode) +
      (mcc == null ? 0 : mcc!.hashCode) +
      (mnc == null ? 0 : mnc!.hashCode) +
      (country == null ? 0 : country!.hashCode) +
      (network == null ? 0 : network!.hashCode) +
      (countryCode == null ? 0 : countryCode!.hashCode) +
      (lastUpdate == null ? 0 : lastUpdate!.hashCode);

  @override
  String toString() =>
      'CellularIoTMetadata[gatewayId=$gatewayId, allocatedIp=$allocatedIp, allocatedAt=$allocatedAt, cellId=$cellId, mcc=$mcc, mnc=$mnc, country=$country, network=$network, countryCode=$countryCode, lastUpdate=$lastUpdate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.gatewayId != null) {
      json[r'gatewayId'] = this.gatewayId;
    } else {
      json[r'gatewayId'] = null;
    }
    if (this.allocatedIp != null) {
      json[r'allocatedIp'] = this.allocatedIp;
    } else {
      json[r'allocatedIp'] = null;
    }
    if (this.allocatedAt != null) {
      json[r'allocatedAt'] = this.allocatedAt;
    } else {
      json[r'allocatedAt'] = null;
    }
    if (this.cellId != null) {
      json[r'cellId'] = this.cellId;
    } else {
      json[r'cellId'] = null;
    }
    if (this.mcc != null) {
      json[r'mcc'] = this.mcc;
    } else {
      json[r'mcc'] = null;
    }
    if (this.mnc != null) {
      json[r'mnc'] = this.mnc;
    } else {
      json[r'mnc'] = null;
    }
    if (this.country != null) {
      json[r'country'] = this.country;
    } else {
      json[r'country'] = null;
    }
    if (this.network != null) {
      json[r'network'] = this.network;
    } else {
      json[r'network'] = null;
    }
    if (this.countryCode != null) {
      json[r'countryCode'] = this.countryCode;
    } else {
      json[r'countryCode'] = null;
    }
    if (this.lastUpdate != null) {
      json[r'lastUpdate'] = this.lastUpdate;
    } else {
      json[r'lastUpdate'] = null;
    }
    return json;
  }

  /// Returns a new [CellularIoTMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CellularIoTMetadata? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CellularIoTMetadata[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CellularIoTMetadata[$key]" has a null value in JSON.');
        });
        return true;
      }());

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

  static List<CellularIoTMetadata>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CellularIoTMetadata>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CellularIoTMetadata.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CellularIoTMetadata> mapFromJson(dynamic json) {
    final map = <String, CellularIoTMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CellularIoTMetadata.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CellularIoTMetadata-objects as value to a dart map
  static Map<String, List<CellularIoTMetadata>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CellularIoTMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CellularIoTMetadata.listFromJson(
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

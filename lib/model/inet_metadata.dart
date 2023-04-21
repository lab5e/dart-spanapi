//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class InetMetadata {
  /// Returns a new [InetMetadata] instance.
  InetMetadata({
    this.gatewayId,
    this.lastUpdate,
    this.remoteAddress,
    this.certificateSerial,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gatewayId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastUpdate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? remoteAddress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? certificateSerial;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InetMetadata &&
          other.gatewayId == gatewayId &&
          other.lastUpdate == lastUpdate &&
          other.remoteAddress == remoteAddress &&
          other.certificateSerial == certificateSerial;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (gatewayId == null ? 0 : gatewayId!.hashCode) +
      (lastUpdate == null ? 0 : lastUpdate!.hashCode) +
      (remoteAddress == null ? 0 : remoteAddress!.hashCode) +
      (certificateSerial == null ? 0 : certificateSerial!.hashCode);

  @override
  String toString() =>
      'InetMetadata[gatewayId=$gatewayId, lastUpdate=$lastUpdate, remoteAddress=$remoteAddress, certificateSerial=$certificateSerial]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.gatewayId != null) {
      json[r'gatewayId'] = this.gatewayId;
    } else {
      json[r'gatewayId'] = null;
    }
    if (this.lastUpdate != null) {
      json[r'lastUpdate'] = this.lastUpdate;
    } else {
      json[r'lastUpdate'] = null;
    }
    if (this.remoteAddress != null) {
      json[r'remoteAddress'] = this.remoteAddress;
    } else {
      json[r'remoteAddress'] = null;
    }
    if (this.certificateSerial != null) {
      json[r'certificateSerial'] = this.certificateSerial;
    } else {
      json[r'certificateSerial'] = null;
    }
    return json;
  }

  /// Returns a new [InetMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InetMetadata? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "InetMetadata[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "InetMetadata[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InetMetadata(
        gatewayId: mapValueOfType<String>(json, r'gatewayId'),
        lastUpdate: mapValueOfType<String>(json, r'lastUpdate'),
        remoteAddress: mapValueOfType<String>(json, r'remoteAddress'),
        certificateSerial: mapValueOfType<String>(json, r'certificateSerial'),
      );
    }
    return null;
  }

  static List<InetMetadata>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <InetMetadata>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InetMetadata.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InetMetadata> mapFromJson(dynamic json) {
    final map = <String, InetMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InetMetadata.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InetMetadata-objects as value to a dart map
  static Map<String, List<InetMetadata>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<InetMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InetMetadata.listFromJson(
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

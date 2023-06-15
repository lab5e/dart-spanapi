//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class CollectionStats {
  /// Returns a new [CollectionStats] instance.
  CollectionStats({
    this.deviceCount,
    this.outputCount,
    this.firmwareCount,
    this.blobCount,
    this.gatewayCount,
    this.devices,
    this.outputs,
    this.firmware,
    this.blobs,
    this.gateways,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deviceCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? outputCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? firmwareCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? blobCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? gatewayCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DeviceStats? devices;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OutputStats? outputs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FirmwareStats? firmware;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BlobStats? blobs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GatewayStats? gateways;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CollectionStats &&
          other.deviceCount == deviceCount &&
          other.outputCount == outputCount &&
          other.firmwareCount == firmwareCount &&
          other.blobCount == blobCount &&
          other.gatewayCount == gatewayCount &&
          other.devices == devices &&
          other.outputs == outputs &&
          other.firmware == firmware &&
          other.blobs == blobs &&
          other.gateways == gateways;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (deviceCount == null ? 0 : deviceCount!.hashCode) +
      (outputCount == null ? 0 : outputCount!.hashCode) +
      (firmwareCount == null ? 0 : firmwareCount!.hashCode) +
      (blobCount == null ? 0 : blobCount!.hashCode) +
      (gatewayCount == null ? 0 : gatewayCount!.hashCode) +
      (devices == null ? 0 : devices!.hashCode) +
      (outputs == null ? 0 : outputs!.hashCode) +
      (firmware == null ? 0 : firmware!.hashCode) +
      (blobs == null ? 0 : blobs!.hashCode) +
      (gateways == null ? 0 : gateways!.hashCode);

  @override
  String toString() =>
      'CollectionStats[deviceCount=$deviceCount, outputCount=$outputCount, firmwareCount=$firmwareCount, blobCount=$blobCount, gatewayCount=$gatewayCount, devices=$devices, outputs=$outputs, firmware=$firmware, blobs=$blobs, gateways=$gateways]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.deviceCount != null) {
      json[r'deviceCount'] = this.deviceCount;
    } else {
      json[r'deviceCount'] = null;
    }
    if (this.outputCount != null) {
      json[r'outputCount'] = this.outputCount;
    } else {
      json[r'outputCount'] = null;
    }
    if (this.firmwareCount != null) {
      json[r'firmwareCount'] = this.firmwareCount;
    } else {
      json[r'firmwareCount'] = null;
    }
    if (this.blobCount != null) {
      json[r'blobCount'] = this.blobCount;
    } else {
      json[r'blobCount'] = null;
    }
    if (this.gatewayCount != null) {
      json[r'gatewayCount'] = this.gatewayCount;
    } else {
      json[r'gatewayCount'] = null;
    }
    if (this.devices != null) {
      json[r'devices'] = this.devices;
    } else {
      json[r'devices'] = null;
    }
    if (this.outputs != null) {
      json[r'outputs'] = this.outputs;
    } else {
      json[r'outputs'] = null;
    }
    if (this.firmware != null) {
      json[r'firmware'] = this.firmware;
    } else {
      json[r'firmware'] = null;
    }
    if (this.blobs != null) {
      json[r'blobs'] = this.blobs;
    } else {
      json[r'blobs'] = null;
    }
    if (this.gateways != null) {
      json[r'gateways'] = this.gateways;
    } else {
      json[r'gateways'] = null;
    }
    return json;
  }

  /// Returns a new [CollectionStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CollectionStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CollectionStats[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CollectionStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CollectionStats(
        deviceCount: mapValueOfType<int>(json, r'deviceCount'),
        outputCount: mapValueOfType<int>(json, r'outputCount'),
        firmwareCount: mapValueOfType<int>(json, r'firmwareCount'),
        blobCount: mapValueOfType<int>(json, r'blobCount'),
        gatewayCount: mapValueOfType<int>(json, r'gatewayCount'),
        devices: DeviceStats.fromJson(json[r'devices']),
        outputs: OutputStats.fromJson(json[r'outputs']),
        firmware: FirmwareStats.fromJson(json[r'firmware']),
        blobs: BlobStats.fromJson(json[r'blobs']),
        gateways: GatewayStats.fromJson(json[r'gateways']),
      );
    }
    return null;
  }

  static List<CollectionStats>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CollectionStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CollectionStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CollectionStats> mapFromJson(dynamic json) {
    final map = <String, CollectionStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CollectionStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CollectionStats-objects as value to a dart map
  static Map<String, List<CollectionStats>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CollectionStats>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CollectionStats.listFromJson(
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

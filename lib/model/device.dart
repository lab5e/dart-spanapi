//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class Device {
  /// Returns a new [Device] instance.
  Device({
    this.deviceId,
    this.collectionId,
    this.tags = const {},
    this.firmware,
    this.config,
    this.metadata,
    this.lastGatewayId,
    this.lastTransport,
    this.lastReceived,
    this.lastPayload,
    this.enabled,
  });

  /// The device ID is assigned by the backend.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deviceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? collectionId;

  /// Tags are metadata for the device that you can set. These are just strings.
  Map<String, String> tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FirmwareMetadata? firmware;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DeviceConfig? config;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DeviceMetadata? metadata;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastGatewayId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MessageTransport? lastTransport;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastReceived;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastPayload;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Device &&
          other.deviceId == deviceId &&
          other.collectionId == collectionId &&
          other.tags == tags &&
          other.firmware == firmware &&
          other.config == config &&
          other.metadata == metadata &&
          other.lastGatewayId == lastGatewayId &&
          other.lastTransport == lastTransport &&
          other.lastReceived == lastReceived &&
          other.lastPayload == lastPayload &&
          other.enabled == enabled;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (deviceId == null ? 0 : deviceId!.hashCode) +
      (collectionId == null ? 0 : collectionId!.hashCode) +
      (tags.hashCode) +
      (firmware == null ? 0 : firmware!.hashCode) +
      (config == null ? 0 : config!.hashCode) +
      (metadata == null ? 0 : metadata!.hashCode) +
      (lastGatewayId == null ? 0 : lastGatewayId!.hashCode) +
      (lastTransport == null ? 0 : lastTransport!.hashCode) +
      (lastReceived == null ? 0 : lastReceived!.hashCode) +
      (lastPayload == null ? 0 : lastPayload!.hashCode) +
      (enabled == null ? 0 : enabled!.hashCode);

  @override
  String toString() =>
      'Device[deviceId=$deviceId, collectionId=$collectionId, tags=$tags, firmware=$firmware, config=$config, metadata=$metadata, lastGatewayId=$lastGatewayId, lastTransport=$lastTransport, lastReceived=$lastReceived, lastPayload=$lastPayload, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.deviceId != null) {
      json[r'deviceId'] = this.deviceId;
    } else {
      json[r'deviceId'] = null;
    }
    if (this.collectionId != null) {
      json[r'collectionId'] = this.collectionId;
    } else {
      json[r'collectionId'] = null;
    }
    json[r'tags'] = this.tags;
    if (this.firmware != null) {
      json[r'firmware'] = this.firmware;
    } else {
      json[r'firmware'] = null;
    }
    if (this.config != null) {
      json[r'config'] = this.config;
    } else {
      json[r'config'] = null;
    }
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    if (this.lastGatewayId != null) {
      json[r'lastGatewayId'] = this.lastGatewayId;
    } else {
      json[r'lastGatewayId'] = null;
    }
    if (this.lastTransport != null) {
      json[r'lastTransport'] = this.lastTransport;
    } else {
      json[r'lastTransport'] = null;
    }
    if (this.lastReceived != null) {
      json[r'lastReceived'] = this.lastReceived;
    } else {
      json[r'lastReceived'] = null;
    }
    if (this.lastPayload != null) {
      json[r'lastPayload'] = this.lastPayload;
    } else {
      json[r'lastPayload'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    return json;
  }

  /// Returns a new [Device] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Device? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Device[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Device[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Device(
        deviceId: mapValueOfType<String>(json, r'deviceId'),
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        tags: mapCastOfType<String, String>(json, r'tags') ?? const {},
        firmware: FirmwareMetadata.fromJson(json[r'firmware']),
        config: DeviceConfig.fromJson(json[r'config']),
        metadata: DeviceMetadata.fromJson(json[r'metadata']),
        lastGatewayId: mapValueOfType<String>(json, r'lastGatewayId'),
        lastTransport: MessageTransport.fromJson(json[r'lastTransport']),
        lastReceived: mapValueOfType<String>(json, r'lastReceived'),
        lastPayload: mapValueOfType<String>(json, r'lastPayload'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
      );
    }
    return null;
  }

  static List<Device>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Device>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Device.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Device> mapFromJson(dynamic json) {
    final map = <String, Device>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Device.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Device-objects as value to a dart map
  static Map<String, List<Device>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Device>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Device.listFromJson(
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

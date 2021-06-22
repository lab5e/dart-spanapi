//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class FirmwareMetadata {
  /// Returns a new [FirmwareMetadata] instance.
  FirmwareMetadata({
    this.currentFirmwareId,
    this.targetFirmwareId,
    this.firmwareVersion,
    this.serialNumber,
    this.modelNumber,
    this.manufacturer,
    this.state,
    this.stateMessage,
  });

  String currentFirmwareId;

  String targetFirmwareId;

  /// Last reported firmware version.
  String firmwareVersion;

  String serialNumber;

  String modelNumber;

  String manufacturer;

  /// State of the firmware.
  String state;

  String stateMessage;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FirmwareMetadata &&
          other.currentFirmwareId == currentFirmwareId &&
          other.targetFirmwareId == targetFirmwareId &&
          other.firmwareVersion == firmwareVersion &&
          other.serialNumber == serialNumber &&
          other.modelNumber == modelNumber &&
          other.manufacturer == manufacturer &&
          other.state == state &&
          other.stateMessage == stateMessage;

  @override
  int get hashCode =>
      (currentFirmwareId == null ? 0 : currentFirmwareId.hashCode) +
      (targetFirmwareId == null ? 0 : targetFirmwareId.hashCode) +
      (firmwareVersion == null ? 0 : firmwareVersion.hashCode) +
      (serialNumber == null ? 0 : serialNumber.hashCode) +
      (modelNumber == null ? 0 : modelNumber.hashCode) +
      (manufacturer == null ? 0 : manufacturer.hashCode) +
      (state == null ? 0 : state.hashCode) +
      (stateMessage == null ? 0 : stateMessage.hashCode);

  @override
  String toString() =>
      'FirmwareMetadata[currentFirmwareId=$currentFirmwareId, targetFirmwareId=$targetFirmwareId, firmwareVersion=$firmwareVersion, serialNumber=$serialNumber, modelNumber=$modelNumber, manufacturer=$manufacturer, state=$state, stateMessage=$stateMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (currentFirmwareId != null) {
      json[r'currentFirmwareId'] = currentFirmwareId;
    }
    if (targetFirmwareId != null) {
      json[r'targetFirmwareId'] = targetFirmwareId;
    }
    if (firmwareVersion != null) {
      json[r'firmwareVersion'] = firmwareVersion;
    }
    if (serialNumber != null) {
      json[r'serialNumber'] = serialNumber;
    }
    if (modelNumber != null) {
      json[r'modelNumber'] = modelNumber;
    }
    if (manufacturer != null) {
      json[r'manufacturer'] = manufacturer;
    }
    if (state != null) {
      json[r'state'] = state;
    }
    if (stateMessage != null) {
      json[r'stateMessage'] = stateMessage;
    }
    return json;
  }

  /// Returns a new [FirmwareMetadata] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FirmwareMetadata fromJson(Map<String, dynamic> json) => json == null
      ? null
      : FirmwareMetadata(
          currentFirmwareId: json[r'currentFirmwareId'],
          targetFirmwareId: json[r'targetFirmwareId'],
          firmwareVersion: json[r'firmwareVersion'],
          serialNumber: json[r'serialNumber'],
          modelNumber: json[r'modelNumber'],
          manufacturer: json[r'manufacturer'],
          state: json[r'state'],
          stateMessage: json[r'stateMessage'],
        );

  static List<FirmwareMetadata> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <FirmwareMetadata>[]
          : json
              .map((v) => FirmwareMetadata.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, FirmwareMetadata> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FirmwareMetadata>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = FirmwareMetadata.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FirmwareMetadata-objects as value to a dart map
  static Map<String, List<FirmwareMetadata>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<FirmwareMetadata>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FirmwareMetadata.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

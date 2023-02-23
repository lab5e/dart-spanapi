//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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
      // ignore: unnecessary_parenthesis
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
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FirmwareMetadata fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FirmwareMetadata(
        currentFirmwareId: mapValueOfType<String>(json, r'currentFirmwareId'),
        targetFirmwareId: mapValueOfType<String>(json, r'targetFirmwareId'),
        firmwareVersion: mapValueOfType<String>(json, r'firmwareVersion'),
        serialNumber: mapValueOfType<String>(json, r'serialNumber'),
        modelNumber: mapValueOfType<String>(json, r'modelNumber'),
        manufacturer: mapValueOfType<String>(json, r'manufacturer'),
        state: mapValueOfType<String>(json, r'state'),
        stateMessage: mapValueOfType<String>(json, r'stateMessage'),
      );
    }
    return null;
  }

  static List<FirmwareMetadata> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(FirmwareMetadata.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <FirmwareMetadata>[];

  static Map<String, FirmwareMetadata> mapFromJson(dynamic json) {
    final map = <String, FirmwareMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = FirmwareMetadata.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FirmwareMetadata-objects as value to a dart map
  static Map<String, List<FirmwareMetadata>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<FirmwareMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = FirmwareMetadata.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

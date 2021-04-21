//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class CollectionFirmware {
  /// Returns a new [CollectionFirmware] instance.
  CollectionFirmware({
    this.currentFirmwareId,
    this.targetFirmwareId,
    this.management,
  });

  /// The current firmware is the firmware that the devices are currently using.
  String currentFirmwareId;

  /// The target firmware is set to the desired firmware image for the devices in this collection. If the management is set to \"device\" this will only be used if the target firmware isn't set on the device itself.
  String targetFirmwareId;

  CollectionFirmwareFirmwareManagement management;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CollectionFirmware &&
          other.currentFirmwareId == currentFirmwareId &&
          other.targetFirmwareId == targetFirmwareId &&
          other.management == management;

  @override
  int get hashCode =>
      (currentFirmwareId == null ? 0 : currentFirmwareId.hashCode) +
      (targetFirmwareId == null ? 0 : targetFirmwareId.hashCode) +
      (management == null ? 0 : management.hashCode);

  @override
  String toString() =>
      'CollectionFirmware[currentFirmwareId=$currentFirmwareId, targetFirmwareId=$targetFirmwareId, management=$management]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (currentFirmwareId != null) {
      json[r'currentFirmwareId'] = currentFirmwareId;
    }
    if (targetFirmwareId != null) {
      json[r'targetFirmwareId'] = targetFirmwareId;
    }
    if (management != null) {
      json[r'management'] = management;
    }
    return json;
  }

  /// Returns a new [CollectionFirmware] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CollectionFirmware fromJson(Map<String, dynamic> json) => json == null
      ? null
      : CollectionFirmware(
          currentFirmwareId: json[r'currentFirmwareId'],
          targetFirmwareId: json[r'targetFirmwareId'],
          management: CollectionFirmwareFirmwareManagement.fromJson(
              json[r'management']),
        );

  static List<CollectionFirmware> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <CollectionFirmware>[]
          : json
              .map((v) => CollectionFirmware.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, CollectionFirmware> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, CollectionFirmware>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = CollectionFirmware.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CollectionFirmware-objects as value to a dart map
  static Map<String, List<CollectionFirmware>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<CollectionFirmware>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CollectionFirmware.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

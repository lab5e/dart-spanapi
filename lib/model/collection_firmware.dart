//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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

  FirmwareManagement management;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CollectionFirmware &&
     other.currentFirmwareId == currentFirmwareId &&
     other.targetFirmwareId == targetFirmwareId &&
     other.management == management;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (currentFirmwareId == null ? 0 : currentFirmwareId.hashCode) +
    (targetFirmwareId == null ? 0 : targetFirmwareId.hashCode) +
    (management == null ? 0 : management.hashCode);

  @override
  String toString() => 'CollectionFirmware[currentFirmwareId=$currentFirmwareId, targetFirmwareId=$targetFirmwareId, management=$management]';

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
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CollectionFirmware fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CollectionFirmware(
        currentFirmwareId: mapValueOfType<String>(json, r'currentFirmwareId'),
        targetFirmwareId: mapValueOfType<String>(json, r'targetFirmwareId'),
        management: FirmwareManagement.fromJson(json[r'management']),
      );
    }
    return null;
  }

  static List<CollectionFirmware> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CollectionFirmware.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CollectionFirmware>[];

  static Map<String, CollectionFirmware> mapFromJson(dynamic json) {
    final map = <String, CollectionFirmware>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CollectionFirmware.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CollectionFirmware-objects as value to a dart map
  static Map<String, List<CollectionFirmware>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CollectionFirmware>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CollectionFirmware.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


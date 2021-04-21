//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class DumpedDevice {
  /// Returns a new [DumpedDevice] instance.
  DumpedDevice({
    this.device,
  });

  Device device;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is DumpedDevice && other.device == device;

  @override
  int get hashCode => (device == null ? 0 : device.hashCode);

  @override
  String toString() => 'DumpedDevice[device=$device]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (device != null) {
      json[r'device'] = device;
    }
    return json;
  }

  /// Returns a new [DumpedDevice] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DumpedDevice fromJson(Map<String, dynamic> json) => json == null
      ? null
      : DumpedDevice(
          device: Device.fromJson(json[r'device']),
        );

  static List<DumpedDevice> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <DumpedDevice>[]
          : json
              .map((v) => DumpedDevice.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, DumpedDevice> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DumpedDevice>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = DumpedDevice.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of DumpedDevice-objects as value to a dart map
  static Map<String, List<DumpedDevice>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<DumpedDevice>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = DumpedDevice.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

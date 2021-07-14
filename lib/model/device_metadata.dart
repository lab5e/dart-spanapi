//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class DeviceMetadata {
  /// Returns a new [DeviceMetadata] instance.
  DeviceMetadata({
    this.simOperator,
  });

  NetworkOperator simOperator;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeviceMetadata && other.simOperator == simOperator;

  @override
  int get hashCode => (simOperator == null ? 0 : simOperator.hashCode);

  @override
  String toString() => 'DeviceMetadata[simOperator=$simOperator]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (simOperator != null) {
      json[r'simOperator'] = simOperator;
    }
    return json;
  }

  /// Returns a new [DeviceMetadata] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DeviceMetadata fromJson(Map<String, dynamic> json) => json == null
      ? null
      : DeviceMetadata(
          simOperator: NetworkOperator.fromJson(json[r'simOperator']),
        );

  static List<DeviceMetadata> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <DeviceMetadata>[]
          : json
              .map((v) => DeviceMetadata.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, DeviceMetadata> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DeviceMetadata>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = DeviceMetadata.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of DeviceMetadata-objects as value to a dart map
  static Map<String, List<DeviceMetadata>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<DeviceMetadata>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = DeviceMetadata.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

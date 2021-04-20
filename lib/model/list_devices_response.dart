//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class ListDevicesResponse {
  /// Returns a new [ListDevicesResponse] instance.
  ListDevicesResponse({
    this.devices = const [],
  });

  List<Device> devices;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListDevicesResponse &&
     other.devices == devices;

  @override
  int get hashCode =>
    (devices == null ? 0 : devices.hashCode);

  @override
  String toString() => 'ListDevicesResponse[devices=$devices]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (devices != null) {
      json[r'devices'] = devices;
    }
    return json;
  }

  /// Returns a new [ListDevicesResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ListDevicesResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ListDevicesResponse(
        devices: Device.listFromJson(json[r'devices']),
    );

  static List<ListDevicesResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ListDevicesResponse>[]
      : json.map((v) => ListDevicesResponse.fromJson(v)).toList(growable: true == growable);

  static Map<String, ListDevicesResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ListDevicesResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ListDevicesResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ListDevicesResponse-objects as value to a dart map
  static Map<String, List<ListDevicesResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListDevicesResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ListDevicesResponse.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


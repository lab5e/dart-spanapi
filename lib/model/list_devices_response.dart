//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class ListDevicesResponse {
  /// Returns a new [ListDevicesResponse] instance.
  ListDevicesResponse({
    this.devices = const [],
  });

  List<Device> devices;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListDevicesResponse && other.devices == devices;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
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
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListDevicesResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ListDevicesResponse(
        devices: Device.listFromJson(json[r'devices']),
      );
    }
    return null;
  }

  static List<ListDevicesResponse> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(ListDevicesResponse.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <ListDevicesResponse>[];

  static Map<String, ListDevicesResponse> mapFromJson(dynamic json) {
    final map = <String, ListDevicesResponse>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = ListDevicesResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListDevicesResponse-objects as value to a dart map
  static Map<String, List<ListDevicesResponse>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<ListDevicesResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = ListDevicesResponse.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

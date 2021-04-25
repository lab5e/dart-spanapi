//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class ListFirmwareResponse {
  /// Returns a new [ListFirmwareResponse] instance.
  ListFirmwareResponse({
    this.images = const [],
  });

  List<Firmware> images;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListFirmwareResponse && other.images == images;

  @override
  int get hashCode => (images == null ? 0 : images.hashCode);

  @override
  String toString() => 'ListFirmwareResponse[images=$images]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (images != null) {
      json[r'images'] = images;
    }
    return json;
  }

  /// Returns a new [ListFirmwareResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ListFirmwareResponse fromJson(Map<String, dynamic> json) =>
      json == null
          ? null
          : ListFirmwareResponse(
              images: Firmware.listFromJson(json[r'images']),
            );

  static List<ListFirmwareResponse> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <ListFirmwareResponse>[]
          : json
              .map((v) => ListFirmwareResponse.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, ListFirmwareResponse> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, ListFirmwareResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) =>
          map[key] = ListFirmwareResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ListFirmwareResponse-objects as value to a dart map
  static Map<String, List<ListFirmwareResponse>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<ListFirmwareResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ListFirmwareResponse.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

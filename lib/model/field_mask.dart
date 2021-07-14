//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class FieldMask {
  /// Returns a new [FieldMask] instance.
  FieldMask({
    this.imsi,
    this.imei,
    this.msisdn,
    this.location,
  });

  bool imsi;

  bool imei;

  bool msisdn;

  bool location;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FieldMask &&
          other.imsi == imsi &&
          other.imei == imei &&
          other.msisdn == msisdn &&
          other.location == location;

  @override
  int get hashCode =>
      (imsi == null ? 0 : imsi.hashCode) +
      (imei == null ? 0 : imei.hashCode) +
      (msisdn == null ? 0 : msisdn.hashCode) +
      (location == null ? 0 : location.hashCode);

  @override
  String toString() =>
      'FieldMask[imsi=$imsi, imei=$imei, msisdn=$msisdn, location=$location]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (imsi != null) {
      json[r'imsi'] = imsi;
    }
    if (imei != null) {
      json[r'imei'] = imei;
    }
    if (msisdn != null) {
      json[r'msisdn'] = msisdn;
    }
    if (location != null) {
      json[r'location'] = location;
    }
    return json;
  }

  /// Returns a new [FieldMask] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FieldMask fromJson(Map<String, dynamic> json) => json == null
      ? null
      : FieldMask(
          imsi: json[r'imsi'],
          imei: json[r'imei'],
          msisdn: json[r'msisdn'],
          location: json[r'location'],
        );

  static List<FieldMask> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <FieldMask>[]
          : json
              .map((v) => FieldMask.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, FieldMask> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FieldMask>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = FieldMask.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FieldMask-objects as value to a dart map
  static Map<String, List<FieldMask>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<FieldMask>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FieldMask.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

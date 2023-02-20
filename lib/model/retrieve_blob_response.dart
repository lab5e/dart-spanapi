//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class RetrieveBlobResponse {
  /// Returns a new [RetrieveBlobResponse] instance.
  RetrieveBlobResponse({
    this.contentType,
    this.size,
    this.data,
  });

  String contentType;

  int size;

  String data;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RetrieveBlobResponse &&
          other.contentType == contentType &&
          other.size == size &&
          other.data == data;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (contentType == null ? 0 : contentType.hashCode) +
      (size == null ? 0 : size.hashCode) +
      (data == null ? 0 : data.hashCode);

  @override
  String toString() =>
      'RetrieveBlobResponse[contentType=$contentType, size=$size, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (contentType != null) {
      json[r'contentType'] = contentType;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (data != null) {
      json[r'data'] = data;
    }
    return json;
  }

  /// Returns a new [RetrieveBlobResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetrieveBlobResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RetrieveBlobResponse(
        contentType: mapValueOfType<String>(json, r'contentType'),
        size: mapValueOfType<int>(json, r'size'),
        data: mapValueOfType<String>(json, r'data'),
      );
    }
    return null;
  }

  static List<RetrieveBlobResponse> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(RetrieveBlobResponse.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <RetrieveBlobResponse>[];

  static Map<String, RetrieveBlobResponse> mapFromJson(dynamic json) {
    final map = <String, RetrieveBlobResponse>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = RetrieveBlobResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RetrieveBlobResponse-objects as value to a dart map
  static Map<String, List<RetrieveBlobResponse>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<RetrieveBlobResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = RetrieveBlobResponse.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

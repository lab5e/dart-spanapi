//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class UpdateOutputRequest {
  /// Returns a new [UpdateOutputRequest] instance.
  UpdateOutputRequest({
    this.collectionId,
    this.type,
    this.config,
    this.enabled,
    this.tags = const {},
  });

  String collectionId;

  OutputType type;

  OutputConfig config;

  bool enabled;

  Map<String, String> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateOutputRequest &&
     other.collectionId == collectionId &&
     other.type == type &&
     other.config == config &&
     other.enabled == enabled &&
     other.tags == tags;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (collectionId == null ? 0 : collectionId.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (config == null ? 0 : config.hashCode) +
    (enabled == null ? 0 : enabled.hashCode) +
    (tags == null ? 0 : tags.hashCode);

  @override
  String toString() => 'UpdateOutputRequest[collectionId=$collectionId, type=$type, config=$config, enabled=$enabled, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (collectionId != null) {
      json[r'collectionId'] = collectionId;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (config != null) {
      json[r'config'] = config;
    }
    if (enabled != null) {
      json[r'enabled'] = enabled;
    }
    if (tags != null) {
      json[r'tags'] = tags;
    }
    return json;
  }

  /// Returns a new [UpdateOutputRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateOutputRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return UpdateOutputRequest(
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        type: OutputType.fromJson(json[r'type']),
        config: OutputConfig.fromJson(json[r'config']),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        tags: mapCastOfType<String, String>(json, r'tags'),
      );
    }
    return null;
  }

  static List<UpdateOutputRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(UpdateOutputRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <UpdateOutputRequest>[];

  static Map<String, UpdateOutputRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateOutputRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = UpdateOutputRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UpdateOutputRequest-objects as value to a dart map
  static Map<String, List<UpdateOutputRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UpdateOutputRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = UpdateOutputRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


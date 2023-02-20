//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class InlineObject1 {
  /// Returns a new [InlineObject1] instance.
  InlineObject1({
    this.name,
    this.collectionId,
    this.type,
    this.config,
    this.tags = const {},
  });

  String name;

  String collectionId;

  GatewayType type;

  GatewayConfig config;

  Map<String, String> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineObject1 &&
     other.name == name &&
     other.collectionId == collectionId &&
     other.type == type &&
     other.config == config &&
     other.tags == tags;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (name == null ? 0 : name.hashCode) +
    (collectionId == null ? 0 : collectionId.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (config == null ? 0 : config.hashCode) +
    (tags == null ? 0 : tags.hashCode);

  @override
  String toString() => 'InlineObject1[name=$name, collectionId=$collectionId, type=$type, config=$config, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (collectionId != null) {
      json[r'collectionId'] = collectionId;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (config != null) {
      json[r'config'] = config;
    }
    if (tags != null) {
      json[r'tags'] = tags;
    }
    return json;
  }

  /// Returns a new [InlineObject1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineObject1 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineObject1(
        name: mapValueOfType<String>(json, r'name'),
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        type: GatewayType.fromJson(json[r'type']),
        config: GatewayConfig.fromJson(json[r'config']),
        tags: mapCastOfType<String, String>(json, r'tags'),
      );
    }
    return null;
  }

  static List<InlineObject1> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineObject1.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineObject1>[];

  static Map<String, InlineObject1> mapFromJson(dynamic json) {
    final map = <String, InlineObject1>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineObject1.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject1-objects as value to a dart map
  static Map<String, List<InlineObject1>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineObject1>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineObject1.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


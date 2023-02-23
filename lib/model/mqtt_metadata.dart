//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class MQTTMetadata {
  /// Returns a new [MQTTMetadata] instance.
  MQTTMetadata({
    this.topic,
  });

  String topic;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MQTTMetadata && other.topic == topic;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (topic == null ? 0 : topic.hashCode);

  @override
  String toString() => 'MQTTMetadata[topic=$topic]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (topic != null) {
      json[r'topic'] = topic;
    }
    return json;
  }

  /// Returns a new [MQTTMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MQTTMetadata fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MQTTMetadata(
        topic: mapValueOfType<String>(json, r'topic'),
      );
    }
    return null;
  }

  static List<MQTTMetadata> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(MQTTMetadata.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <MQTTMetadata>[];

  static Map<String, MQTTMetadata> mapFromJson(dynamic json) {
    final map = <String, MQTTMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = MQTTMetadata.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MQTTMetadata-objects as value to a dart map
  static Map<String, List<MQTTMetadata>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<MQTTMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = MQTTMetadata.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

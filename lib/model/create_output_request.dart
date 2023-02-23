//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class CreateOutputRequest {
  /// Returns a new [CreateOutputRequest] instance.
  CreateOutputRequest({
    this.type,
    this.config,
    this.enabled,
    this.tags = const {},
  });

  OutputType type;

  OutputConfig config;

  bool enabled;

  Map<String, String> tags;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateOutputRequest &&
          other.type == type &&
          other.config == config &&
          other.enabled == enabled &&
          other.tags == tags;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (type == null ? 0 : type.hashCode) +
      (config == null ? 0 : config.hashCode) +
      (enabled == null ? 0 : enabled.hashCode) +
      (tags == null ? 0 : tags.hashCode);

  @override
  String toString() =>
      'CreateOutputRequest[type=$type, config=$config, enabled=$enabled, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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

  /// Returns a new [CreateOutputRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateOutputRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CreateOutputRequest(
        type: OutputType.fromJson(json[r'type']),
        config: OutputConfig.fromJson(json[r'config']),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        tags: mapCastOfType<String, String>(json, r'tags'),
      );
    }
    return null;
  }

  static List<CreateOutputRequest> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(CreateOutputRequest.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <CreateOutputRequest>[];

  static Map<String, CreateOutputRequest> mapFromJson(dynamic json) {
    final map = <String, CreateOutputRequest>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = CreateOutputRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateOutputRequest-objects as value to a dart map
  static Map<String, List<CreateOutputRequest>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<CreateOutputRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = CreateOutputRequest.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

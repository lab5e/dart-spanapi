//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class Output {
  /// Returns a new [Output] instance.
  Output({
    this.outputId,
    this.collectionId,
    this.type,
    this.config,
    this.enabled,
    this.tags = const {},
  });

  String outputId;

  String collectionId;

  OutputType type;

  OutputConfig config;

  bool enabled;

  Map<String, String> tags;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Output &&
          other.outputId == outputId &&
          other.collectionId == collectionId &&
          other.type == type &&
          other.config == config &&
          other.enabled == enabled &&
          other.tags == tags;

  @override
  int get hashCode =>
      (outputId == null ? 0 : outputId.hashCode) +
      (collectionId == null ? 0 : collectionId.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (config == null ? 0 : config.hashCode) +
      (enabled == null ? 0 : enabled.hashCode) +
      (tags == null ? 0 : tags.hashCode);

  @override
  String toString() =>
      'Output[outputId=$outputId, collectionId=$collectionId, type=$type, config=$config, enabled=$enabled, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (outputId != null) {
      json[r'outputId'] = outputId;
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
    if (enabled != null) {
      json[r'enabled'] = enabled;
    }
    if (tags != null) {
      json[r'tags'] = tags;
    }
    return json;
  }

  /// Returns a new [Output] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Output fromJson(Map<String, dynamic> json) => json == null
      ? null
      : Output(
          outputId: json[r'outputId'],
          collectionId: json[r'collectionId'],
          type: OutputType.fromJson(json[r'type']),
          config: OutputConfig.fromJson(json[r'config']),
          enabled: json[r'enabled'],
          tags: json[r'tags'] == null
              ? null
              : (json[r'tags'] as Map).cast<String, String>(),
        );

  static List<Output> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <Output>[]
          : json
              .map((v) => Output.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, Output> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Output>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Output.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Output-objects as value to a dart map
  static Map<String, List<Output>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<Output>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Output.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

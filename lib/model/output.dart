//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? outputId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? collectionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OutputType? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OutputConfig? config;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

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
      // ignore: unnecessary_parenthesis
      (outputId == null ? 0 : outputId!.hashCode) +
      (collectionId == null ? 0 : collectionId!.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (config == null ? 0 : config!.hashCode) +
      (enabled == null ? 0 : enabled!.hashCode) +
      (tags.hashCode);

  @override
  String toString() =>
      'Output[outputId=$outputId, collectionId=$collectionId, type=$type, config=$config, enabled=$enabled, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.outputId != null) {
      json[r'outputId'] = this.outputId;
    } else {
      json[r'outputId'] = null;
    }
    if (this.collectionId != null) {
      json[r'collectionId'] = this.collectionId;
    } else {
      json[r'collectionId'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.config != null) {
      json[r'config'] = this.config;
    } else {
      json[r'config'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    json[r'tags'] = this.tags;
    return json;
  }

  /// Returns a new [Output] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Output? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Output[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Output[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Output(
        outputId: mapValueOfType<String>(json, r'outputId'),
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        type: OutputType.fromJson(json[r'type']),
        config: OutputConfig.fromJson(json[r'config']),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        tags: mapCastOfType<String, String>(json, r'tags') ?? const {},
      );
    }
    return null;
  }

  static List<Output>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Output>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Output.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Output> mapFromJson(dynamic json) {
    final map = <String, Output>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Output.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Output-objects as value to a dart map
  static Map<String, List<Output>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Output>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Output.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}

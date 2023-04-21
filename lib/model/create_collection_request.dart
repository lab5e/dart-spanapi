//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class CreateCollectionRequest {
  /// Returns a new [CreateCollectionRequest] instance.
  CreateCollectionRequest({
    this.teamId,
    this.firmware,
    this.tags = const {},
  });

  /// The team ID that owns the collection. This field is required. When you create new collections the default is to use your private team ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? teamId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CollectionFirmware? firmware;

  /// Tags for the collection. Tags are metadata fields that you can assign to the collection.
  Map<String, String> tags;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateCollectionRequest &&
          other.teamId == teamId &&
          other.firmware == firmware &&
          other.tags == tags;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (teamId == null ? 0 : teamId!.hashCode) +
      (firmware == null ? 0 : firmware!.hashCode) +
      (tags.hashCode);

  @override
  String toString() =>
      'CreateCollectionRequest[teamId=$teamId, firmware=$firmware, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.teamId != null) {
      json[r'teamId'] = this.teamId;
    } else {
      json[r'teamId'] = null;
    }
    if (this.firmware != null) {
      json[r'firmware'] = this.firmware;
    } else {
      json[r'firmware'] = null;
    }
    json[r'tags'] = this.tags;
    return json;
  }

  /// Returns a new [CreateCollectionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateCollectionRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CreateCollectionRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CreateCollectionRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateCollectionRequest(
        teamId: mapValueOfType<String>(json, r'teamId'),
        firmware: CollectionFirmware.fromJson(json[r'firmware']),
        tags: mapCastOfType<String, String>(json, r'tags') ?? const {},
      );
    }
    return null;
  }

  static List<CreateCollectionRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CreateCollectionRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateCollectionRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateCollectionRequest> mapFromJson(dynamic json) {
    final map = <String, CreateCollectionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateCollectionRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateCollectionRequest-objects as value to a dart map
  static Map<String, List<CreateCollectionRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CreateCollectionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateCollectionRequest.listFromJson(
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

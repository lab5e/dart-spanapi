//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class Collection {
  /// Returns a new [Collection] instance.
  Collection({
    this.collectionId,
    this.teamId,
    this.firmware,
    this.tags = const {},
    this.upstreamTimestamps = const [],
    this.downstreamTimestamps = const [],
  });

  /// The ID of the collection. This is assigned by the backend.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? collectionId;

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

  List<String> upstreamTimestamps;

  List<String> downstreamTimestamps;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Collection &&
          other.collectionId == collectionId &&
          other.teamId == teamId &&
          other.firmware == firmware &&
          other.tags == tags &&
          other.upstreamTimestamps == upstreamTimestamps &&
          other.downstreamTimestamps == downstreamTimestamps;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (collectionId == null ? 0 : collectionId!.hashCode) +
      (teamId == null ? 0 : teamId!.hashCode) +
      (firmware == null ? 0 : firmware!.hashCode) +
      (tags.hashCode) +
      (upstreamTimestamps.hashCode) +
      (downstreamTimestamps.hashCode);

  @override
  String toString() =>
      'Collection[collectionId=$collectionId, teamId=$teamId, firmware=$firmware, tags=$tags, upstreamTimestamps=$upstreamTimestamps, downstreamTimestamps=$downstreamTimestamps]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.collectionId != null) {
      json[r'collectionId'] = this.collectionId;
    } else {
      json[r'collectionId'] = null;
    }
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
    json[r'upstreamTimestamps'] = this.upstreamTimestamps;
    json[r'downstreamTimestamps'] = this.downstreamTimestamps;
    return json;
  }

  /// Returns a new [Collection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Collection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Collection[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Collection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Collection(
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        teamId: mapValueOfType<String>(json, r'teamId'),
        firmware: CollectionFirmware.fromJson(json[r'firmware']),
        tags: mapCastOfType<String, String>(json, r'tags') ?? const {},
        upstreamTimestamps: json[r'upstreamTimestamps'] is List
            ? (json[r'upstreamTimestamps'] as List).cast<String>()
            : const [],
        downstreamTimestamps: json[r'downstreamTimestamps'] is List
            ? (json[r'downstreamTimestamps'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<Collection>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Collection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Collection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Collection> mapFromJson(dynamic json) {
    final map = <String, Collection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Collection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Collection-objects as value to a dart map
  static Map<String, List<Collection>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Collection>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Collection.listFromJson(
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

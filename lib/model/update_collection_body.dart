//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class UpdateCollectionBody {
  /// Returns a new [UpdateCollectionBody] instance.
  UpdateCollectionBody({
    this.teamId,
    this.firmware,
    this.tags = const {},
    this.enabled,
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

  /// Enabled flag for the collection. A collection may be disabled or enabled to save time.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateCollectionBody &&
          other.teamId == teamId &&
          other.firmware == firmware &&
          other.tags == tags &&
          other.enabled == enabled;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (teamId == null ? 0 : teamId!.hashCode) +
      (firmware == null ? 0 : firmware!.hashCode) +
      (tags.hashCode) +
      (enabled == null ? 0 : enabled!.hashCode);

  @override
  String toString() =>
      'UpdateCollectionBody[teamId=$teamId, firmware=$firmware, tags=$tags, enabled=$enabled]';

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
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateCollectionBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateCollectionBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "UpdateCollectionBody[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "UpdateCollectionBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateCollectionBody(
        teamId: mapValueOfType<String>(json, r'teamId'),
        firmware: CollectionFirmware.fromJson(json[r'firmware']),
        tags: mapCastOfType<String, String>(json, r'tags') ?? const {},
        enabled: mapValueOfType<bool>(json, r'enabled'),
      );
    }
    return null;
  }

  static List<UpdateCollectionBody>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <UpdateCollectionBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateCollectionBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateCollectionBody> mapFromJson(dynamic json) {
    final map = <String, UpdateCollectionBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateCollectionBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateCollectionBody-objects as value to a dart map
  static Map<String, List<UpdateCollectionBody>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<UpdateCollectionBody>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateCollectionBody.listFromJson(
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

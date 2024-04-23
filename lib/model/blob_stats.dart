//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class BlobStats {
  /// Returns a new [BlobStats] instance.
  BlobStats({
    this.blobBytes,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? blobBytes;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BlobStats && other.blobBytes == blobBytes;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (blobBytes == null ? 0 : blobBytes!.hashCode);

  @override
  String toString() => 'BlobStats[blobBytes=$blobBytes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.blobBytes != null) {
      json[r'blobBytes'] = this.blobBytes;
    } else {
      json[r'blobBytes'] = null;
    }
    return json;
  }

  /// Returns a new [BlobStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BlobStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "BlobStats[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "BlobStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BlobStats(
        blobBytes: mapValueOfType<String>(json, r'blobBytes'),
      );
    }
    return null;
  }

  static List<BlobStats>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BlobStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BlobStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BlobStats> mapFromJson(dynamic json) {
    final map = <String, BlobStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BlobStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BlobStats-objects as value to a dart map
  static Map<String, List<BlobStats>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<BlobStats>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BlobStats.listFromJson(
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

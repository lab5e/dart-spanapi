//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class ListBlobResponse {
  /// Returns a new [ListBlobResponse] instance.
  ListBlobResponse({
    this.blobs = const [],
  });

  List<Blob> blobs;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListBlobResponse && other.blobs == blobs;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (blobs.hashCode);

  @override
  String toString() => 'ListBlobResponse[blobs=$blobs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'blobs'] = this.blobs;
    return json;
  }

  /// Returns a new [ListBlobResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListBlobResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ListBlobResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ListBlobResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListBlobResponse(
        blobs: Blob.listFromJson(json[r'blobs']) ?? const [],
      );
    }
    return null;
  }

  static List<ListBlobResponse>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ListBlobResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListBlobResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListBlobResponse> mapFromJson(dynamic json) {
    final map = <String, ListBlobResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListBlobResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListBlobResponse-objects as value to a dart map
  static Map<String, List<ListBlobResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ListBlobResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListBlobResponse.listFromJson(
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

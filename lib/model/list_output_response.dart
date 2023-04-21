//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class ListOutputResponse {
  /// Returns a new [ListOutputResponse] instance.
  ListOutputResponse({
    this.collectionId,
    this.outputs = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? collectionId;

  List<Output> outputs;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListOutputResponse &&
          other.collectionId == collectionId &&
          other.outputs == outputs;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (collectionId == null ? 0 : collectionId!.hashCode) + (outputs.hashCode);

  @override
  String toString() =>
      'ListOutputResponse[collectionId=$collectionId, outputs=$outputs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.collectionId != null) {
      json[r'collectionId'] = this.collectionId;
    } else {
      json[r'collectionId'] = null;
    }
    json[r'outputs'] = this.outputs;
    return json;
  }

  /// Returns a new [ListOutputResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListOutputResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ListOutputResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ListOutputResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListOutputResponse(
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        outputs: Output.listFromJson(json[r'outputs']) ?? const [],
      );
    }
    return null;
  }

  static List<ListOutputResponse>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ListOutputResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListOutputResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListOutputResponse> mapFromJson(dynamic json) {
    final map = <String, ListOutputResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListOutputResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListOutputResponse-objects as value to a dart map
  static Map<String, List<ListOutputResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ListOutputResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListOutputResponse.listFromJson(
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

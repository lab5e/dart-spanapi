//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class ListImageStatesResponse {
  /// Returns a new [ListImageStatesResponse] instance.
  ListImageStatesResponse({
    this.states = const [],
  });

  List<DeviceImageState> states;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListImageStatesResponse && other.states == states;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (states.hashCode);

  @override
  String toString() => 'ListImageStatesResponse[states=$states]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'states'] = this.states;
    return json;
  }

  /// Returns a new [ListImageStatesResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListImageStatesResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ListImageStatesResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ListImageStatesResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListImageStatesResponse(
        states: DeviceImageState.listFromJson(json[r'states']) ?? const [],
      );
    }
    return null;
  }

  static List<ListImageStatesResponse>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ListImageStatesResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListImageStatesResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListImageStatesResponse> mapFromJson(dynamic json) {
    final map = <String, ListImageStatesResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListImageStatesResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListImageStatesResponse-objects as value to a dart map
  static Map<String, List<ListImageStatesResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ListImageStatesResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListImageStatesResponse.listFromJson(
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

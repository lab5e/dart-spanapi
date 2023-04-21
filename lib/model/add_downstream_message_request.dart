//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class AddDownstreamMessageRequest {
  /// Returns a new [AddDownstreamMessageRequest] instance.
  AddDownstreamMessageRequest({
    this.payload,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? payload;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddDownstreamMessageRequest && other.payload == payload;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (payload == null ? 0 : payload!.hashCode);

  @override
  String toString() => 'AddDownstreamMessageRequest[payload=$payload]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.payload != null) {
      json[r'payload'] = this.payload;
    } else {
      json[r'payload'] = null;
    }
    return json;
  }

  /// Returns a new [AddDownstreamMessageRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddDownstreamMessageRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AddDownstreamMessageRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AddDownstreamMessageRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AddDownstreamMessageRequest(
        payload: mapValueOfType<String>(json, r'payload'),
      );
    }
    return null;
  }

  static List<AddDownstreamMessageRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AddDownstreamMessageRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddDownstreamMessageRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddDownstreamMessageRequest> mapFromJson(dynamic json) {
    final map = <String, AddDownstreamMessageRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddDownstreamMessageRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddDownstreamMessageRequest-objects as value to a dart map
  static Map<String, List<AddDownstreamMessageRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AddDownstreamMessageRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddDownstreamMessageRequest.listFromJson(
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

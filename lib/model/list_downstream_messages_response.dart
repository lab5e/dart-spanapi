//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class ListDownstreamMessagesResponse {
  /// Returns a new [ListDownstreamMessagesResponse] instance.
  ListDownstreamMessagesResponse({
    this.messages = const [],
  });

  List<MessageDownstream> messages;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListDownstreamMessagesResponse && other.messages == messages;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (messages.hashCode);

  @override
  String toString() => 'ListDownstreamMessagesResponse[messages=$messages]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'messages'] = this.messages;
    return json;
  }

  /// Returns a new [ListDownstreamMessagesResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListDownstreamMessagesResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ListDownstreamMessagesResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ListDownstreamMessagesResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListDownstreamMessagesResponse(
        messages: MessageDownstream.listFromJson(json[r'messages']) ?? const [],
      );
    }
    return null;
  }

  static List<ListDownstreamMessagesResponse>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ListDownstreamMessagesResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListDownstreamMessagesResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListDownstreamMessagesResponse> mapFromJson(dynamic json) {
    final map = <String, ListDownstreamMessagesResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListDownstreamMessagesResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListDownstreamMessagesResponse-objects as value to a dart map
  static Map<String, List<ListDownstreamMessagesResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ListDownstreamMessagesResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListDownstreamMessagesResponse.listFromJson(
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

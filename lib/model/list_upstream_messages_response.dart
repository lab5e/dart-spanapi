//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class ListUpstreamMessagesResponse {
  /// Returns a new [ListUpstreamMessagesResponse] instance.
  ListUpstreamMessagesResponse({
    this.messages = const [],
  });

  List<MessageUpstream> messages;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListUpstreamMessagesResponse && other.messages == messages;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (messages.hashCode);

  @override
  String toString() => 'ListUpstreamMessagesResponse[messages=$messages]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'messages'] = this.messages;
    return json;
  }

  /// Returns a new [ListUpstreamMessagesResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListUpstreamMessagesResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ListUpstreamMessagesResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ListUpstreamMessagesResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListUpstreamMessagesResponse(
        messages: MessageUpstream.listFromJson(json[r'messages']) ?? const [],
      );
    }
    return null;
  }

  static List<ListUpstreamMessagesResponse>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ListUpstreamMessagesResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListUpstreamMessagesResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListUpstreamMessagesResponse> mapFromJson(dynamic json) {
    final map = <String, ListUpstreamMessagesResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListUpstreamMessagesResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListUpstreamMessagesResponse-objects as value to a dart map
  static Map<String, List<ListUpstreamMessagesResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ListUpstreamMessagesResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListUpstreamMessagesResponse.listFromJson(
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

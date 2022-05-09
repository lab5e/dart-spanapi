//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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
      (messages == null ? 0 : messages.hashCode);

  @override
  String toString() => 'ListUpstreamMessagesResponse[messages=$messages]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (messages != null) {
      json[r'messages'] = messages;
    }
    return json;
  }

  /// Returns a new [ListUpstreamMessagesResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListUpstreamMessagesResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ListUpstreamMessagesResponse(
        messages: MessageUpstream.listFromJson(json[r'messages']),
      );
    }
    return null;
  }

  static List<ListUpstreamMessagesResponse> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(ListUpstreamMessagesResponse.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <ListUpstreamMessagesResponse>[];

  static Map<String, ListUpstreamMessagesResponse> mapFromJson(dynamic json) {
    final map = <String, ListUpstreamMessagesResponse>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = ListUpstreamMessagesResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListUpstreamMessagesResponse-objects as value to a dart map
  static Map<String, List<ListUpstreamMessagesResponse>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<ListUpstreamMessagesResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = ListUpstreamMessagesResponse.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

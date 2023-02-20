//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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
  bool operator ==(Object other) => identical(this, other) || other is ListDownstreamMessagesResponse &&
     other.messages == messages;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (messages == null ? 0 : messages.hashCode);

  @override
  String toString() => 'ListDownstreamMessagesResponse[messages=$messages]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (messages != null) {
      json[r'messages'] = messages;
    }
    return json;
  }

  /// Returns a new [ListDownstreamMessagesResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListDownstreamMessagesResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ListDownstreamMessagesResponse(
        messages: MessageDownstream.listFromJson(json[r'messages']),
      );
    }
    return null;
  }

  static List<ListDownstreamMessagesResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ListDownstreamMessagesResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ListDownstreamMessagesResponse>[];

  static Map<String, ListDownstreamMessagesResponse> mapFromJson(dynamic json) {
    final map = <String, ListDownstreamMessagesResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ListDownstreamMessagesResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListDownstreamMessagesResponse-objects as value to a dart map
  static Map<String, List<ListDownstreamMessagesResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListDownstreamMessagesResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ListDownstreamMessagesResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


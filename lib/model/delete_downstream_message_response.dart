//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class DeleteDownstreamMessageResponse {
  /// Returns a new [DeleteDownstreamMessageResponse] instance.
  DeleteDownstreamMessageResponse({
    this.messageId,
  });

  String messageId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeleteDownstreamMessageResponse && other.messageId == messageId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (messageId == null ? 0 : messageId.hashCode);

  @override
  String toString() => 'DeleteDownstreamMessageResponse[messageId=$messageId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (messageId != null) {
      json[r'messageId'] = messageId;
    }
    return json;
  }

  /// Returns a new [DeleteDownstreamMessageResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeleteDownstreamMessageResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return DeleteDownstreamMessageResponse(
        messageId: mapValueOfType<String>(json, r'messageId'),
      );
    }
    return null;
  }

  static List<DeleteDownstreamMessageResponse> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(DeleteDownstreamMessageResponse.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <DeleteDownstreamMessageResponse>[];

  static Map<String, DeleteDownstreamMessageResponse> mapFromJson(
      dynamic json) {
    final map = <String, DeleteDownstreamMessageResponse>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = DeleteDownstreamMessageResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DeleteDownstreamMessageResponse-objects as value to a dart map
  static Map<String, List<DeleteDownstreamMessageResponse>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<DeleteDownstreamMessageResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = DeleteDownstreamMessageResponse.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

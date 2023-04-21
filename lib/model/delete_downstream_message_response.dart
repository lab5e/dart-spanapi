//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? messageId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeleteDownstreamMessageResponse && other.messageId == messageId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (messageId == null ? 0 : messageId!.hashCode);

  @override
  String toString() => 'DeleteDownstreamMessageResponse[messageId=$messageId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.messageId != null) {
      json[r'messageId'] = this.messageId;
    } else {
      json[r'messageId'] = null;
    }
    return json;
  }

  /// Returns a new [DeleteDownstreamMessageResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeleteDownstreamMessageResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DeleteDownstreamMessageResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DeleteDownstreamMessageResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeleteDownstreamMessageResponse(
        messageId: mapValueOfType<String>(json, r'messageId'),
      );
    }
    return null;
  }

  static List<DeleteDownstreamMessageResponse>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DeleteDownstreamMessageResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeleteDownstreamMessageResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeleteDownstreamMessageResponse> mapFromJson(
      dynamic json) {
    final map = <String, DeleteDownstreamMessageResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteDownstreamMessageResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeleteDownstreamMessageResponse-objects as value to a dart map
  static Map<String, List<DeleteDownstreamMessageResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DeleteDownstreamMessageResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteDownstreamMessageResponse.listFromJson(
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

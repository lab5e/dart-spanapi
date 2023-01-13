//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class Status {
  /// Returns a new [Status] instance.
  Status({
    this.code,
    this.message,
    this.details = const [],
  });

  int code;

  String message;

  List<Any> details;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Status &&
          other.code == code &&
          other.message == message &&
          other.details == details;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (code == null ? 0 : code.hashCode) +
      (message == null ? 0 : message.hashCode) +
      (details == null ? 0 : details.hashCode);

  @override
  String toString() => 'Status[code=$code, message=$message, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json[r'code'] = code;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (details != null) {
      json[r'details'] = details;
    }
    return json;
  }

  /// Returns a new [Status] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Status fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Status(
        code: mapValueOfType<int>(json, r'code'),
        message: mapValueOfType<String>(json, r'message'),
        details: Any.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<Status> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(Status.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <Status>[];

  static Map<String, Status> mapFromJson(dynamic json) {
    final map = <String, Status>{};
    if (json is Map && json.isNotEmpty) {
      json
          .cast<String, dynamic>()
          .forEach((key, dynamic value) => map[key] = Status.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Status-objects as value to a dart map
  static Map<String, List<Status>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<Status>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = Status.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

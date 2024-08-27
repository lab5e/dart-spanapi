//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class RpcStatus {
  /// Returns a new [RpcStatus] instance.
  RpcStatus({
    this.code,
    this.message,
    this.details = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  List<Any> details;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RpcStatus &&
          other.code == code &&
          other.message == message &&
          other.details == details;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (code == null ? 0 : code!.hashCode) +
      (message == null ? 0 : message!.hashCode) +
      (details.hashCode);

  @override
  String toString() =>
      'RpcStatus[code=$code, message=$message, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [RpcStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RpcStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RpcStatus[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RpcStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RpcStatus(
        code: mapValueOfType<int>(json, r'code'),
        message: mapValueOfType<String>(json, r'message'),
        details: Any.listFromJson(json[r'details']) ?? const [],
      );
    }
    return null;
  }

  static List<RpcStatus>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RpcStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RpcStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RpcStatus> mapFromJson(dynamic json) {
    final map = <String, RpcStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RpcStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RpcStatus-objects as value to a dart map
  static Map<String, List<RpcStatus>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RpcStatus>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RpcStatus.listFromJson(
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class OutputLogEntry {
  /// Returns a new [OutputLogEntry] instance.
  OutputLogEntry({
    this.time,
    this.message,
    this.repeated,
  });

  String time;

  String message;

  int repeated;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OutputLogEntry &&
          other.time == time &&
          other.message == message &&
          other.repeated == repeated;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (time == null ? 0 : time.hashCode) +
      (message == null ? 0 : message.hashCode) +
      (repeated == null ? 0 : repeated.hashCode);

  @override
  String toString() =>
      'OutputLogEntry[time=$time, message=$message, repeated=$repeated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (time != null) {
      json[r'time'] = time;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (repeated != null) {
      json[r'repeated'] = repeated;
    }
    return json;
  }

  /// Returns a new [OutputLogEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OutputLogEntry fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OutputLogEntry(
        time: mapValueOfType<String>(json, r'time'),
        message: mapValueOfType<String>(json, r'message'),
        repeated: mapValueOfType<int>(json, r'repeated'),
      );
    }
    return null;
  }

  static List<OutputLogEntry> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(OutputLogEntry.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <OutputLogEntry>[];

  static Map<String, OutputLogEntry> mapFromJson(dynamic json) {
    final map = <String, OutputLogEntry>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = OutputLogEntry.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OutputLogEntry-objects as value to a dart map
  static Map<String, List<OutputLogEntry>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<OutputLogEntry>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = OutputLogEntry.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

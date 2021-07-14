//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
  /// [json] if it's non-null, null if [json] is null.
  static OutputLogEntry fromJson(Map<String, dynamic> json) => json == null
      ? null
      : OutputLogEntry(
          time: json[r'time'],
          message: json[r'message'],
          repeated: json[r'repeated'],
        );

  static List<OutputLogEntry> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <OutputLogEntry>[]
          : json
              .map((v) => OutputLogEntry.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, OutputLogEntry> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OutputLogEntry>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = OutputLogEntry.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of OutputLogEntry-objects as value to a dart map
  static Map<String, List<OutputLogEntry>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<OutputLogEntry>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = OutputLogEntry.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

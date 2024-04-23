//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class ActivityEvent {
  /// Returns a new [ActivityEvent] instance.
  ActivityEvent({
    this.event,
    this.time,
    this.collectionId,
    this.deviceId,
    this.gatewayId,
    this.data = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? event;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? time;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? collectionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deviceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gatewayId;

  Map<String, String> data;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ActivityEvent &&
          other.event == event &&
          other.time == time &&
          other.collectionId == collectionId &&
          other.deviceId == deviceId &&
          other.gatewayId == gatewayId &&
          other.data == data;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (event == null ? 0 : event!.hashCode) +
      (time == null ? 0 : time!.hashCode) +
      (collectionId == null ? 0 : collectionId!.hashCode) +
      (deviceId == null ? 0 : deviceId!.hashCode) +
      (gatewayId == null ? 0 : gatewayId!.hashCode) +
      (data.hashCode);

  @override
  String toString() =>
      'ActivityEvent[event=$event, time=$time, collectionId=$collectionId, deviceId=$deviceId, gatewayId=$gatewayId, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.event != null) {
      json[r'event'] = this.event;
    } else {
      json[r'event'] = null;
    }
    if (this.time != null) {
      json[r'time'] = this.time;
    } else {
      json[r'time'] = null;
    }
    if (this.collectionId != null) {
      json[r'collectionId'] = this.collectionId;
    } else {
      json[r'collectionId'] = null;
    }
    if (this.deviceId != null) {
      json[r'deviceId'] = this.deviceId;
    } else {
      json[r'deviceId'] = null;
    }
    if (this.gatewayId != null) {
      json[r'gatewayId'] = this.gatewayId;
    } else {
      json[r'gatewayId'] = null;
    }
    json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [ActivityEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ActivityEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ActivityEvent[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ActivityEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ActivityEvent(
        event: mapValueOfType<String>(json, r'event'),
        time: mapValueOfType<String>(json, r'time'),
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        deviceId: mapValueOfType<String>(json, r'deviceId'),
        gatewayId: mapValueOfType<String>(json, r'gatewayId'),
        data: mapCastOfType<String, String>(json, r'data') ?? const {},
      );
    }
    return null;
  }

  static List<ActivityEvent>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ActivityEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ActivityEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ActivityEvent> mapFromJson(dynamic json) {
    final map = <String, ActivityEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ActivityEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ActivityEvent-objects as value to a dart map
  static Map<String, List<ActivityEvent>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ActivityEvent>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ActivityEvent.listFromJson(
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class GatewayStats {
  /// Returns a new [GatewayStats] instance.
  GatewayStats({
    this.messagesUpstream,
    this.messagesDownstream,
    this.bytesUpstreamMb,
    this.bytesDownstreamMb,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? messagesUpstream;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? messagesDownstream;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? bytesUpstreamMb;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? bytesDownstreamMb;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GatewayStats &&
          other.messagesUpstream == messagesUpstream &&
          other.messagesDownstream == messagesDownstream &&
          other.bytesUpstreamMb == bytesUpstreamMb &&
          other.bytesDownstreamMb == bytesDownstreamMb;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (messagesUpstream == null ? 0 : messagesUpstream!.hashCode) +
      (messagesDownstream == null ? 0 : messagesDownstream!.hashCode) +
      (bytesUpstreamMb == null ? 0 : bytesUpstreamMb!.hashCode) +
      (bytesDownstreamMb == null ? 0 : bytesDownstreamMb!.hashCode);

  @override
  String toString() =>
      'GatewayStats[messagesUpstream=$messagesUpstream, messagesDownstream=$messagesDownstream, bytesUpstreamMb=$bytesUpstreamMb, bytesDownstreamMb=$bytesDownstreamMb]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.messagesUpstream != null) {
      json[r'messagesUpstream'] = this.messagesUpstream;
    } else {
      json[r'messagesUpstream'] = null;
    }
    if (this.messagesDownstream != null) {
      json[r'messagesDownstream'] = this.messagesDownstream;
    } else {
      json[r'messagesDownstream'] = null;
    }
    if (this.bytesUpstreamMb != null) {
      json[r'bytesUpstreamMb'] = this.bytesUpstreamMb;
    } else {
      json[r'bytesUpstreamMb'] = null;
    }
    if (this.bytesDownstreamMb != null) {
      json[r'bytesDownstreamMb'] = this.bytesDownstreamMb;
    } else {
      json[r'bytesDownstreamMb'] = null;
    }
    return json;
  }

  /// Returns a new [GatewayStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GatewayStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GatewayStats[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GatewayStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GatewayStats(
        messagesUpstream: mapValueOfType<int>(json, r'messagesUpstream'),
        messagesDownstream: mapValueOfType<int>(json, r'messagesDownstream'),
        bytesUpstreamMb: mapValueOfType<double>(json, r'bytesUpstreamMb'),
        bytesDownstreamMb: mapValueOfType<double>(json, r'bytesDownstreamMb'),
      );
    }
    return null;
  }

  static List<GatewayStats>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GatewayStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GatewayStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GatewayStats> mapFromJson(dynamic json) {
    final map = <String, GatewayStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GatewayStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GatewayStats-objects as value to a dart map
  static Map<String, List<GatewayStats>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GatewayStats>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GatewayStats.listFromJson(
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

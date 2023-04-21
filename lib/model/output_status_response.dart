//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class OutputStatusResponse {
  /// Returns a new [OutputStatusResponse] instance.
  OutputStatusResponse({
    this.collectionId,
    this.outputId,
    this.enabled,
    this.errorCount,
    this.forwarded,
    this.received,
    this.retransmits,
  });

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
  String? outputId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? errorCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? forwarded;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? received;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? retransmits;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OutputStatusResponse &&
          other.collectionId == collectionId &&
          other.outputId == outputId &&
          other.enabled == enabled &&
          other.errorCount == errorCount &&
          other.forwarded == forwarded &&
          other.received == received &&
          other.retransmits == retransmits;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (collectionId == null ? 0 : collectionId!.hashCode) +
      (outputId == null ? 0 : outputId!.hashCode) +
      (enabled == null ? 0 : enabled!.hashCode) +
      (errorCount == null ? 0 : errorCount!.hashCode) +
      (forwarded == null ? 0 : forwarded!.hashCode) +
      (received == null ? 0 : received!.hashCode) +
      (retransmits == null ? 0 : retransmits!.hashCode);

  @override
  String toString() =>
      'OutputStatusResponse[collectionId=$collectionId, outputId=$outputId, enabled=$enabled, errorCount=$errorCount, forwarded=$forwarded, received=$received, retransmits=$retransmits]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.collectionId != null) {
      json[r'collectionId'] = this.collectionId;
    } else {
      json[r'collectionId'] = null;
    }
    if (this.outputId != null) {
      json[r'outputId'] = this.outputId;
    } else {
      json[r'outputId'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.errorCount != null) {
      json[r'errorCount'] = this.errorCount;
    } else {
      json[r'errorCount'] = null;
    }
    if (this.forwarded != null) {
      json[r'forwarded'] = this.forwarded;
    } else {
      json[r'forwarded'] = null;
    }
    if (this.received != null) {
      json[r'received'] = this.received;
    } else {
      json[r'received'] = null;
    }
    if (this.retransmits != null) {
      json[r'retransmits'] = this.retransmits;
    } else {
      json[r'retransmits'] = null;
    }
    return json;
  }

  /// Returns a new [OutputStatusResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OutputStatusResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "OutputStatusResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "OutputStatusResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OutputStatusResponse(
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        outputId: mapValueOfType<String>(json, r'outputId'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        errorCount: mapValueOfType<int>(json, r'errorCount'),
        forwarded: mapValueOfType<int>(json, r'forwarded'),
        received: mapValueOfType<int>(json, r'received'),
        retransmits: mapValueOfType<int>(json, r'retransmits'),
      );
    }
    return null;
  }

  static List<OutputStatusResponse>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OutputStatusResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OutputStatusResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OutputStatusResponse> mapFromJson(dynamic json) {
    final map = <String, OutputStatusResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OutputStatusResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OutputStatusResponse-objects as value to a dart map
  static Map<String, List<OutputStatusResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OutputStatusResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OutputStatusResponse.listFromJson(
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

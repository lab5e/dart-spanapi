//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class ListLabeledFirmwareResponse {
  /// Returns a new [ListLabeledFirmwareResponse] instance.
  ListLabeledFirmwareResponse({
    this.images = const [],
  });

  List<LabeledFirmware> images;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListLabeledFirmwareResponse && other.images == images;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (images.hashCode);

  @override
  String toString() => 'ListLabeledFirmwareResponse[images=$images]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'images'] = this.images;
    return json;
  }

  /// Returns a new [ListLabeledFirmwareResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListLabeledFirmwareResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ListLabeledFirmwareResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ListLabeledFirmwareResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListLabeledFirmwareResponse(
        images: LabeledFirmware.listFromJson(json[r'images']) ?? const [],
      );
    }
    return null;
  }

  static List<ListLabeledFirmwareResponse>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ListLabeledFirmwareResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListLabeledFirmwareResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListLabeledFirmwareResponse> mapFromJson(dynamic json) {
    final map = <String, ListLabeledFirmwareResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListLabeledFirmwareResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListLabeledFirmwareResponse-objects as value to a dart map
  static Map<String, List<ListLabeledFirmwareResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ListLabeledFirmwareResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListLabeledFirmwareResponse.listFromJson(
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

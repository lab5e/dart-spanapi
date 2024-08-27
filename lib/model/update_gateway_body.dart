//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class UpdateGatewayBody {
  /// Returns a new [UpdateGatewayBody] instance.
  UpdateGatewayBody({
    this.name,
    this.collectionId,
    this.type,
    this.config,
    this.tags = const {},
    this.enabled,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

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
  GatewayType? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GatewayConfig? config;

  Map<String, String> tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateGatewayBody &&
          other.name == name &&
          other.collectionId == collectionId &&
          other.type == type &&
          other.config == config &&
          other.tags == tags &&
          other.enabled == enabled;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name!.hashCode) +
      (collectionId == null ? 0 : collectionId!.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (config == null ? 0 : config!.hashCode) +
      (tags.hashCode) +
      (enabled == null ? 0 : enabled!.hashCode);

  @override
  String toString() =>
      'UpdateGatewayBody[name=$name, collectionId=$collectionId, type=$type, config=$config, tags=$tags, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.collectionId != null) {
      json[r'collectionId'] = this.collectionId;
    } else {
      json[r'collectionId'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.config != null) {
      json[r'config'] = this.config;
    } else {
      json[r'config'] = null;
    }
    json[r'tags'] = this.tags;
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateGatewayBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateGatewayBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "UpdateGatewayBody[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "UpdateGatewayBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateGatewayBody(
        name: mapValueOfType<String>(json, r'name'),
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        type: GatewayType.fromJson(json[r'type']),
        config: GatewayConfig.fromJson(json[r'config']),
        tags: mapCastOfType<String, String>(json, r'tags') ?? const {},
        enabled: mapValueOfType<bool>(json, r'enabled'),
      );
    }
    return null;
  }

  static List<UpdateGatewayBody>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <UpdateGatewayBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateGatewayBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateGatewayBody> mapFromJson(dynamic json) {
    final map = <String, UpdateGatewayBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateGatewayBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateGatewayBody-objects as value to a dart map
  static Map<String, List<UpdateGatewayBody>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<UpdateGatewayBody>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateGatewayBody.listFromJson(
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

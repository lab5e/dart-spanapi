//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class Gateway {
  /// Returns a new [Gateway] instance.
  Gateway({
    this.gatewayId,
    this.collectionId,
    this.name,
    this.builtIn,
    this.type,
    this.config,
    this.tags = const {},
    this.status,
  });

  String gatewayId;

  String collectionId;

  String name;

  bool builtIn;

  GatewayType type;

  GatewayConfig config;

  Map<String, String> tags;

  GatewayStatus status;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Gateway &&
          other.gatewayId == gatewayId &&
          other.collectionId == collectionId &&
          other.name == name &&
          other.builtIn == builtIn &&
          other.type == type &&
          other.config == config &&
          other.tags == tags &&
          other.status == status;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (gatewayId == null ? 0 : gatewayId.hashCode) +
      (collectionId == null ? 0 : collectionId.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (builtIn == null ? 0 : builtIn.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (config == null ? 0 : config.hashCode) +
      (tags == null ? 0 : tags.hashCode) +
      (status == null ? 0 : status.hashCode);

  @override
  String toString() =>
      'Gateway[gatewayId=$gatewayId, collectionId=$collectionId, name=$name, builtIn=$builtIn, type=$type, config=$config, tags=$tags, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (gatewayId != null) {
      json[r'gatewayId'] = gatewayId;
    }
    if (collectionId != null) {
      json[r'collectionId'] = collectionId;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (builtIn != null) {
      json[r'builtIn'] = builtIn;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (config != null) {
      json[r'config'] = config;
    }
    if (tags != null) {
      json[r'tags'] = tags;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    return json;
  }

  /// Returns a new [Gateway] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Gateway fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Gateway(
        gatewayId: mapValueOfType<String>(json, r'gatewayId'),
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        name: mapValueOfType<String>(json, r'name'),
        builtIn: mapValueOfType<bool>(json, r'builtIn'),
        type: GatewayType.fromJson(json[r'type']),
        config: GatewayConfig.fromJson(json[r'config']),
        tags: mapCastOfType<String, String>(json, r'tags'),
        status: GatewayStatus.fromJson(json[r'status']),
      );
    }
    return null;
  }

  static List<Gateway> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(Gateway.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <Gateway>[];

  static Map<String, Gateway> mapFromJson(dynamic json) {
    final map = <String, Gateway>{};
    if (json is Map && json.isNotEmpty) {
      json
          .cast<String, dynamic>()
          .forEach((key, dynamic value) => map[key] = Gateway.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Gateway-objects as value to a dart map
  static Map<String, List<Gateway>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<Gateway>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = Gateway.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

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
    this.networkId,
    this.tags = const {},
  });

  String gatewayId;

  String collectionId;

  String networkId;

  Map<String, String> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Gateway &&
     other.gatewayId == gatewayId &&
     other.collectionId == collectionId &&
     other.networkId == networkId &&
     other.tags == tags;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (gatewayId == null ? 0 : gatewayId.hashCode) +
    (collectionId == null ? 0 : collectionId.hashCode) +
    (networkId == null ? 0 : networkId.hashCode) +
    (tags == null ? 0 : tags.hashCode);

  @override
  String toString() => 'Gateway[gatewayId=$gatewayId, collectionId=$collectionId, networkId=$networkId, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (gatewayId != null) {
      json[r'gatewayId'] = gatewayId;
    }
    if (collectionId != null) {
      json[r'collectionId'] = collectionId;
    }
    if (networkId != null) {
      json[r'networkId'] = networkId;
    }
    if (tags != null) {
      json[r'tags'] = tags;
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
        networkId: mapValueOfType<String>(json, r'networkId'),
        tags: mapCastOfType<String, String>(json, r'tags'),
      );
    }
    return null;
  }

  static List<Gateway> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Gateway.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Gateway>[];

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
  static Map<String, List<Gateway>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Gateway>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
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


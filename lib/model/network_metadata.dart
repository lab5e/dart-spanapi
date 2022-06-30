//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class NetworkMetadata {
  /// Returns a new [NetworkMetadata] instance.
  NetworkMetadata({
    this.allocatedIp,
    this.allocatedAt,
    this.cellId,
  });

  /// Allocated IP address.
  String allocatedIp;

  String allocatedAt;

  /// Cell ID for device. This might not be set, depending on the provider in use.
  String cellId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NetworkMetadata &&
          other.allocatedIp == allocatedIp &&
          other.allocatedAt == allocatedAt &&
          other.cellId == cellId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (allocatedIp == null ? 0 : allocatedIp.hashCode) +
      (allocatedAt == null ? 0 : allocatedAt.hashCode) +
      (cellId == null ? 0 : cellId.hashCode);

  @override
  String toString() =>
      'NetworkMetadata[allocatedIp=$allocatedIp, allocatedAt=$allocatedAt, cellId=$cellId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (allocatedIp != null) {
      json[r'allocatedIp'] = allocatedIp;
    }
    if (allocatedAt != null) {
      json[r'allocatedAt'] = allocatedAt;
    }
    if (cellId != null) {
      json[r'cellId'] = cellId;
    }
    return json;
  }

  /// Returns a new [NetworkMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NetworkMetadata fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NetworkMetadata(
        allocatedIp: mapValueOfType<String>(json, r'allocatedIp'),
        allocatedAt: mapValueOfType<String>(json, r'allocatedAt'),
        cellId: mapValueOfType<String>(json, r'cellId'),
      );
    }
    return null;
  }

  static List<NetworkMetadata> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(NetworkMetadata.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <NetworkMetadata>[];

  static Map<String, NetworkMetadata> mapFromJson(dynamic json) {
    final map = <String, NetworkMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = NetworkMetadata.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NetworkMetadata-objects as value to a dart map
  static Map<String, List<NetworkMetadata>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<NetworkMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = NetworkMetadata.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

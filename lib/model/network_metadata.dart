//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
  bool operator ==(Object other) => identical(this, other) || other is NetworkMetadata &&
     other.allocatedIp == allocatedIp &&
     other.allocatedAt == allocatedAt &&
     other.cellId == cellId;

  @override
  int get hashCode =>
    (allocatedIp == null ? 0 : allocatedIp.hashCode) +
    (allocatedAt == null ? 0 : allocatedAt.hashCode) +
    (cellId == null ? 0 : cellId.hashCode);

  @override
  String toString() => 'NetworkMetadata[allocatedIp=$allocatedIp, allocatedAt=$allocatedAt, cellId=$cellId]';

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
  /// [json] if it's non-null, null if [json] is null.
  static NetworkMetadata fromJson(Map<String, dynamic> json) => json == null
    ? null
    : NetworkMetadata(
        allocatedIp: json[r'allocatedIp'],
        allocatedAt: json[r'allocatedAt'],
        cellId: json[r'cellId'],
    );

  static List<NetworkMetadata> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <NetworkMetadata>[]
      : json.map((v) => NetworkMetadata.fromJson(v)).toList(growable: true == growable);

  static Map<String, NetworkMetadata> mapFromJson(Map<String, dynamic> json) {
    final map = <String, NetworkMetadata>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = NetworkMetadata.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of NetworkMetadata-objects as value to a dart map
  static Map<String, List<NetworkMetadata>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NetworkMetadata>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = NetworkMetadata.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


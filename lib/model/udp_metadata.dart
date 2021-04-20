//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class UDPMetadata {
  /// Returns a new [UDPMetadata] instance.
  UDPMetadata({
    this.localPort,
    this.remotePort,
  });

  int localPort;

  int remotePort;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UDPMetadata &&
     other.localPort == localPort &&
     other.remotePort == remotePort;

  @override
  int get hashCode =>
    (localPort == null ? 0 : localPort.hashCode) +
    (remotePort == null ? 0 : remotePort.hashCode);

  @override
  String toString() => 'UDPMetadata[localPort=$localPort, remotePort=$remotePort]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (localPort != null) {
      json[r'localPort'] = localPort;
    }
    if (remotePort != null) {
      json[r'remotePort'] = remotePort;
    }
    return json;
  }

  /// Returns a new [UDPMetadata] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UDPMetadata fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UDPMetadata(
        localPort: json[r'localPort'],
        remotePort: json[r'remotePort'],
    );

  static List<UDPMetadata> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UDPMetadata>[]
      : json.map((v) => UDPMetadata.fromJson(v)).toList(growable: true == growable);

  static Map<String, UDPMetadata> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UDPMetadata>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UDPMetadata.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UDPMetadata-objects as value to a dart map
  static Map<String, List<UDPMetadata>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UDPMetadata>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UDPMetadata.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


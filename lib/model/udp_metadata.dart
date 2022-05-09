//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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
  // ignore: unnecessary_parenthesis
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
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UDPMetadata fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return UDPMetadata(
        localPort: mapValueOfType<int>(json, r'localPort'),
        remotePort: mapValueOfType<int>(json, r'remotePort'),
      );
    }
    return null;
  }

  static List<UDPMetadata> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(UDPMetadata.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <UDPMetadata>[];

  static Map<String, UDPMetadata> mapFromJson(dynamic json) {
    final map = <String, UDPMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = UDPMetadata.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UDPMetadata-objects as value to a dart map
  static Map<String, List<UDPMetadata>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UDPMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = UDPMetadata.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class Network {
  /// Returns a new [Network] instance.
  Network({
    this.networkId,
    this.tags = const {},
  });

  String networkId;

  Map<String, String> tags;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Network && other.networkId == networkId && other.tags == tags;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (networkId == null ? 0 : networkId.hashCode) +
      (tags == null ? 0 : tags.hashCode);

  @override
  String toString() => 'Network[networkId=$networkId, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (networkId != null) {
      json[r'networkId'] = networkId;
    }
    if (tags != null) {
      json[r'tags'] = tags;
    }
    return json;
  }

  /// Returns a new [Network] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Network fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Network(
        networkId: mapValueOfType<String>(json, r'networkId'),
        tags: mapCastOfType<String, String>(json, r'tags'),
      );
    }
    return null;
  }

  static List<Network> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(Network.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <Network>[];

  static Map<String, Network> mapFromJson(dynamic json) {
    final map = <String, Network>{};
    if (json is Map && json.isNotEmpty) {
      json
          .cast<String, dynamic>()
          .forEach((key, dynamic value) => map[key] = Network.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Network-objects as value to a dart map
  static Map<String, List<Network>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<Network>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = Network.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class ListNetworkResponse {
  /// Returns a new [ListNetworkResponse] instance.
  ListNetworkResponse({
    this.networks = const [],
  });

  List<Network> networks;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListNetworkResponse && other.networks == networks;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (networks == null ? 0 : networks.hashCode);

  @override
  String toString() => 'ListNetworkResponse[networks=$networks]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (networks != null) {
      json[r'networks'] = networks;
    }
    return json;
  }

  /// Returns a new [ListNetworkResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListNetworkResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ListNetworkResponse(
        networks: Network.listFromJson(json[r'networks']),
      );
    }
    return null;
  }

  static List<ListNetworkResponse> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(ListNetworkResponse.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <ListNetworkResponse>[];

  static Map<String, ListNetworkResponse> mapFromJson(dynamic json) {
    final map = <String, ListNetworkResponse>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = ListNetworkResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListNetworkResponse-objects as value to a dart map
  static Map<String, List<ListNetworkResponse>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<ListNetworkResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = ListNetworkResponse.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

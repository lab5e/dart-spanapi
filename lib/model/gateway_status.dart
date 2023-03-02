//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class GatewayStatus {
  /// Instantiate a new enum with the provided [value].
  const GatewayStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const unknown = GatewayStatus._(r'unknown');
  static const offline = GatewayStatus._(r'offline');
  static const online = GatewayStatus._(r'online');

  /// List of all possible values in this [enum][GatewayStatus].
  static const values = <GatewayStatus>[
    unknown,
    offline,
    online,
  ];

  static GatewayStatus fromJson(dynamic value) =>
      GatewayStatusTypeTransformer().decode(value);

  static List<GatewayStatus> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(GatewayStatus.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <GatewayStatus>[];
}

/// Transformation class that can [encode] an instance of [GatewayStatus] to String,
/// and [decode] dynamic data back to [GatewayStatus].
class GatewayStatusTypeTransformer {
  factory GatewayStatusTypeTransformer() =>
      _instance ??= const GatewayStatusTypeTransformer._();

  const GatewayStatusTypeTransformer._();

  String encode(GatewayStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a GatewayStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GatewayStatus decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'unknown':
          return GatewayStatus.unknown;
        case r'offline':
          return GatewayStatus.offline;
        case r'online':
          return GatewayStatus.online;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GatewayStatusTypeTransformer] instance.
  static GatewayStatusTypeTransformer _instance;
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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
  String toString() => value;

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

  static GatewayStatus? fromJson(dynamic value) =>
      GatewayStatusTypeTransformer().decode(value);

  static List<GatewayStatus>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GatewayStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GatewayStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
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
  GatewayStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'unknown':
          return GatewayStatus.unknown;
        case r'offline':
          return GatewayStatus.offline;
        case r'online':
          return GatewayStatus.online;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GatewayStatusTypeTransformer] instance.
  static GatewayStatusTypeTransformer? _instance;
}

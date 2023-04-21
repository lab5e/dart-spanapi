//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class GatewayType {
  /// Instantiate a new enum with the provided [value].
  const GatewayType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = GatewayType._(r'unknown');
  static const ciot = GatewayType._(r'ciot');
  static const inet = GatewayType._(r'inet');
  static const lora = GatewayType._(r'lora');
  static const openthread = GatewayType._(r'openthread');
  static const zigbee = GatewayType._(r'zigbee');
  static const matter = GatewayType._(r'matter');
  static const custom = GatewayType._(r'custom');

  /// List of all possible values in this [enum][GatewayType].
  static const values = <GatewayType>[
    unknown,
    ciot,
    inet,
    lora,
    openthread,
    zigbee,
    matter,
    custom,
  ];

  static GatewayType? fromJson(dynamic value) =>
      GatewayTypeTypeTransformer().decode(value);

  static List<GatewayType>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GatewayType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GatewayType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GatewayType] to String,
/// and [decode] dynamic data back to [GatewayType].
class GatewayTypeTypeTransformer {
  factory GatewayTypeTypeTransformer() =>
      _instance ??= const GatewayTypeTypeTransformer._();

  const GatewayTypeTypeTransformer._();

  String encode(GatewayType data) => data.value;

  /// Decodes a [dynamic value][data] to a GatewayType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GatewayType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'unknown':
          return GatewayType.unknown;
        case r'ciot':
          return GatewayType.ciot;
        case r'inet':
          return GatewayType.inet;
        case r'lora':
          return GatewayType.lora;
        case r'openthread':
          return GatewayType.openthread;
        case r'zigbee':
          return GatewayType.zigbee;
        case r'matter':
          return GatewayType.matter;
        case r'custom':
          return GatewayType.custom;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GatewayTypeTypeTransformer] instance.
  static GatewayTypeTypeTransformer? _instance;
}

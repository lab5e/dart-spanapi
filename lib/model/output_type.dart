//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

/// Output types available   - undefined: The undefined output type is an invalid type
class OutputType {
  /// Instantiate a new enum with the provided [value].
  const OutputType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const undefined = OutputType._(r'undefined');
  static const webhook = OutputType._(r'webhook');
  static const udpout = OutputType._(r'udpout');
  static const mqttclient = OutputType._(r'mqttclient');
  static const ifttt = OutputType._(r'ifttt');
  static const mqttbroker = OutputType._(r'mqttbroker');

  /// List of all possible values in this [enum][OutputType].
  static const values = <OutputType>[
    undefined,
    webhook,
    udpout,
    mqttclient,
    ifttt,
    mqttbroker,
  ];

  static OutputType? fromJson(dynamic value) =>
      OutputTypeTypeTransformer().decode(value);

  static List<OutputType>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OutputType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OutputType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OutputType] to String,
/// and [decode] dynamic data back to [OutputType].
class OutputTypeTypeTransformer {
  factory OutputTypeTypeTransformer() =>
      _instance ??= const OutputTypeTypeTransformer._();

  const OutputTypeTypeTransformer._();

  String encode(OutputType data) => data.value;

  /// Decodes a [dynamic value][data] to a OutputType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OutputType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'undefined':
          return OutputType.undefined;
        case r'webhook':
          return OutputType.webhook;
        case r'udpout':
          return OutputType.udpout;
        case r'mqttclient':
          return OutputType.mqttclient;
        case r'ifttt':
          return OutputType.ifttt;
        case r'mqttbroker':
          return OutputType.mqttbroker;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OutputTypeTypeTransformer] instance.
  static OutputTypeTypeTransformer? _instance;
}

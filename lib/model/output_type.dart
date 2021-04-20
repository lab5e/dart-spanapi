//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;


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
  static const udp = OutputType._(r'udp');
  static const mqtt = OutputType._(r'mqtt');
  static const ifttt = OutputType._(r'ifttt');

  /// List of all possible values in this [enum][OutputType].
  static const values = <OutputType>[
    undefined,
    webhook,
    udp,
    mqtt,
    ifttt,
  ];

  static OutputType fromJson(dynamic value) =>
    OutputTypeTypeTransformer().decode(value);

  static List<OutputType> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OutputType>[]
      : json
          .map((value) => OutputType.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [OutputType] to String,
/// and [decode] dynamic data back to [OutputType].
class OutputTypeTypeTransformer {
  const OutputTypeTypeTransformer._();

  factory OutputTypeTypeTransformer() => _instance ??= OutputTypeTypeTransformer._();

  String encode(OutputType data) => data.value;

  /// Decodes a [dynamic value][data] to a OutputType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OutputType decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'undefined': return OutputType.undefined;
      case r'webhook': return OutputType.webhook;
      case r'udp': return OutputType.udp;
      case r'mqtt': return OutputType.mqtt;
      case r'ifttt': return OutputType.ifttt;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [OutputTypeTypeTransformer] instance.
  static OutputTypeTypeTransformer _instance;
}

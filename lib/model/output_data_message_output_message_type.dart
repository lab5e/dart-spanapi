//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;


class OutputDataMessageOutputMessageType {
  /// Instantiate a new enum with the provided [value].
  const OutputDataMessageOutputMessageType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = OutputDataMessageOutputMessageType._(r'unknown');
  static const keepalive = OutputDataMessageOutputMessageType._(r'keepalive');
  static const data = OutputDataMessageOutputMessageType._(r'data');

  /// List of all possible values in this [enum][OutputDataMessageOutputMessageType].
  static const values = <OutputDataMessageOutputMessageType>[
    unknown,
    keepalive,
    data,
  ];

  static OutputDataMessageOutputMessageType fromJson(dynamic value) =>
    OutputDataMessageOutputMessageTypeTypeTransformer().decode(value);

  static List<OutputDataMessageOutputMessageType> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OutputDataMessageOutputMessageType>[]
      : json
          .map((value) => OutputDataMessageOutputMessageType.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [OutputDataMessageOutputMessageType] to String,
/// and [decode] dynamic data back to [OutputDataMessageOutputMessageType].
class OutputDataMessageOutputMessageTypeTypeTransformer {
  const OutputDataMessageOutputMessageTypeTypeTransformer._();

  factory OutputDataMessageOutputMessageTypeTypeTransformer() => _instance ??= OutputDataMessageOutputMessageTypeTypeTransformer._();

  String encode(OutputDataMessageOutputMessageType data) => data.value;

  /// Decodes a [dynamic value][data] to a OutputDataMessageOutputMessageType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OutputDataMessageOutputMessageType decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'unknown': return OutputDataMessageOutputMessageType.unknown;
      case r'keepalive': return OutputDataMessageOutputMessageType.keepalive;
      case r'data': return OutputDataMessageOutputMessageType.data;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [OutputDataMessageOutputMessageTypeTypeTransformer] instance.
  static OutputDataMessageOutputMessageTypeTypeTransformer _instance;
}

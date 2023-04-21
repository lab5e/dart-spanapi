//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class OutputMessageType {
  /// Instantiate a new enum with the provided [value].
  const OutputMessageType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = OutputMessageType._(r'unknown');
  static const keepalive = OutputMessageType._(r'keepalive');
  static const data = OutputMessageType._(r'data');

  /// List of all possible values in this [enum][OutputMessageType].
  static const values = <OutputMessageType>[
    unknown,
    keepalive,
    data,
  ];

  static OutputMessageType? fromJson(dynamic value) =>
      OutputMessageTypeTypeTransformer().decode(value);

  static List<OutputMessageType>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OutputMessageType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OutputMessageType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OutputMessageType] to String,
/// and [decode] dynamic data back to [OutputMessageType].
class OutputMessageTypeTypeTransformer {
  factory OutputMessageTypeTypeTransformer() =>
      _instance ??= const OutputMessageTypeTypeTransformer._();

  const OutputMessageTypeTypeTransformer._();

  String encode(OutputMessageType data) => data.value;

  /// Decodes a [dynamic value][data] to a OutputMessageType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OutputMessageType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'unknown':
          return OutputMessageType.unknown;
        case r'keepalive':
          return OutputMessageType.keepalive;
        case r'data':
          return OutputMessageType.data;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OutputMessageTypeTypeTransformer] instance.
  static OutputMessageTypeTypeTransformer? _instance;
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;


class MessageState {
  /// Instantiate a new enum with the provided [value].
  const MessageState._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const unspecified = MessageState._(r'unspecified');
  static const pending = MessageState._(r'pending');
  static const sent = MessageState._(r'sent');
  static const failed = MessageState._(r'failed');

  /// List of all possible values in this [enum][MessageState].
  static const values = <MessageState>[
    unspecified,
    pending,
    sent,
    failed,
  ];

  static MessageState fromJson(dynamic value) =>
    MessageStateTypeTransformer().decode(value);

  static List<MessageState> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MessageState.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MessageState>[];
}

/// Transformation class that can [encode] an instance of [MessageState] to String,
/// and [decode] dynamic data back to [MessageState].
class MessageStateTypeTransformer {
  factory MessageStateTypeTransformer() => _instance ??= const MessageStateTypeTransformer._();

  const MessageStateTypeTransformer._();

  String encode(MessageState data) => data.value;

  /// Decodes a [dynamic value][data] to a MessageState.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MessageState decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'unspecified': return MessageState.unspecified;
        case r'pending': return MessageState.pending;
        case r'sent': return MessageState.sent;
        case r'failed': return MessageState.failed;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MessageStateTypeTransformer] instance.
  static MessageStateTypeTransformer _instance;
}


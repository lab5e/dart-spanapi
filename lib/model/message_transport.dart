//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

/// The message transport can be UDP or CoAP.
class MessageTransport {
  /// Instantiate a new enum with the provided [value].
  const MessageTransport._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const unspecified = MessageTransport._(r'unspecified');
  static const udp = MessageTransport._(r'udp');
  static const coap = MessageTransport._(r'coap');
  static const mqtt = MessageTransport._(r'mqtt');
  static const gateway = MessageTransport._(r'gateway');
  static const coaps = MessageTransport._(r'coaps');
  static const dtls = MessageTransport._(r'dtls');

  /// List of all possible values in this [enum][MessageTransport].
  static const values = <MessageTransport>[
    unspecified,
    udp,
    coap,
    mqtt,
    gateway,
    coaps,
    dtls,
  ];

  static MessageTransport fromJson(dynamic value) =>
    MessageTransportTypeTransformer().decode(value);

  static List<MessageTransport> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MessageTransport.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MessageTransport>[];
}

/// Transformation class that can [encode] an instance of [MessageTransport] to String,
/// and [decode] dynamic data back to [MessageTransport].
class MessageTransportTypeTransformer {
  factory MessageTransportTypeTransformer() => _instance ??= const MessageTransportTypeTransformer._();

  const MessageTransportTypeTransformer._();

  String encode(MessageTransport data) => data.value;

  /// Decodes a [dynamic value][data] to a MessageTransport.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MessageTransport decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'unspecified': return MessageTransport.unspecified;
        case r'udp': return MessageTransport.udp;
        case r'coap': return MessageTransport.coap;
        case r'mqtt': return MessageTransport.mqtt;
        case r'gateway': return MessageTransport.gateway;
        case r'coaps': return MessageTransport.coaps;
        case r'dtls': return MessageTransport.dtls;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MessageTransportTypeTransformer] instance.
  static MessageTransportTypeTransformer _instance;
}


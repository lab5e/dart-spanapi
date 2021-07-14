//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

/// The firmware management settings for a collection can either be \"disabled\", ie there is no firmware management for this collection, \"collection\"; devices are managed through the settings on the collection or \"device\" where each device is configured individual.
class CollectionFirmwareFirmwareManagement {
  /// Instantiate a new enum with the provided [value].
  const CollectionFirmwareFirmwareManagement._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unspecified = CollectionFirmwareFirmwareManagement._(r'unspecified');
  static const disabled = CollectionFirmwareFirmwareManagement._(r'disabled');
  static const collection = CollectionFirmwareFirmwareManagement._(r'collection');
  static const device = CollectionFirmwareFirmwareManagement._(r'device');

  /// List of all possible values in this [enum][CollectionFirmwareFirmwareManagement].
  static const values = <CollectionFirmwareFirmwareManagement>[
    unspecified,
    disabled,
    collection,
    device,
  ];

  static CollectionFirmwareFirmwareManagement fromJson(dynamic value) =>
    CollectionFirmwareFirmwareManagementTypeTransformer().decode(value);

  static List<CollectionFirmwareFirmwareManagement> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CollectionFirmwareFirmwareManagement>[]
      : json
          .map((value) => CollectionFirmwareFirmwareManagement.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [CollectionFirmwareFirmwareManagement] to String,
/// and [decode] dynamic data back to [CollectionFirmwareFirmwareManagement].
class CollectionFirmwareFirmwareManagementTypeTransformer {
  const CollectionFirmwareFirmwareManagementTypeTransformer._();

  factory CollectionFirmwareFirmwareManagementTypeTransformer() => _instance ??= CollectionFirmwareFirmwareManagementTypeTransformer._();

  String encode(CollectionFirmwareFirmwareManagement data) => data.value;

  /// Decodes a [dynamic value][data] to a CollectionFirmwareFirmwareManagement.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CollectionFirmwareFirmwareManagement decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'unspecified': return CollectionFirmwareFirmwareManagement.unspecified;
      case r'disabled': return CollectionFirmwareFirmwareManagement.disabled;
      case r'collection': return CollectionFirmwareFirmwareManagement.collection;
      case r'device': return CollectionFirmwareFirmwareManagement.device;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [CollectionFirmwareFirmwareManagementTypeTransformer] instance.
  static CollectionFirmwareFirmwareManagementTypeTransformer _instance;
}

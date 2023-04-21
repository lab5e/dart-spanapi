//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

/// The firmware management settings for a collection can either be \"disabled\", ie there is no firmware management for this collection, \"collection\"; devices are managed through the settings on the collection or \"device\" where each device is configured individual.
class FirmwareManagement {
  /// Instantiate a new enum with the provided [value].
  const FirmwareManagement._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unspecified = FirmwareManagement._(r'unspecified');
  static const disabled = FirmwareManagement._(r'disabled');
  static const collection = FirmwareManagement._(r'collection');
  static const device = FirmwareManagement._(r'device');

  /// List of all possible values in this [enum][FirmwareManagement].
  static const values = <FirmwareManagement>[
    unspecified,
    disabled,
    collection,
    device,
  ];

  static FirmwareManagement? fromJson(dynamic value) =>
      FirmwareManagementTypeTransformer().decode(value);

  static List<FirmwareManagement>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FirmwareManagement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FirmwareManagement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FirmwareManagement] to String,
/// and [decode] dynamic data back to [FirmwareManagement].
class FirmwareManagementTypeTransformer {
  factory FirmwareManagementTypeTransformer() =>
      _instance ??= const FirmwareManagementTypeTransformer._();

  const FirmwareManagementTypeTransformer._();

  String encode(FirmwareManagement data) => data.value;

  /// Decodes a [dynamic value][data] to a FirmwareManagement.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FirmwareManagement? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'unspecified':
          return FirmwareManagement.unspecified;
        case r'disabled':
          return FirmwareManagement.disabled;
        case r'collection':
          return FirmwareManagement.collection;
        case r'device':
          return FirmwareManagement.device;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FirmwareManagementTypeTransformer] instance.
  static FirmwareManagementTypeTransformer? _instance;
}

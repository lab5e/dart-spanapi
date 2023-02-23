//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:spanapi/api.dart';
import 'package:test/test.dart';

// tests for UpdateDeviceRequest
void main() {
  final instance = UpdateDeviceRequest();

  group('test UpdateDeviceRequest', () {
    // The collection id for the device. This field is optional and can be omitted if the collection id isn't changed. When changing to a new collection you must be an owner of the other collection, ie an administrator of the team that owns the new collection.
    // String collectionId
    test('to test the property `collectionId`', () async {
      // TODO
    });

    // Deprecated: this is replaced by the Config type The IMSI is the unique ID for the (e|nu|whatever)SIM card on your device. This is the primary identifier for your device on the network.
    // String imsi
    test('to test the property `imsi`', () async {
      // TODO
    });

    // Deprecated: This is replaced by the Config type The IMEI number is the unique ID for your hardware as seen by the network. Obviously you might have a completely different view on things.
    // String imei
    test('to test the property `imei`', () async {
      // TODO
    });

    // Tags are metadata for the device that you can set. These are just strings.
    // Map<String, String> tags (default value: const {})
    test('to test the property `tags`', () async {
      // TODO
    });

    // FirmwareMetadata firmware
    test('to test the property `firmware`', () async {
      // TODO
    });

    // DeviceConfig config
    test('to test the property `config`', () async {
      // TODO
    });
  });
}

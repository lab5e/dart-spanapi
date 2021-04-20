//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:spanapi/api.dart';
import 'package:test/test.dart';


/// tests for FotaApi
void main() {
  final instance = FotaApi();

  group('tests for FotaApi', () {
    // Clear FOTA error
    //
    //Future<ClearFirmwareErrorResponse> clearFirmwareError(String collectionId, String deviceId) async
    test('test clearFirmwareError', () async {
      // TODO
    });

    // Create firmware
    //
    // Create a new firmware image. This is also invoked by the custom HTTP uploader if the POST uses multipart/formdata for the request.
    //
    //Future<Firmware> createFirmware(String collectionId, CreateFirmwareRequest body) async
    test('test createFirmware', () async {
      // TODO
    });

    // Delete firmware
    //
    //Future<Firmware> deleteFirmware(String collectionId, String imageId) async
    test('test deleteFirmware', () async {
      // TODO
    });

    // Firmware usage
    //
    // Shows the firmware usage for devices in the collection
    //
    //Future<FirmwareUsageResponse> firmwareUsage(String collectionId, String imageId) async
    test('test firmwareUsage', () async {
      // TODO
    });

    // List firmware
    //
    // Lists available firmware images in collection
    //
    //Future<ListFirmwareResponse> listFirmware(String collectionId) async
    test('test listFirmware', () async {
      // TODO
    });

    // Retrieve firmware
    //
    // Retrieve information on a firmware image
    //
    //Future<Firmware> retrieveFirmware(String collectionId, String imageId) async
    test('test retrieveFirmware', () async {
      // TODO
    });

    // Update firmware
    //
    //Future<Firmware> updateFirmware(String collectionId, String imageId, Firmware body) async
    test('test updateFirmware', () async {
      // TODO
    });

  });
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:spanapi/api.dart';
import 'package:test/test.dart';

/// tests for FotaApi
void main() {
  // final instance = FotaApi();

  group('tests for FotaApi', () {
    // BETA: Assign a target image
    //
    // Assign a particular labeled image to a device or a collection
    //
    //Future<AssignTargetImageResponse> assignTargetImage(String collectionId, String imageId, { String label, String deviceId }) async
    test('test assignTargetImage', () async {
      // TODO
    });

    // Clear FOTA error
    //
    //Future<ClearFirmwareErrorResponse> clearFirmwareError(String collectionId, String deviceId) async
    test('test clearFirmwareError', () async {
      // TODO
    });

    // Create firmware
    //
    // Firmware images must have unique version numbers and have an unique checksum. The checksum is calculated when the firmware image is uploaded.
    //
    //Future<Firmware> createFirmware(String collectionId, CreateFirmwareBody body) async
    test('test createFirmware', () async {
      // TODO
    });

    // BETA: Create a labeled firmware image
    //
    // Devices might need several different firmware images, depending on their configuration. Low-power devices usually have just a single firmware image but more complex devices might need several firmware images for their  subsystems. The firmware image must be uploaded prior to the call and the  returned data structure is included in the request.
    //
    //Future<CreateLabeledFirmwareResponse> createLabeledFirmware(String collectionId, { String version, String label, String imageRef }) async
    test('test createLabeledFirmware', () async {
      // TODO
    });

    // Delete firmware
    //
    //Future<Firmware> deleteFirmware(String collectionId, String imageId) async
    test('test deleteFirmware', () async {
      // TODO
    });

    // BETA: Remove a tagged firmware image
    //
    // Remove a tagged firmware image from the backing store and it's metadata
    //
    //Future<Object> deleteLabeledImage(String collectionId, String imageId) async
    test('test deleteLabeledImage', () async {
      // TODO
    });

    // Firmware usage
    //
    //Future<FirmwareUsageResponse> firmwareUsage(String collectionId, String imageId) async
    test('test firmwareUsage', () async {
      // TODO
    });

    // BETA: Get state for a single device
    //
    //Future<GetImageStateResponse> getImageState(String collectionId, String deviceId) async
    test('test getImageState', () async {
      // TODO
    });

    // List firmware
    //
    //Future<ListFirmwareResponse> listFirmware(String collectionId) async
    test('test listFirmware', () async {
      // TODO
    });

    // BETA: List image assignments plus states
    //
    // List the status for the labeled firmware images in the collection
    //
    //Future<ListImageStatesResponse> listImageStates(String collectionId) async
    test('test listImageStates', () async {
      // TODO
    });

    // BETA: List version history for a single device
    //
    //Future<ListImageVersionHistoryResponse> listImageVersionHistory(String collectionId, String deviceId) async
    test('test listImageVersionHistory', () async {
      // TODO
    });

    // BETA: List the labeled firmware images for a collection
    //
    //Future<ListLabeledFirmwareResponse> listLabeledFirmware(String collectionId) async
    test('test listLabeledFirmware', () async {
      // TODO
    });

    // Retrieve firmware
    //
    //Future<Firmware> retrieveFirmware(String collectionId, String imageId) async
    test('test retrieveFirmware', () async {
      // TODO
    });

    // Retrieve firmware statistics
    //
    //Future<FirmwareStats> retrieveFirmwareStats(String collectionId, String imageId) async
    test('test retrieveFirmwareStats', () async {
      // TODO
    });

    // Update firmware
    //
    // Only the version and tags fields can be updated. The other fields will be ignored.
    //
    //Future<Firmware> updateFirmware(String existingCollectionId, String imageId, UpdateFirmwareBody body) async
    test('test updateFirmware', () async {
      // TODO
    });
  });
}

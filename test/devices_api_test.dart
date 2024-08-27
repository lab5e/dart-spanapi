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

/// tests for DevicesApi
void main() {
  // final instance = DevicesApi();

  group('tests for DevicesApi', () {
    // Add message to oubox
    //
    // Add a new message in the outgoing queue to the device. If there is other messages in the outbox these messages will be sent first.
    //
    //Future<MessageDownstream> addDownstreamMessage(String collectionId, String deviceId, AddDownstreamMessageBody body) async
    test('test addDownstreamMessage', () async {
      // TODO
    });

    // Create device
    //
    //Future<Device> createDevice(String collectionId, CreateDeviceBody body) async
    test('test createDevice', () async {
      // TODO
    });

    // Remove device.
    //
    //Future<Device> deleteDevice(String collectionId, String deviceId) async
    test('test deleteDevice', () async {
      // TODO
    });

    // Delete outgoing message
    //
    // Delete an outgoing (ie downstream) message from the outbox.
    //
    //Future<DeleteDownstreamMessageResponse> deleteDownstreamMessage(String collectionId, String deviceId, String messageId) async
    test('test deleteDownstreamMessage', () async {
      // TODO
    });

    // Get issued certificate(s) for device
    //
    //Future<DeviceCertificateResponse> deviceCertificate(String collectionId, String deviceId) async
    test('test deviceCertificate', () async {
      // TODO
    });

    // Retrieve data from device
    //
    // List the data received from the device. Use the query parameters to control what data you retrieve. The maximum number of data points is 100.
    //
    //Future<ListDataResponse> listDeviceData(String collectionId, String deviceId, { int limit, String start, String end, String offset }) async
    test('test listDeviceData', () async {
      // TODO
    });

    // List devices in collection.
    //
    //Future<ListDevicesResponse> listDevices(String collectionId) async
    test('test listDevices', () async {
      // TODO
    });

    // List the messages in the outbox
    //
    // List messages that should be sent to the device when it connects to the service. The messages are sent to the device when it connects to the service and either sends a message (via UDP or CoAP) or requests a message via CoAP GET request.option
    //
    //Future<ListDownstreamMessagesResponse> listDownstreamMessages(String collectionId, String deviceId, { int limit, String start, String end, String offset }) async
    test('test listDownstreamMessages', () async {
      // TODO
    });

    // List incoming messages
    //
    // Retrieve a list of incoming (ie upstream) messages, ie messages sent from the device to the service. These messages are buffered in the service until they expire.  Use the query parameters to limit the number of messages to return. If no limit is specified the default limit of 250 is used.
    //
    //Future<ListUpstreamMessagesResponse> listUpstreamMessages(String collectionId, String deviceId, { int limit, String start, String end, String offset }) async
    test('test listUpstreamMessages', () async {
      // TODO
    });

    // Retrieve device
    //
    //Future<Device> retrieveDevice(String collectionId, String deviceId) async
    test('test retrieveDevice', () async {
      // TODO
    });

    // Retrieve device statistics
    //
    //Future<DeviceStats> retrieveDeviceStats(String collectionId, String deviceId) async
    test('test retrieveDeviceStats', () async {
      // TODO
    });

    // Update device
    //
    // The device can be moved from one collection to another by setting the collection ID field to the new collection. You must have administrative access to both collections. A note on gateway configurations: Empty gateway configuration blocks are deleted. If the configuration block contains a gateway ID it will be updated  with the new values. All values must be submitted in the request. If a device is moved out of the collection and it references a gateway in the configuration the operation will fail. Devices that are moved from one collection to another and references gateway configurations must be updated before they are moved.
    //
    //Future<Device> updateDevice(String existingCollectionId, String deviceId, UpdateDeviceBody body) async
    test('test updateDevice', () async {
      // TODO
    });
  });
}

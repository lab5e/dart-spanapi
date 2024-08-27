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

/// tests for GatewaysApi
void main() {
  // final instance = GatewaysApi();

  group('tests for GatewaysApi', () {
    // Create gateway
    //
    // Create a new gateway.
    //
    //Future<Gateway> createGateway(String collectionId, CreateGatewayBody body) async
    test('test createGateway', () async {
      // TODO
    });

    // Delete gateway
    //
    // Remove a gateway from Span.
    //
    //Future<Gateway> deleteGateway(String collectionId, String gatewayId) async
    test('test deleteGateway', () async {
      // TODO
    });

    // Get issued certificate(s) for gateway
    //
    //Future<GatewayCertificateResponse> gatewayCertificates(String collectionId, String gatewayId) async
    test('test gatewayCertificates', () async {
      // TODO
    });

    // List gateways
    //
    // List the user's gatways, including built-in gateways.
    //
    //Future<ListGatewayResponse> listGateways(String collectionId) async
    test('test listGateways', () async {
      // TODO
    });

    // Retrieve gateway
    //
    // Get gateway information
    //
    //Future<Gateway> retrieveGateway(String collectionId, String gatewayId) async
    test('test retrieveGateway', () async {
      // TODO
    });

    // Retrieve gateway statistics
    //
    // Get statistics for gateway
    //
    //Future<GatewayStats> retrieveGatewayStats(String collectionId, String gatewayId) async
    test('test retrieveGatewayStats', () async {
      // TODO
    });

    // Update gateway
    //
    // Update configuration for a gateway. If you want to remove or move a gateway from the collection the devices in the collection must not have any gateway configuration. The certificates for the gateway are unchanged when the gateway is moved.
    //
    //Future<Gateway> updateGateway(String existingCollectionId, String gatewayId, UpdateGatewayBody body) async
    test('test updateGateway', () async {
      // TODO
    });
  });
}

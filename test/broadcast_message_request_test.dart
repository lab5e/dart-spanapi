//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:spanapi/api.dart';
import 'package:test/test.dart';

// tests for BroadcastMessageRequest
void main() {
  final instance = BroadcastMessageRequest();

  group('test BroadcastMessageRequest', () {
    // String collectionId
    test('to test the property `collectionId`', () async {
      // TODO
    });

    // int port
    test('to test the property `port`', () async {
      // TODO
    });

    // String payload
    test('to test the property `payload`', () async {
      // TODO
    });

    // Valid transports are \"udp\", \"coap\", \"coap-pull\", \"udp-pull\", \"coap-push\", \"udp-push\". \"udp\" is equivalent to \"udp-push\" and \"coap\" is equivalent to \"coap-push\". Push messages are sent unsolicited to the device wheil pull messages are sent whenever the device wither sends data upstream (for UDP) or does a CoAP request to the CoAP service in span.
    // String transport
    test('to test the property `transport`', () async {
      // TODO
    });

    // String coapPath
    test('to test the property `coapPath`', () async {
      // TODO
    });
  });
}

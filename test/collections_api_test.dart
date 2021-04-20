//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:spanapi/api.dart';
import 'package:test/test.dart';


/// tests for CollectionsApi
void main() {
  final instance = CollectionsApi();

  group('tests for CollectionsApi', () {
    // Broadcast message
    //
    // Broadcast a message to all devices in the collection. This request will always succeed if the collection exists, even if there are one or more send errors. Individual errors are returned as an array of error messages in the response. Use equivalent to resource for devices to send a message to single device.
    //
    //Future<MultiSendMessageResponse> broadcastMessage(String collectionId, BroadcastMessageRequest body) async
    test('test broadcastMessage', () async {
      // TODO
    });

    // Create collection
    //
    // The returned collection is the collection stored in the backend. Defaults have been set. There are no required fields in a collection
    //
    //Future<Collection> createCollection(Collection body) async
    test('test createCollection', () async {
      // TODO
    });

    // Delete collection
    //
    // You must have write access to the collection
    //
    //Future<Collection> deleteCollection(String collectionId) async
    test('test deleteCollection', () async {
      // TODO
    });

    // Get payloads
    //
    // List the data received from all the devices in the collection.
    //
    //Future<ListDataResponse> listCollectionData(String collectionId, { int limit, String start, String end, String offset }) async
    test('test listCollectionData', () async {
      // TODO
    });

    // List collections
    //
    // Lists all the collections that one of your teams owns.
    //
    //Future<ListCollectionResponse> listCollections() async
    test('test listCollections', () async {
      // TODO
    });

    // Retrieve collection
    //
    //Future<Collection> retrieveCollection(String collectionId) async
    test('test retrieveCollection', () async {
      // TODO
    });

    // Update collection
    //
    // You must have write access to the collection, ie. you must administer it
    //
    //Future<Collection> updateCollection(String collectionId, Collection body) async
    test('test updateCollection', () async {
      // TODO
    });

  });
}

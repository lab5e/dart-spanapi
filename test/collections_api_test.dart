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

/// tests for CollectionsApi
void main() {
  // final instance = CollectionsApi();

  group('tests for CollectionsApi', () {
    // Create collection
    //
    // Create a new collection
    //
    //Future<Collection> createCollection(CreateCollectionRequest body) async
    test('test createCollection', () async {
      // TODO
    });

    // Delete collection
    //
    // Remove the collection. Devices, firmware images, outputs and all other related resources must be removed from the collection before it can be deleted.
    //
    //Future<Collection> deleteCollection(String collectionId) async
    test('test deleteCollection', () async {
      // TODO
    });

    // Retrieve data from devices
    //
    // Retrieve data sent by the devices in the collection. The maximum number of data points is 100.
    //
    //Future<ListDataResponse> listCollectionData(String collectionId, { int limit, String start, String end, String offset }) async
    test('test listCollectionData', () async {
      // TODO
    });

    // List collections
    //
    // Lists all the collections that one of your teams owns. The collections returned includes only the data on the collection and not the summary information
    //
    //Future<ListCollectionResponse> listCollections() async
    test('test listCollections', () async {
      // TODO
    });

    // Retrieve collection
    //
    // Retrieve collection information. This includes a list of the most recent messages in the inbox. The upstream and downstream parameters are optional and if set to true will include the timestamps for up to 100 messages up- and downstream for the last hour.
    //
    //Future<Collection> retrieveCollection(String collectionId, { bool upstream, bool downstream }) async
    test('test retrieveCollection', () async {
      // TODO
    });

    // Retrieve collection statistics
    //
    // Retrieve statistics for the collection. This is the aggregated metrics for devices, outputs, firmware images, blobs and gateways in the collection
    //
    //Future<CollectionStats> retrieveCollectionStats(String collectionId) async
    test('test retrieveCollectionStats', () async {
      // TODO
    });

    // Update collection
    //
    // Update a collection.
    //
    //Future<Collection> updateCollection(String collectionId, UpdateCollectionRequest body) async
    test('test updateCollection', () async {
      // TODO
    });
  });
}

import 'dart:io';

import 'package:spanapi/api.dart';

void main(List<String> args) {
  if (args.length == 0) {
    print('Needs a token parameter');
    return;
  }
  // Expect the first parameter to be the token
  final token = args[0];

  // Create the API client
  var client = ApiClient();

  // Set the token parameter for the client.
  client.addDefaultHeader("X-API-Token", token);

  // Get the user profile from the API
  var collectionsApi = CollectionsApi(client);
  collectionsApi
      .listCollections()
      .then((value) => displayCollections(value!))
      .catchError((error) => print('Got error $error'))
      .whenComplete(() => exit(0));
}

void displayCollections(ListCollectionResponse value) {
  for (var c in value.collections) {
    print('Collection ID is ${c.collectionId}');
  }
}

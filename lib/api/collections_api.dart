//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;


class CollectionsApi {
  CollectionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Broadcast message
  ///
  /// Broadcast a message to all devices in the collection. This request will always succeed if the collection exists, even if there are one or more send errors. Individual errors are returned as an array of error messages in the response. Use equivalent to resource for devices to send a message to single device.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [BroadcastMessageRequest] body (required):
  Future<Response> spanBroadcastMessageWithHttpInfo(String collectionId, BroadcastMessageRequest body) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/collections/{collectionId}/to'
      .replaceAll('{' + 'collectionId' + '}', collectionId.toString());

    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Broadcast message
  ///
  /// Broadcast a message to all devices in the collection. This request will always succeed if the collection exists, even if there are one or more send errors. Individual errors are returned as an array of error messages in the response. Use equivalent to resource for devices to send a message to single device.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [BroadcastMessageRequest] body (required):
  Future<MultiSendMessageResponse> spanBroadcastMessage(String collectionId, BroadcastMessageRequest body) async {
    final response = await spanBroadcastMessageWithHttpInfo(collectionId, body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'MultiSendMessageResponse') as MultiSendMessageResponse;
        }
    return Future<MultiSendMessageResponse>.value(null);
  }

  /// Create collection
  ///
  /// The returned collection is the collection stored in the backend. Defaults have been set. There are no required fields in a collection
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Collection] body (required):
  Future<Response> spanCreateCollectionWithHttpInfo(Collection body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/collections';

    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Create collection
  ///
  /// The returned collection is the collection stored in the backend. Defaults have been set. There are no required fields in a collection
  ///
  /// Parameters:
  ///
  /// * [Collection] body (required):
  Future<Collection> spanCreateCollection(Collection body) async {
    final response = await spanCreateCollectionWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Collection') as Collection;
        }
    return Future<Collection>.value(null);
  }

  /// Delete collection
  ///
  /// You must have write access to the collection
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   The ID of the collection you want to delete
  Future<Response> spanDeleteCollectionWithHttpInfo(String collectionId) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }

    final path = r'/collections/{collectionId}'
      .replaceAll('{' + 'collectionId' + '}', collectionId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Delete collection
  ///
  /// You must have write access to the collection
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   The ID of the collection you want to delete
  Future<Collection> spanDeleteCollection(String collectionId) async {
    final response = await spanDeleteCollectionWithHttpInfo(collectionId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Collection') as Collection;
        }
    return Future<Collection>.value(null);
  }

  /// Get payloads
  ///
  /// List the data received from all the devices in the collection.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   The collection ID requested. This is included in the request path.
  ///
  /// * [int] limit:
  ///   Limit the number of payloads to return. The default is 512.
  ///
  /// * [String] start:
  ///   Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch.
  ///
  /// * [String] end:
  ///   End of time range. The default is the current time stamp. Value is in milliseconds since epoch.
  ///
  /// * [String] offset:
  ///   The message offset based on the message ID. This parameter can't be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned.
  Future<Response> spanListCollectionDataWithHttpInfo(String collectionId, { int limit, String start, String end, String offset }) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }

    final path = r'/collections/{collectionId}/data'
      .replaceAll('{' + 'collectionId' + '}', collectionId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (start != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'end', end));
    }
    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get payloads
  ///
  /// List the data received from all the devices in the collection.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   The collection ID requested. This is included in the request path.
  ///
  /// * [int] limit:
  ///   Limit the number of payloads to return. The default is 512.
  ///
  /// * [String] start:
  ///   Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch.
  ///
  /// * [String] end:
  ///   End of time range. The default is the current time stamp. Value is in milliseconds since epoch.
  ///
  /// * [String] offset:
  ///   The message offset based on the message ID. This parameter can't be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned.
  Future<ListDataResponse> spanListCollectionData(String collectionId, { int limit, String start, String end, String offset }) async {
    final response = await spanListCollectionDataWithHttpInfo(collectionId,  limit: limit, start: start, end: end, offset: offset );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ListDataResponse') as ListDataResponse;
        }
    return Future<ListDataResponse>.value(null);
  }

  /// List collections
  ///
  /// Lists all the collections that one of your teams owns.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> spanListCollectionsWithHttpInfo() async {
    final path = r'/collections';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// List collections
  ///
  /// Lists all the collections that one of your teams owns.
  Future<ListCollectionResponse> spanListCollections() async {
    final response = await spanListCollectionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ListCollectionResponse') as ListCollectionResponse;
        }
    return Future<ListCollectionResponse>.value(null);
  }

  /// Retrieve collection
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   The collection ID of the collection you are requesting
  Future<Response> spanRetrieveCollectionWithHttpInfo(String collectionId) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }

    final path = r'/collections/{collectionId}'
      .replaceAll('{' + 'collectionId' + '}', collectionId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Retrieve collection
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   The collection ID of the collection you are requesting
  Future<Collection> spanRetrieveCollection(String collectionId) async {
    final response = await spanRetrieveCollectionWithHttpInfo(collectionId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Collection') as Collection;
        }
    return Future<Collection>.value(null);
  }

  /// Update collection
  ///
  /// You must have write access to the collection, ie. you must administer it
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   The ID of the collection. This is assigned by the backend.
  ///
  /// * [Collection] body (required):
  Future<Response> spanUpdateCollectionWithHttpInfo(String collectionId, Collection body) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/collections/{collectionId}'
      .replaceAll('{' + 'collectionId' + '}', collectionId.toString());

    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Update collection
  ///
  /// You must have write access to the collection, ie. you must administer it
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   The ID of the collection. This is assigned by the backend.
  ///
  /// * [Collection] body (required):
  Future<Collection> spanUpdateCollection(String collectionId, Collection body) async {
    final response = await spanUpdateCollectionWithHttpInfo(collectionId, body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Collection') as Collection;
        }
    return Future<Collection>.value(null);
  }
}

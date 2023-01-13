//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class CollectionsApi {
  CollectionsApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create collection
  ///
  /// Create a new collection
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateCollectionRequest] body (required):
  ///   Request object when creating a collection. The collect ID is assigned by the service.
  Future<Response> createCollectionWithHttpInfo(
    CreateCollectionRequest body,
  ) async {
    // Verify required params are set.
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections';

    // ignore: prefer_final_locals
    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['APIToken'];
    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Create collection
  ///
  /// Create a new collection
  ///
  /// Parameters:
  ///
  /// * [CreateCollectionRequest] body (required):
  ///   Request object when creating a collection. The collect ID is assigned by the service.
  Future<Collection> createCollection(
    CreateCollectionRequest body,
  ) async {
    final response = await createCollectionWithHttpInfo(
      body,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Collection',
      ) as Collection;
    }
    return Future<Collection>.value();
  }

  /// Delete collection
  ///
  /// Remove the collection. Devices, firmware images, outputs and all other related resources must be removed from the collection before it can be deleted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   The ID of the collection you want to delete
  Future<Response> deleteCollectionWithHttpInfo(
    String collectionId,
  ) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}'
        .replaceAll('{collectionId}', collectionId);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['APIToken'];
    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Delete collection
  ///
  /// Remove the collection. Devices, firmware images, outputs and all other related resources must be removed from the collection before it can be deleted.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   The ID of the collection you want to delete
  Future<Collection> deleteCollection(
    String collectionId,
  ) async {
    final response = await deleteCollectionWithHttpInfo(
      collectionId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Collection',
      ) as Collection;
    }
    return Future<Collection>.value();
  }

  /// Retrieve data from devices
  ///
  /// Retrieve data sent by the devices in the collection. The maximum number of data points is 100.
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
  Future<Response> listCollectionDataWithHttpInfo(
    String collectionId, {
    int limit,
    String start,
    String end,
    String offset,
  }) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/data'
        .replaceAll('{collectionId}', collectionId);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (start != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'end', end));
    }
    if (offset != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }

    const authNames = <String>['APIToken'];
    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve data from devices
  ///
  /// Retrieve data sent by the devices in the collection. The maximum number of data points is 100.
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
  Future<ListDataResponse> listCollectionData(
    String collectionId, {
    int limit,
    String start,
    String end,
    String offset,
  }) async {
    final response = await listCollectionDataWithHttpInfo(
      collectionId,
      limit: limit,
      start: start,
      end: end,
      offset: offset,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ListDataResponse',
      ) as ListDataResponse;
    }
    return Future<ListDataResponse>.value();
  }

  /// List collections
  ///
  /// Lists all the collections that one of your teams owns.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listCollectionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['APIToken'];
    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// List collections
  ///
  /// Lists all the collections that one of your teams owns.
  Future<ListCollectionResponse> listCollections() async {
    final response = await listCollectionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ListCollectionResponse',
      ) as ListCollectionResponse;
    }
    return Future<ListCollectionResponse>.value();
  }

  /// Retrieve collection
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   The collection ID of the collection you are requesting
  Future<Response> retrieveCollectionWithHttpInfo(
    String collectionId,
  ) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}'
        .replaceAll('{collectionId}', collectionId);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['APIToken'];
    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Retrieve collection
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   The collection ID of the collection you are requesting
  Future<Collection> retrieveCollection(
    String collectionId,
  ) async {
    final response = await retrieveCollectionWithHttpInfo(
      collectionId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Collection',
      ) as Collection;
    }
    return Future<Collection>.value();
  }

  /// Update collection
  ///
  /// Update a collection.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   The ID of the collection. This is assigned by the backend.
  ///
  /// * [UpdateCollectionRequest] body (required):
  Future<Response> updateCollectionWithHttpInfo(
    String collectionId,
    UpdateCollectionRequest body,
  ) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}'
        .replaceAll('{collectionId}', collectionId);

    // ignore: prefer_final_locals
    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['APIToken'];
    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Update collection
  ///
  /// Update a collection.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   The ID of the collection. This is assigned by the backend.
  ///
  /// * [UpdateCollectionRequest] body (required):
  Future<Collection> updateCollection(
    String collectionId,
    UpdateCollectionRequest body,
  ) async {
    final response = await updateCollectionWithHttpInfo(
      collectionId,
      body,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Collection',
      ) as Collection;
    }
    return Future<Collection>.value();
  }
}

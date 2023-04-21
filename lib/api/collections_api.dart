//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class CollectionsApi {
  CollectionsApi([ApiClient? apiClient])
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
    // ignore: prefer_const_declarations
    final path = r'/span/collections';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
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
  Future<Collection?> createCollection(
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
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Collection',
      ) as Collection;
    }
    return null;
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
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}'
        .replaceAll('{collectionId}', collectionId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
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
  Future<Collection?> deleteCollection(
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
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Collection',
      ) as Collection;
    }
    return null;
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
    int? limit,
    String? start,
    String? end,
    String? offset,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/data'
        .replaceAll('{collectionId}', collectionId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
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
  Future<ListDataResponse?> listCollectionData(
    String collectionId, {
    int? limit,
    String? start,
    String? end,
    String? offset,
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
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ListDataResponse',
      ) as ListDataResponse;
    }
    return null;
  }

  /// List collections
  ///
  /// Lists all the collections that one of your teams owns. The collections returned includes only the data on the collection and not the summary information
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listCollectionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List collections
  ///
  /// Lists all the collections that one of your teams owns. The collections returned includes only the data on the collection and not the summary information
  Future<ListCollectionResponse?> listCollections() async {
    final response = await listCollectionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ListCollectionResponse',
      ) as ListCollectionResponse;
    }
    return null;
  }

  /// Retrieve collection
  ///
  /// Retrieve collection information. This includes a list of the most recent messages in the inbox. The upstream and downstream parameters are optional and if set to true will include the timestamps for up to 100 messages up- and downstream for the last hour.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   The collection ID of the collection you are requesting
  ///
  /// * [bool] upstream:
  ///
  /// * [bool] downstream:
  Future<Response> retrieveCollectionWithHttpInfo(
    String collectionId, {
    bool? upstream,
    bool? downstream,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}'
        .replaceAll('{collectionId}', collectionId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (upstream != null) {
      queryParams.addAll(_queryParams('', 'upstream', upstream));
    }
    if (downstream != null) {
      queryParams.addAll(_queryParams('', 'downstream', downstream));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Retrieve collection
  ///
  /// Retrieve collection information. This includes a list of the most recent messages in the inbox. The upstream and downstream parameters are optional and if set to true will include the timestamps for up to 100 messages up- and downstream for the last hour.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   The collection ID of the collection you are requesting
  ///
  /// * [bool] upstream:
  ///
  /// * [bool] downstream:
  Future<Collection?> retrieveCollection(
    String collectionId, {
    bool? upstream,
    bool? downstream,
  }) async {
    final response = await retrieveCollectionWithHttpInfo(
      collectionId,
      upstream: upstream,
      downstream: downstream,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Collection',
      ) as Collection;
    }
    return null;
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
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}'
        .replaceAll('{collectionId}', collectionId);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
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
  Future<Collection?> updateCollection(
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
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Collection',
      ) as Collection;
    }
    return null;
  }
}

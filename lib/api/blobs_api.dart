//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class BlobsApi {
  BlobsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Remove a blob stored on a collection
  ///
  /// Remove a blob stored on the collection.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] blobId (required):
  Future<Response> deleteBlobWithHttpInfo(
    String collectionId,
    String blobId,
  ) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (blobId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: blobId');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/blobs/{blobId}'
        .replaceAll('{collectionId}', collectionId)
        .replaceAll('{blobId}', blobId);

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

  /// Remove a blob stored on a collection
  ///
  /// Remove a blob stored on the collection.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] blobId (required):
  Future<Object> deleteBlob(
    String collectionId,
    String blobId,
  ) async {
    final response = await deleteBlobWithHttpInfo(
      collectionId,
      blobId,
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
        'Object',
      ) as Object;
    }
    return Future<Object>.value();
  }

  /// List the blobs for a collection
  ///
  /// Retrieve a list of all the blobs stored on this collection. Blobs are uploaded by the devices through one of the blob endpoints.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [int] limit:
  Future<Response> listBlobsWithHttpInfo(
    String collectionId, {
    int limit,
  }) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/blobs'
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

  /// List the blobs for a collection
  ///
  /// Retrieve a list of all the blobs stored on this collection. Blobs are uploaded by the devices through one of the blob endpoints.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [int] limit:
  Future<ListBlobResponse> listBlobs(
    String collectionId, {
    int limit,
  }) async {
    final response = await listBlobsWithHttpInfo(
      collectionId,
      limit: limit,
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
        'ListBlobResponse',
      ) as ListBlobResponse;
    }
    return Future<ListBlobResponse>.value();
  }
}

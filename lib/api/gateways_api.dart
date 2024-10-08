//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class GatewaysApi {
  GatewaysApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create gateway
  ///
  /// Create a new gateway.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [CreateGatewayBody] body (required):
  Future<Response> createGatewayWithHttpInfo(
    String collectionId,
    CreateGatewayBody body,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/gateways'
        .replaceAll('{collectionId}', collectionId);

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

  /// Create gateway
  ///
  /// Create a new gateway.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [CreateGatewayBody] body (required):
  Future<Gateway?> createGateway(
    String collectionId,
    CreateGatewayBody body,
  ) async {
    final response = await createGatewayWithHttpInfo(
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
        'Gateway',
      ) as Gateway;
    }
    return null;
  }

  /// Delete gateway
  ///
  /// Remove a gateway from Span.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] gatewayId (required):
  Future<Response> deleteGatewayWithHttpInfo(
    String collectionId,
    String gatewayId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/gateways/{gatewayId}'
        .replaceAll('{collectionId}', collectionId)
        .replaceAll('{gatewayId}', gatewayId);

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

  /// Delete gateway
  ///
  /// Remove a gateway from Span.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] gatewayId (required):
  Future<Gateway?> deleteGateway(
    String collectionId,
    String gatewayId,
  ) async {
    final response = await deleteGatewayWithHttpInfo(
      collectionId,
      gatewayId,
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
        'Gateway',
      ) as Gateway;
    }
    return null;
  }

  /// Get issued certificate(s) for gateway
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] gatewayId (required):
  Future<Response> gatewayCertificatesWithHttpInfo(
    String collectionId,
    String gatewayId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/gateways/{gatewayId}/certs'
        .replaceAll('{collectionId}', collectionId)
        .replaceAll('{gatewayId}', gatewayId);

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

  /// Get issued certificate(s) for gateway
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] gatewayId (required):
  Future<GatewayCertificateResponse?> gatewayCertificates(
    String collectionId,
    String gatewayId,
  ) async {
    final response = await gatewayCertificatesWithHttpInfo(
      collectionId,
      gatewayId,
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
        'GatewayCertificateResponse',
      ) as GatewayCertificateResponse;
    }
    return null;
  }

  /// List gateways
  ///
  /// List the user's gatways, including built-in gateways.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  Future<Response> listGatewaysWithHttpInfo(
    String collectionId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/gateways'
        .replaceAll('{collectionId}', collectionId);

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

  /// List gateways
  ///
  /// List the user's gatways, including built-in gateways.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  Future<ListGatewayResponse?> listGateways(
    String collectionId,
  ) async {
    final response = await listGatewaysWithHttpInfo(
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
        'ListGatewayResponse',
      ) as ListGatewayResponse;
    }
    return null;
  }

  /// Retrieve gateway
  ///
  /// Get gateway information
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] gatewayId (required):
  Future<Response> retrieveGatewayWithHttpInfo(
    String collectionId,
    String gatewayId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/gateways/{gatewayId}'
        .replaceAll('{collectionId}', collectionId)
        .replaceAll('{gatewayId}', gatewayId);

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

  /// Retrieve gateway
  ///
  /// Get gateway information
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] gatewayId (required):
  Future<Gateway?> retrieveGateway(
    String collectionId,
    String gatewayId,
  ) async {
    final response = await retrieveGatewayWithHttpInfo(
      collectionId,
      gatewayId,
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
        'Gateway',
      ) as Gateway;
    }
    return null;
  }

  /// Retrieve gateway statistics
  ///
  /// Get statistics for gateway
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] gatewayId (required):
  Future<Response> retrieveGatewayStatsWithHttpInfo(
    String collectionId,
    String gatewayId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/gateways/{gatewayId}/stats'
        .replaceAll('{collectionId}', collectionId)
        .replaceAll('{gatewayId}', gatewayId);

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

  /// Retrieve gateway statistics
  ///
  /// Get statistics for gateway
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] gatewayId (required):
  Future<GatewayStats?> retrieveGatewayStats(
    String collectionId,
    String gatewayId,
  ) async {
    final response = await retrieveGatewayStatsWithHttpInfo(
      collectionId,
      gatewayId,
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
        'GatewayStats',
      ) as GatewayStats;
    }
    return null;
  }

  /// Update gateway
  ///
  /// Update configuration for a gateway. If you want to remove or move a gateway from the collection the devices in the collection must not have any gateway configuration. The certificates for the gateway are unchanged when the gateway is moved.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] existingCollectionId (required):
  ///
  /// * [String] gatewayId (required):
  ///
  /// * [UpdateGatewayBody] body (required):
  Future<Response> updateGatewayWithHttpInfo(
    String existingCollectionId,
    String gatewayId,
    UpdateGatewayBody body,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/span/collections/{existingCollectionId}/gateways/{gatewayId}'
            .replaceAll('{existingCollectionId}', existingCollectionId)
            .replaceAll('{gatewayId}', gatewayId);

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

  /// Update gateway
  ///
  /// Update configuration for a gateway. If you want to remove or move a gateway from the collection the devices in the collection must not have any gateway configuration. The certificates for the gateway are unchanged when the gateway is moved.
  ///
  /// Parameters:
  ///
  /// * [String] existingCollectionId (required):
  ///
  /// * [String] gatewayId (required):
  ///
  /// * [UpdateGatewayBody] body (required):
  Future<Gateway?> updateGateway(
    String existingCollectionId,
    String gatewayId,
    UpdateGatewayBody body,
  ) async {
    final response = await updateGatewayWithHttpInfo(
      existingCollectionId,
      gatewayId,
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
        'Gateway',
      ) as Gateway;
    }
    return null;
  }
}

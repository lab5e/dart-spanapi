//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;


class GatewaysApi {
  GatewaysApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  /// * [InlineObject] body (required):
  Future<Response> createGatewayWithHttpInfo(String collectionId, InlineObject body,) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/gateways'
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
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
  /// * [InlineObject] body (required):
  Future<Gateway> createGateway(String collectionId, InlineObject body,) async {
    final response = await createGatewayWithHttpInfo(collectionId, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Gateway',) as Gateway;
    
    }
    return Future<Gateway>.value();
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
  Future<Response> deleteGatewayWithHttpInfo(String collectionId, String gatewayId,) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (gatewayId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: gatewayId');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/gateways/{gatewayId}'
      .replaceAll('{collectionId}', collectionId)
      .replaceAll('{gatewayId}', gatewayId);

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

  /// Delete gateway
  ///
  /// Remove a gateway from Span.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] gatewayId (required):
  Future<Gateway> deleteGateway(String collectionId, String gatewayId,) async {
    final response = await deleteGatewayWithHttpInfo(collectionId, gatewayId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Gateway',) as Gateway;
    
    }
    return Future<Gateway>.value();
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
  Future<Response> gatewayCertificatesWithHttpInfo(String collectionId, String gatewayId,) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (gatewayId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: gatewayId');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/gateways/{gatewayId}/certs'
      .replaceAll('{collectionId}', collectionId)
      .replaceAll('{gatewayId}', gatewayId);

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

  /// Get issued certificate(s) for gateway
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] gatewayId (required):
  Future<GatewayCertificateResponse> gatewayCertificates(String collectionId, String gatewayId,) async {
    final response = await gatewayCertificatesWithHttpInfo(collectionId, gatewayId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GatewayCertificateResponse',) as GatewayCertificateResponse;
    
    }
    return Future<GatewayCertificateResponse>.value();
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
  Future<Response> listGatewaysWithHttpInfo(String collectionId,) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/gateways'
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

  /// List gateways
  ///
  /// List the user's gatways, including built-in gateways.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  Future<ListGatewayResponse> listGateways(String collectionId,) async {
    final response = await listGatewaysWithHttpInfo(collectionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListGatewayResponse',) as ListGatewayResponse;
    
    }
    return Future<ListGatewayResponse>.value();
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
  Future<Response> retrieveGatewayWithHttpInfo(String collectionId, String gatewayId,) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (gatewayId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: gatewayId');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/gateways/{gatewayId}'
      .replaceAll('{collectionId}', collectionId)
      .replaceAll('{gatewayId}', gatewayId);

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

  /// Retrieve gateway
  ///
  /// Get gateway information
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] gatewayId (required):
  Future<Gateway> retrieveGateway(String collectionId, String gatewayId,) async {
    final response = await retrieveGatewayWithHttpInfo(collectionId, gatewayId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Gateway',) as Gateway;
    
    }
    return Future<Gateway>.value();
  }

  /// Update gateway
  ///
  /// Update a gateway in Span
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] existingCollectionId (required):
  ///
  /// * [String] gatewayId (required):
  ///
  /// * [InlineObject1] body (required):
  Future<Response> updateGatewayWithHttpInfo(String existingCollectionId, String gatewayId, InlineObject1 body,) async {
    // Verify required params are set.
    if (existingCollectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: existingCollectionId');
    }
    if (gatewayId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: gatewayId');
    }
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{existingCollectionId}/gateways/{gatewayId}'
      .replaceAll('{existingCollectionId}', existingCollectionId)
      .replaceAll('{gatewayId}', gatewayId);

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

  /// Update gateway
  ///
  /// Update a gateway in Span
  ///
  /// Parameters:
  ///
  /// * [String] existingCollectionId (required):
  ///
  /// * [String] gatewayId (required):
  ///
  /// * [InlineObject1] body (required):
  Future<Gateway> updateGateway(String existingCollectionId, String gatewayId, InlineObject1 body,) async {
    final response = await updateGatewayWithHttpInfo(existingCollectionId, gatewayId, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Gateway',) as Gateway;
    
    }
    return Future<Gateway>.value();
  }
}

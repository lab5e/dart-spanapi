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
  GatewaysApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List gateways
  ///
  /// List the gatways for the network. Some of the gatways are built into Span and can't be deleted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] networkId (required):
  Future<Response> listGatewaysWithHttpInfo(
    String networkId,
  ) async {
    // Verify required params are set.
    if (networkId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: networkId');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/networks/{networkId}/gateways'
        .replaceAll('{networkId}', networkId);

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
  /// List the gatways for the network. Some of the gatways are built into Span and can't be deleted.
  ///
  /// Parameters:
  ///
  /// * [String] networkId (required):
  Future<ListGatewayResponse> listGateways(
    String networkId,
  ) async {
    final response = await listGatewaysWithHttpInfo(
      networkId,
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
        'ListGatewayResponse',
      ) as ListGatewayResponse;
    }
    return Future<ListGatewayResponse>.value();
  }

  /// List networks
  ///
  /// List networks available to the collection. This will include the built-in networks in Span.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listNetworksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/span/networks';

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

  /// List networks
  ///
  /// List networks available to the collection. This will include the built-in networks in Span.
  Future<ListNetworkResponse> listNetworks() async {
    final response = await listNetworksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ListNetworkResponse',
      ) as ListNetworkResponse;
    }
    return Future<ListNetworkResponse>.value();
  }

  /// Retrieve gateway
  ///
  /// Get gateway information
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] networkId (required):
  ///
  /// * [String] gatewayId (required):
  Future<Response> retrieveGatewayWithHttpInfo(
    String networkId,
    String gatewayId,
  ) async {
    // Verify required params are set.
    if (networkId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: networkId');
    }
    if (gatewayId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: gatewayId');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/networks/{networkId}/gateways/{gatewayId}'
        .replaceAll('{networkId}', networkId)
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
  /// * [String] networkId (required):
  ///
  /// * [String] gatewayId (required):
  Future<Gateway> retrieveGateway(
    String networkId,
    String gatewayId,
  ) async {
    final response = await retrieveGatewayWithHttpInfo(
      networkId,
      gatewayId,
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
        'Gateway',
      ) as Gateway;
    }
    return Future<Gateway>.value();
  }
}

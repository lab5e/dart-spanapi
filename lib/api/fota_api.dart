//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;


class FotaApi {
  FotaApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Clear FOTA error
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  Future<Response> clearFirmwareErrorWithHttpInfo(String collectionId, String deviceId,) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (deviceId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: deviceId');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/devices/{deviceId}/fwerror'
      .replaceAll('{collectionId}', collectionId)
      .replaceAll('{deviceId}', deviceId);

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

  /// Clear FOTA error
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  Future<ClearFirmwareErrorResponse> clearFirmwareError(String collectionId, String deviceId,) async {
    final response = await clearFirmwareErrorWithHttpInfo(collectionId, deviceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClearFirmwareErrorResponse',) as ClearFirmwareErrorResponse;
    
    }
    return Future<ClearFirmwareErrorResponse>.value();
  }

  /// Create firmware
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [CreateFirmwareRequest] body (required):
  Future<Response> createFirmwareWithHttpInfo(String collectionId, CreateFirmwareRequest body,) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/firmware'
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

  /// Create firmware
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [CreateFirmwareRequest] body (required):
  Future<Firmware> createFirmware(String collectionId, CreateFirmwareRequest body,) async {
    final response = await createFirmwareWithHttpInfo(collectionId, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Firmware',) as Firmware;
    
    }
    return Future<Firmware>.value();
  }

  /// Delete firmware
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] imageId (required):
  Future<Response> deleteFirmwareWithHttpInfo(String collectionId, String imageId,) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (imageId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: imageId');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/firmware/{imageId}'
      .replaceAll('{collectionId}', collectionId)
      .replaceAll('{imageId}', imageId);

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

  /// Delete firmware
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] imageId (required):
  Future<Firmware> deleteFirmware(String collectionId, String imageId,) async {
    final response = await deleteFirmwareWithHttpInfo(collectionId, imageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Firmware',) as Firmware;
    
    }
    return Future<Firmware>.value();
  }

  /// Firmware usage
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] imageId (required):
  Future<Response> firmwareUsageWithHttpInfo(String collectionId, String imageId,) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (imageId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: imageId');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/firmware/{imageId}/usage'
      .replaceAll('{collectionId}', collectionId)
      .replaceAll('{imageId}', imageId);

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

  /// Firmware usage
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] imageId (required):
  Future<FirmwareUsageResponse> firmwareUsage(String collectionId, String imageId,) async {
    final response = await firmwareUsageWithHttpInfo(collectionId, imageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FirmwareUsageResponse',) as FirmwareUsageResponse;
    
    }
    return Future<FirmwareUsageResponse>.value();
  }

  /// List firmware
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  Future<Response> listFirmwareWithHttpInfo(String collectionId,) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/firmware'
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

  /// List firmware
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  Future<ListFirmwareResponse> listFirmware(String collectionId,) async {
    final response = await listFirmwareWithHttpInfo(collectionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListFirmwareResponse',) as ListFirmwareResponse;
    
    }
    return Future<ListFirmwareResponse>.value();
  }

  /// Retrieve firmware
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] imageId (required):
  Future<Response> retrieveFirmwareWithHttpInfo(String collectionId, String imageId,) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (imageId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: imageId');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/firmware/{imageId}'
      .replaceAll('{collectionId}', collectionId)
      .replaceAll('{imageId}', imageId);

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

  /// Retrieve firmware
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] imageId (required):
  Future<Firmware> retrieveFirmware(String collectionId, String imageId,) async {
    final response = await retrieveFirmwareWithHttpInfo(collectionId, imageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Firmware',) as Firmware;
    
    }
    return Future<Firmware>.value();
  }

  /// Update firmware
  ///
  /// Only the version and tags fields can be updated. The other fields will be ignored.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] existingCollectionId (required):
  ///
  /// * [String] imageId (required):
  ///
  /// * [UpdateFirmwareRequest] body (required):
  Future<Response> updateFirmwareWithHttpInfo(String existingCollectionId, String imageId, UpdateFirmwareRequest body,) async {
    // Verify required params are set.
    if (existingCollectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: existingCollectionId');
    }
    if (imageId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: imageId');
    }
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{existingCollectionId}/firmware/{imageId}'
      .replaceAll('{existingCollectionId}', existingCollectionId)
      .replaceAll('{imageId}', imageId);

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

  /// Update firmware
  ///
  /// Only the version and tags fields can be updated. The other fields will be ignored.
  ///
  /// Parameters:
  ///
  /// * [String] existingCollectionId (required):
  ///
  /// * [String] imageId (required):
  ///
  /// * [UpdateFirmwareRequest] body (required):
  Future<Firmware> updateFirmware(String existingCollectionId, String imageId, UpdateFirmwareRequest body,) async {
    final response = await updateFirmwareWithHttpInfo(existingCollectionId, imageId, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Firmware',) as Firmware;
    
    }
    return Future<Firmware>.value();
  }
}

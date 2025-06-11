//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class FotaApi {
  FotaApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// BETA: Assign a target image
  ///
  /// Assign a particular labeled image to a device or a collection
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] imageId (required):
  ///
  /// * [String] label:
  ///
  /// * [String] deviceId:
  Future<Response> assignTargetImageWithHttpInfo(
    String collectionId,
    String imageId, {
    String? label,
    String? deviceId,
  }) async {
    // ignore: prefer_const_declarations
    final path =
        r'/span/collections/{collectionId}/firmware/labeled/{imageId}/assign'
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{imageId}', imageId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (label != null) {
      queryParams.addAll(_queryParams('', 'label', label));
    }
    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }

    const contentTypes = <String>[];

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

  /// BETA: Assign a target image
  ///
  /// Assign a particular labeled image to a device or a collection
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] imageId (required):
  ///
  /// * [String] label:
  ///
  /// * [String] deviceId:
  Future<AssignTargetImageResponse?> assignTargetImage(
    String collectionId,
    String imageId, {
    String? label,
    String? deviceId,
  }) async {
    final response = await assignTargetImageWithHttpInfo(
      collectionId,
      imageId,
      label: label,
      deviceId: deviceId,
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
        'AssignTargetImageResponse',
      ) as AssignTargetImageResponse;
    }
    return null;
  }

  /// Clear FOTA error
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  Future<Response> clearFirmwareErrorWithHttpInfo(
    String collectionId,
    String deviceId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/devices/{deviceId}/fwerror'
        .replaceAll('{collectionId}', collectionId)
        .replaceAll('{deviceId}', deviceId);

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

  /// Clear FOTA error
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  Future<ClearFirmwareErrorResponse?> clearFirmwareError(
    String collectionId,
    String deviceId,
  ) async {
    final response = await clearFirmwareErrorWithHttpInfo(
      collectionId,
      deviceId,
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
        'ClearFirmwareErrorResponse',
      ) as ClearFirmwareErrorResponse;
    }
    return null;
  }

  /// Create firmware
  ///
  /// Firmware images must have unique version numbers and have an unique checksum. The checksum is calculated when the firmware image is uploaded.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [CreateFirmwareBody] body (required):
  Future<Response> createFirmwareWithHttpInfo(
    String collectionId,
    CreateFirmwareBody body,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/firmware'
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

  /// Create firmware
  ///
  /// Firmware images must have unique version numbers and have an unique checksum. The checksum is calculated when the firmware image is uploaded.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [CreateFirmwareBody] body (required):
  Future<Firmware?> createFirmware(
    String collectionId,
    CreateFirmwareBody body,
  ) async {
    final response = await createFirmwareWithHttpInfo(
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
        'Firmware',
      ) as Firmware;
    }
    return null;
  }

  /// BETA: Create a labeled firmware image
  ///
  /// Devices might need several different firmware images, depending on their configuration. Low-power devices usually have just a single firmware image but more complex devices might need several firmware images for their  subsystems. The firmware image must be uploaded prior to the call and the  returned data structure is included in the request.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] version:
  ///
  /// * [String] label:
  ///
  /// * [String] imageRef:
  Future<Response> createLabeledFirmwareWithHttpInfo(
    String collectionId, {
    String? version,
    String? label,
    String? imageRef,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/firmware/labeled'
        .replaceAll('{collectionId}', collectionId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (version != null) {
      queryParams.addAll(_queryParams('', 'version', version));
    }
    if (label != null) {
      queryParams.addAll(_queryParams('', 'label', label));
    }
    if (imageRef != null) {
      queryParams.addAll(_queryParams('', 'imageRef', imageRef));
    }

    const contentTypes = <String>[];

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

  /// BETA: Create a labeled firmware image
  ///
  /// Devices might need several different firmware images, depending on their configuration. Low-power devices usually have just a single firmware image but more complex devices might need several firmware images for their  subsystems. The firmware image must be uploaded prior to the call and the  returned data structure is included in the request.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] version:
  ///
  /// * [String] label:
  ///
  /// * [String] imageRef:
  Future<CreateLabeledFirmwareResponse?> createLabeledFirmware(
    String collectionId, {
    String? version,
    String? label,
    String? imageRef,
  }) async {
    final response = await createLabeledFirmwareWithHttpInfo(
      collectionId,
      version: version,
      label: label,
      imageRef: imageRef,
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
        'CreateLabeledFirmwareResponse',
      ) as CreateLabeledFirmwareResponse;
    }
    return null;
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
  Future<Response> deleteFirmwareWithHttpInfo(
    String collectionId,
    String imageId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/firmware/{imageId}'
        .replaceAll('{collectionId}', collectionId)
        .replaceAll('{imageId}', imageId);

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

  /// Delete firmware
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] imageId (required):
  Future<Firmware?> deleteFirmware(
    String collectionId,
    String imageId,
  ) async {
    final response = await deleteFirmwareWithHttpInfo(
      collectionId,
      imageId,
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
        'Firmware',
      ) as Firmware;
    }
    return null;
  }

  /// BETA: Remove a tagged firmware image
  ///
  /// Remove a tagged firmware image from the backing store and it's metadata
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] imageId (required):
  Future<Response> deleteLabeledImageWithHttpInfo(
    String collectionId,
    String imageId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/firmware/labeled/{imageId}'
        .replaceAll('{collectionId}', collectionId)
        .replaceAll('{imageId}', imageId);

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

  /// BETA: Remove a tagged firmware image
  ///
  /// Remove a tagged firmware image from the backing store and it's metadata
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] imageId (required):
  Future<Object?> deleteLabeledImage(
    String collectionId,
    String imageId,
  ) async {
    final response = await deleteLabeledImageWithHttpInfo(
      collectionId,
      imageId,
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
        'Object',
      ) as Object;
    }
    return null;
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
  Future<Response> firmwareUsageWithHttpInfo(
    String collectionId,
    String imageId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/firmware/{imageId}/usage'
        .replaceAll('{collectionId}', collectionId)
        .replaceAll('{imageId}', imageId);

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

  /// Firmware usage
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] imageId (required):
  Future<FirmwareUsageResponse?> firmwareUsage(
    String collectionId,
    String imageId,
  ) async {
    final response = await firmwareUsageWithHttpInfo(
      collectionId,
      imageId,
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
        'FirmwareUsageResponse',
      ) as FirmwareUsageResponse;
    }
    return null;
  }

  /// BETA: Get state for a single device
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  Future<Response> getImageStateWithHttpInfo(
    String collectionId,
    String deviceId,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/span/collections/{collectionId}/devices/{deviceId}/fotastate'
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{deviceId}', deviceId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

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

  /// BETA: Get state for a single device
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  Future<GetImageStateResponse?> getImageState(
    String collectionId,
    String deviceId,
  ) async {
    final response = await getImageStateWithHttpInfo(
      collectionId,
      deviceId,
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
        'GetImageStateResponse',
      ) as GetImageStateResponse;
    }
    return null;
  }

  /// List firmware
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  Future<Response> listFirmwareWithHttpInfo(
    String collectionId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/firmware'
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

  /// List firmware
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  Future<ListFirmwareResponse?> listFirmware(
    String collectionId,
  ) async {
    final response = await listFirmwareWithHttpInfo(
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
        'ListFirmwareResponse',
      ) as ListFirmwareResponse;
    }
    return null;
  }

  /// BETA: List image assignments plus states
  ///
  /// List the status for the labeled firmware images in the collection
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  Future<Response> listImageStatesWithHttpInfo(
    String collectionId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/firmware/labeled/states'
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

  /// BETA: List image assignments plus states
  ///
  /// List the status for the labeled firmware images in the collection
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  Future<ListImageStatesResponse?> listImageStates(
    String collectionId,
  ) async {
    final response = await listImageStatesWithHttpInfo(
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
        'ListImageStatesResponse',
      ) as ListImageStatesResponse;
    }
    return null;
  }

  /// BETA: List version history for a single device
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  Future<Response> listImageVersionHistoryWithHttpInfo(
    String collectionId,
    String deviceId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/devices/{deviceId}/fotalog'
        .replaceAll('{collectionId}', collectionId)
        .replaceAll('{deviceId}', deviceId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

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

  /// BETA: List version history for a single device
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  Future<ListImageVersionHistoryResponse?> listImageVersionHistory(
    String collectionId,
    String deviceId,
  ) async {
    final response = await listImageVersionHistoryWithHttpInfo(
      collectionId,
      deviceId,
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
        'ListImageVersionHistoryResponse',
      ) as ListImageVersionHistoryResponse;
    }
    return null;
  }

  /// BETA: List the labeled firmware images for a collection
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  Future<Response> listLabeledFirmwareWithHttpInfo(
    String collectionId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/firmware/labeled'
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

  /// BETA: List the labeled firmware images for a collection
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  Future<ListLabeledFirmwareResponse?> listLabeledFirmware(
    String collectionId,
  ) async {
    final response = await listLabeledFirmwareWithHttpInfo(
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
        'ListLabeledFirmwareResponse',
      ) as ListLabeledFirmwareResponse;
    }
    return null;
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
  Future<Response> retrieveFirmwareWithHttpInfo(
    String collectionId,
    String imageId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/firmware/{imageId}'
        .replaceAll('{collectionId}', collectionId)
        .replaceAll('{imageId}', imageId);

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

  /// Retrieve firmware
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] imageId (required):
  Future<Firmware?> retrieveFirmware(
    String collectionId,
    String imageId,
  ) async {
    final response = await retrieveFirmwareWithHttpInfo(
      collectionId,
      imageId,
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
        'Firmware',
      ) as Firmware;
    }
    return null;
  }

  /// Retrieve firmware statistics
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] imageId (required):
  Future<Response> retrieveFirmwareStatsWithHttpInfo(
    String collectionId,
    String imageId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/firmware/{imageId}/stats'
        .replaceAll('{collectionId}', collectionId)
        .replaceAll('{imageId}', imageId);

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

  /// Retrieve firmware statistics
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] imageId (required):
  Future<FirmwareStats?> retrieveFirmwareStats(
    String collectionId,
    String imageId,
  ) async {
    final response = await retrieveFirmwareStatsWithHttpInfo(
      collectionId,
      imageId,
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
        'FirmwareStats',
      ) as FirmwareStats;
    }
    return null;
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
  /// * [UpdateFirmwareBody] body (required):
  Future<Response> updateFirmwareWithHttpInfo(
    String existingCollectionId,
    String imageId,
    UpdateFirmwareBody body,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{existingCollectionId}/firmware/{imageId}'
        .replaceAll('{existingCollectionId}', existingCollectionId)
        .replaceAll('{imageId}', imageId);

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
  /// * [UpdateFirmwareBody] body (required):
  Future<Firmware?> updateFirmware(
    String existingCollectionId,
    String imageId,
    UpdateFirmwareBody body,
  ) async {
    final response = await updateFirmwareWithHttpInfo(
      existingCollectionId,
      imageId,
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
        'Firmware',
      ) as Firmware;
    }
    return null;
  }
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
  Future<Response> clearFirmwareErrorWithHttpInfo(
      String collectionId, String deviceId) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (deviceId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: deviceId');
    }

    final path = r'/collections/{collectionId}/devices/{deviceId}/fwerror'
        .replaceAll('{' + 'collectionId' + '}', collectionId.toString())
        .replaceAll('{' + 'deviceId' + '}', deviceId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

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

  /// Clear FOTA error
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  Future<ClearFirmwareErrorResponse> clearFirmwareError(
      String collectionId, String deviceId) async {
    final response =
        await clearFirmwareErrorWithHttpInfo(collectionId, deviceId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'ClearFirmwareErrorResponse')
          as ClearFirmwareErrorResponse;
    }
    return Future<ClearFirmwareErrorResponse>.value(null);
  }

  /// Create firmware
  ///
  /// Create a new firmware image. This is also invoked by the custom HTTP uploader if the POST uses multipart/formdata for the request.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [CreateFirmwareRequest] body (required):
  Future<Response> createFirmwareWithHttpInfo(
      String collectionId, CreateFirmwareRequest body) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/collections/{collectionId}/firmware'
        .replaceAll('{' + 'collectionId' + '}', collectionId.toString());

    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

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

  /// Create firmware
  ///
  /// Create a new firmware image. This is also invoked by the custom HTTP uploader if the POST uses multipart/formdata for the request.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [CreateFirmwareRequest] body (required):
  Future<Firmware> createFirmware(
      String collectionId, CreateFirmwareRequest body) async {
    final response = await createFirmwareWithHttpInfo(collectionId, body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Firmware')
          as Firmware;
    }
    return Future<Firmware>.value(null);
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
      String collectionId, String imageId) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (imageId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: imageId');
    }

    final path = r'/collections/{collectionId}/firmware/{imageId}'
        .replaceAll('{' + 'collectionId' + '}', collectionId.toString())
        .replaceAll('{' + 'imageId' + '}', imageId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

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

  /// Delete firmware
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] imageId (required):
  Future<Firmware> deleteFirmware(String collectionId, String imageId) async {
    final response = await deleteFirmwareWithHttpInfo(collectionId, imageId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Firmware')
          as Firmware;
    }
    return Future<Firmware>.value(null);
  }

  /// Firmware usage
  ///
  /// Shows the firmware usage for devices in the collection
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] imageId (required):
  Future<Response> firmwareUsageWithHttpInfo(
      String collectionId, String imageId) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (imageId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: imageId');
    }

    final path = r'/collections/{collectionId}/firmware/{imageId}/usage'
        .replaceAll('{' + 'collectionId' + '}', collectionId.toString())
        .replaceAll('{' + 'imageId' + '}', imageId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

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

  /// Firmware usage
  ///
  /// Shows the firmware usage for devices in the collection
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] imageId (required):
  Future<FirmwareUsageResponse> firmwareUsage(
      String collectionId, String imageId) async {
    final response = await firmwareUsageWithHttpInfo(collectionId, imageId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'FirmwareUsageResponse')
          as FirmwareUsageResponse;
    }
    return Future<FirmwareUsageResponse>.value(null);
  }

  /// List firmware
  ///
  /// Lists available firmware images in collection
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  Future<Response> listFirmwareWithHttpInfo(String collectionId) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }

    final path = r'/collections/{collectionId}/firmware'
        .replaceAll('{' + 'collectionId' + '}', collectionId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

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

  /// List firmware
  ///
  /// Lists available firmware images in collection
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  Future<ListFirmwareResponse> listFirmware(String collectionId) async {
    final response = await listFirmwareWithHttpInfo(collectionId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'ListFirmwareResponse')
          as ListFirmwareResponse;
    }
    return Future<ListFirmwareResponse>.value(null);
  }

  /// Retrieve firmware
  ///
  /// Retrieve information on a firmware image
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] imageId (required):
  Future<Response> retrieveFirmwareWithHttpInfo(
      String collectionId, String imageId) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (imageId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: imageId');
    }

    final path = r'/collections/{collectionId}/firmware/{imageId}'
        .replaceAll('{' + 'collectionId' + '}', collectionId.toString())
        .replaceAll('{' + 'imageId' + '}', imageId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

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

  /// Retrieve firmware
  ///
  /// Retrieve information on a firmware image
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] imageId (required):
  Future<Firmware> retrieveFirmware(String collectionId, String imageId) async {
    final response = await retrieveFirmwareWithHttpInfo(collectionId, imageId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Firmware')
          as Firmware;
    }
    return Future<Firmware>.value(null);
  }

  /// Update firmware
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   Collection ID  Collection ID for the collection owning the firmware image.
  ///
  /// * [String] imageId (required):
  ///   Firmware image ID
  ///
  /// * [Firmware] body (required):
  Future<Response> updateFirmwareWithHttpInfo(
      String collectionId, String imageId, Firmware body) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (imageId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: imageId');
    }
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/collections/{collectionId}/firmware/{imageId}'
        .replaceAll('{' + 'collectionId' + '}', collectionId.toString())
        .replaceAll('{' + 'imageId' + '}', imageId.toString());

    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

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

  /// Update firmware
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   Collection ID  Collection ID for the collection owning the firmware image.
  ///
  /// * [String] imageId (required):
  ///   Firmware image ID
  ///
  /// * [Firmware] body (required):
  Future<Firmware> updateFirmware(
      String collectionId, String imageId, Firmware body) async {
    final response =
        await updateFirmwareWithHttpInfo(collectionId, imageId, body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Firmware')
          as Firmware;
    }
    return Future<Firmware>.value(null);
  }
}

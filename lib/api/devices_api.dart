//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class DevicesApi {
  DevicesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create device
  ///
  /// Create a new device. This will add a device to the collection. You must have write access to the collection.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   This is the containing collection
  ///
  /// * [Device] body (required):
  Future<Response> createDeviceWithHttpInfo(
      String collectionId, Device body) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/collections/{collectionId}/devices'
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

  /// Create device
  ///
  /// Create a new device. This will add a device to the collection. You must have write access to the collection.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   This is the containing collection
  ///
  /// * [Device] body (required):
  Future<Device> createDevice(String collectionId, Device body) async {
    final response = await createDeviceWithHttpInfo(collectionId, body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Device')
          as Device;
    }
    return Future<Device>.value(null);
  }

  /// Remove device.
  ///
  /// Remove device from collection
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  Future<Response> deleteDeviceWithHttpInfo(
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

    final path = r'/collections/{collectionId}/devices/{deviceId}'
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

  /// Remove device.
  ///
  /// Remove device from collection
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  Future<Device> deleteDevice(String collectionId, String deviceId) async {
    final response = await deleteDeviceWithHttpInfo(collectionId, deviceId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Device')
          as Device;
    }
    return Future<Device>.value(null);
  }

  /// Get payloads
  ///
  /// List the data received from the device. Use the query parameters to control what data you retrieve. The maximumnumber of data points is 100.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   The collection ID. This is included in the request path.
  ///
  /// * [String] deviceId (required):
  ///   The device ID. This is included in the request path.
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
  Future<Response> listDeviceDataWithHttpInfo(
      String collectionId, String deviceId,
      {int limit, String start, String end, String offset}) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (deviceId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: deviceId');
    }

    final path = r'/collections/{collectionId}/devices/{deviceId}/data'
        .replaceAll('{' + 'collectionId' + '}', collectionId.toString())
        .replaceAll('{' + 'deviceId' + '}', deviceId.toString());

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

  /// Get payloads
  ///
  /// List the data received from the device. Use the query parameters to control what data you retrieve. The maximumnumber of data points is 100.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   The collection ID. This is included in the request path.
  ///
  /// * [String] deviceId (required):
  ///   The device ID. This is included in the request path.
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
  Future<ListDataResponse> listDeviceData(String collectionId, String deviceId,
      {int limit, String start, String end, String offset}) async {
    final response = await listDeviceDataWithHttpInfo(collectionId, deviceId,
        limit: limit, start: start, end: end, offset: offset);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(
          _decodeBodyBytes(response), 'ListDataResponse') as ListDataResponse;
    }
    return Future<ListDataResponse>.value(null);
  }

  /// List devices in collection.
  ///
  /// List devices in collection
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  Future<Response> listDevicesWithHttpInfo(String collectionId) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }

    final path = r'/collections/{collectionId}/devices'
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

  /// List devices in collection.
  ///
  /// List devices in collection
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  Future<ListDevicesResponse> listDevices(String collectionId) async {
    final response = await listDevicesWithHttpInfo(collectionId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'ListDevicesResponse')
          as ListDevicesResponse;
    }
    return Future<ListDevicesResponse>.value(null);
  }

  /// Retrieve device
  ///
  /// Retrieve a single device
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  Future<Response> retrieveDeviceWithHttpInfo(
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

    final path = r'/collections/{collectionId}/devices/{deviceId}'
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
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Retrieve device
  ///
  /// Retrieve a single device
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  Future<Device> retrieveDevice(String collectionId, String deviceId) async {
    final response = await retrieveDeviceWithHttpInfo(collectionId, deviceId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Device')
          as Device;
    }
    return Future<Device>.value(null);
  }

  /// Send message to a device.
  ///
  /// Send a message to the device
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  ///
  /// * [SendMessageRequest] body (required):
  Future<Response> sendMessageWithHttpInfo(
      String collectionId, String deviceId, SendMessageRequest body) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (deviceId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: deviceId');
    }
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/collections/{collectionId}/devices/{deviceId}/to'
        .replaceAll('{' + 'collectionId' + '}', collectionId.toString())
        .replaceAll('{' + 'deviceId' + '}', deviceId.toString());

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

  /// Send message to a device.
  ///
  /// Send a message to the device
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  ///
  /// * [SendMessageRequest] body (required):
  Future<SendMessageResponse> sendMessage(
      String collectionId, String deviceId, SendMessageRequest body) async {
    final response =
        await sendMessageWithHttpInfo(collectionId, deviceId, body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'SendMessageResponse')
          as SendMessageResponse;
    }
    return Future<SendMessageResponse>.value(null);
  }

  /// Update device. The device can be moved from one collection to another by setting the collection ID field to the new collection. You must have administrative access to both collections.
  ///
  /// Update device. The device can be moved from one collection to another by setting the collection ID field to the new collection. You must have administrative access to both collections.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] existingCollectionId (required):
  ///
  /// * [String] deviceId (required):
  ///
  /// * [UpdateDeviceRequest] body (required):
  Future<Response> updateDeviceWithHttpInfo(String existingCollectionId,
      String deviceId, UpdateDeviceRequest body) async {
    // Verify required params are set.
    if (existingCollectionId == null) {
      throw ApiException(HttpStatus.badRequest,
          'Missing required param: existingCollectionId');
    }
    if (deviceId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: deviceId');
    }
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/collections/{existingCollectionId}/devices/{deviceId}'
        .replaceAll(
            '{' + 'existingCollectionId' + '}', existingCollectionId.toString())
        .replaceAll('{' + 'deviceId' + '}', deviceId.toString());

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

  /// Update device. The device can be moved from one collection to another by setting the collection ID field to the new collection. You must have administrative access to both collections.
  ///
  /// Update device. The device can be moved from one collection to another by setting the collection ID field to the new collection. You must have administrative access to both collections.
  ///
  /// Parameters:
  ///
  /// * [String] existingCollectionId (required):
  ///
  /// * [String] deviceId (required):
  ///
  /// * [UpdateDeviceRequest] body (required):
  Future<Device> updateDevice(String existingCollectionId, String deviceId,
      UpdateDeviceRequest body) async {
    final response =
        await updateDeviceWithHttpInfo(existingCollectionId, deviceId, body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Device')
          as Device;
    }
    return Future<Device>.value(null);
  }
}

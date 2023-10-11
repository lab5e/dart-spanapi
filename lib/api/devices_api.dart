//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class DevicesApi {
  DevicesApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add message to oubox
  ///
  /// Add a new message in the outgoing queue to the device. If there is other messages in the outbox these messages will be sent first.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  ///
  /// * [AddDownstreamMessageRequest] body (required):
  Future<Response> addDownstreamMessageWithHttpInfo(
    String collectionId,
    String deviceId,
    AddDownstreamMessageRequest body,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/devices/{deviceId}/outbox'
        .replaceAll('{collectionId}', collectionId)
        .replaceAll('{deviceId}', deviceId);

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

  /// Add message to oubox
  ///
  /// Add a new message in the outgoing queue to the device. If there is other messages in the outbox these messages will be sent first.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  ///
  /// * [AddDownstreamMessageRequest] body (required):
  Future<MessageDownstream?> addDownstreamMessage(
    String collectionId,
    String deviceId,
    AddDownstreamMessageRequest body,
  ) async {
    final response = await addDownstreamMessageWithHttpInfo(
      collectionId,
      deviceId,
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
        'MessageDownstream',
      ) as MessageDownstream;
    }
    return null;
  }

  /// Create device
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   This is the containing collection
  ///
  /// * [CreateDeviceRequest] body (required):
  Future<Response> createDeviceWithHttpInfo(
    String collectionId,
    CreateDeviceRequest body,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/devices'
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

  /// Create device
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   This is the containing collection
  ///
  /// * [CreateDeviceRequest] body (required):
  Future<Device?> createDevice(
    String collectionId,
    CreateDeviceRequest body,
  ) async {
    final response = await createDeviceWithHttpInfo(
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
        'Device',
      ) as Device;
    }
    return null;
  }

  /// Remove device.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   This is the containing collection
  ///
  /// * [String] deviceId (required):
  ///   The device ID is assigned by the backend.
  Future<Response> deleteDeviceWithHttpInfo(
    String collectionId,
    String deviceId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/devices/{deviceId}'
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

  /// Remove device.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   This is the containing collection
  ///
  /// * [String] deviceId (required):
  ///   The device ID is assigned by the backend.
  Future<Device?> deleteDevice(
    String collectionId,
    String deviceId,
  ) async {
    final response = await deleteDeviceWithHttpInfo(
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
        'Device',
      ) as Device;
    }
    return null;
  }

  /// Delete outgoing message
  ///
  /// Delete an outgoing (ie downstream) message from the outbox.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  ///
  /// * [String] messageId (required):
  Future<Response> deleteDownstreamMessageWithHttpInfo(
    String collectionId,
    String deviceId,
    String messageId,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/span/collections/{collectionId}/devices/{deviceId}/outbox/{messageId}'
            .replaceAll('{collectionId}', collectionId)
            .replaceAll('{deviceId}', deviceId)
            .replaceAll('{messageId}', messageId);

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

  /// Delete outgoing message
  ///
  /// Delete an outgoing (ie downstream) message from the outbox.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  ///
  /// * [String] messageId (required):
  Future<DeleteDownstreamMessageResponse?> deleteDownstreamMessage(
    String collectionId,
    String deviceId,
    String messageId,
  ) async {
    final response = await deleteDownstreamMessageWithHttpInfo(
      collectionId,
      deviceId,
      messageId,
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
        'DeleteDownstreamMessageResponse',
      ) as DeleteDownstreamMessageResponse;
    }
    return null;
  }

  /// Get issued certificate(s) for device
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  Future<Response> deviceCertificateWithHttpInfo(
    String collectionId,
    String deviceId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/devices/{deviceId}/certs'
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
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get issued certificate(s) for device
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  Future<DeviceCertificateResponse?> deviceCertificate(
    String collectionId,
    String deviceId,
  ) async {
    final response = await deviceCertificateWithHttpInfo(
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
        'DeviceCertificateResponse',
      ) as DeviceCertificateResponse;
    }
    return null;
  }

  /// Retrieve data from device
  ///
  /// List the data received from the device. Use the query parameters to control what data you retrieve. The maximum number of data points is 100.
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
    String collectionId,
    String deviceId, {
    int? limit,
    String? start,
    String? end,
    String? offset,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/devices/{deviceId}/data'
        .replaceAll('{collectionId}', collectionId)
        .replaceAll('{deviceId}', deviceId);

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

  /// Retrieve data from device
  ///
  /// List the data received from the device. Use the query parameters to control what data you retrieve. The maximum number of data points is 100.
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
  Future<ListDataResponse?> listDeviceData(
    String collectionId,
    String deviceId, {
    int? limit,
    String? start,
    String? end,
    String? offset,
  }) async {
    final response = await listDeviceDataWithHttpInfo(
      collectionId,
      deviceId,
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

  /// List devices in collection.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  Future<Response> listDevicesWithHttpInfo(
    String collectionId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/devices'
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

  /// List devices in collection.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  Future<ListDevicesResponse?> listDevices(
    String collectionId,
  ) async {
    final response = await listDevicesWithHttpInfo(
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
        'ListDevicesResponse',
      ) as ListDevicesResponse;
    }
    return null;
  }

  /// List the messages in the outbox
  ///
  /// List messages that should be sent to the device when it connects to the service. The messages are sent to the device when it connects to the service and either sends a message (via UDP or CoAP) or requests a message via CoAP GET request.option
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  ///
  /// * [int] limit:
  ///
  /// * [String] start:
  ///   Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch.
  ///
  /// * [String] end:
  ///   End of time range. The default is the current time stamp. Value is in milliseconds since epoch.
  ///
  /// * [String] offset:
  ///   The message offset based on the message ID. This parameter can't be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned.
  Future<Response> listDownstreamMessagesWithHttpInfo(
    String collectionId,
    String deviceId, {
    int? limit,
    String? start,
    String? end,
    String? offset,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/devices/{deviceId}/outbox'
        .replaceAll('{collectionId}', collectionId)
        .replaceAll('{deviceId}', deviceId);

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

  /// List the messages in the outbox
  ///
  /// List messages that should be sent to the device when it connects to the service. The messages are sent to the device when it connects to the service and either sends a message (via UDP or CoAP) or requests a message via CoAP GET request.option
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  ///
  /// * [int] limit:
  ///
  /// * [String] start:
  ///   Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch.
  ///
  /// * [String] end:
  ///   End of time range. The default is the current time stamp. Value is in milliseconds since epoch.
  ///
  /// * [String] offset:
  ///   The message offset based on the message ID. This parameter can't be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned.
  Future<ListDownstreamMessagesResponse?> listDownstreamMessages(
    String collectionId,
    String deviceId, {
    int? limit,
    String? start,
    String? end,
    String? offset,
  }) async {
    final response = await listDownstreamMessagesWithHttpInfo(
      collectionId,
      deviceId,
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
        'ListDownstreamMessagesResponse',
      ) as ListDownstreamMessagesResponse;
    }
    return null;
  }

  /// List incoming messages
  ///
  /// Retrieve a list of incoming (ie upstream) messages, ie messages sent from the device to the service. These messages are buffered in the service until they expire.  Use the query parameters to limit the number of messages to return. If no limit is specified the default limit of 250 is used.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  ///
  /// * [int] limit:
  ///
  /// * [String] start:
  ///   Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch.
  ///
  /// * [String] end:
  ///   End of time range. The default is the current time stamp. Value is in milliseconds since epoch.
  ///
  /// * [String] offset:
  ///   The message offset based on the message ID. This parameter can't be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned.
  Future<Response> listUpstreamMessagesWithHttpInfo(
    String collectionId,
    String deviceId, {
    int? limit,
    String? start,
    String? end,
    String? offset,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/devices/{deviceId}/inbox'
        .replaceAll('{collectionId}', collectionId)
        .replaceAll('{deviceId}', deviceId);

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

  /// List incoming messages
  ///
  /// Retrieve a list of incoming (ie upstream) messages, ie messages sent from the device to the service. These messages are buffered in the service until they expire.  Use the query parameters to limit the number of messages to return. If no limit is specified the default limit of 250 is used.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] deviceId (required):
  ///
  /// * [int] limit:
  ///
  /// * [String] start:
  ///   Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch.
  ///
  /// * [String] end:
  ///   End of time range. The default is the current time stamp. Value is in milliseconds since epoch.
  ///
  /// * [String] offset:
  ///   The message offset based on the message ID. This parameter can't be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned.
  Future<ListUpstreamMessagesResponse?> listUpstreamMessages(
    String collectionId,
    String deviceId, {
    int? limit,
    String? start,
    String? end,
    String? offset,
  }) async {
    final response = await listUpstreamMessagesWithHttpInfo(
      collectionId,
      deviceId,
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
        'ListUpstreamMessagesResponse',
      ) as ListUpstreamMessagesResponse;
    }
    return null;
  }

  /// Retrieve device
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   This is the containing collection
  ///
  /// * [String] deviceId (required):
  ///   The device identifier
  Future<Response> retrieveDeviceWithHttpInfo(
    String collectionId,
    String deviceId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/devices/{deviceId}'
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
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Retrieve device
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   This is the containing collection
  ///
  /// * [String] deviceId (required):
  ///   The device identifier
  Future<Device?> retrieveDevice(
    String collectionId,
    String deviceId,
  ) async {
    final response = await retrieveDeviceWithHttpInfo(
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
        'Device',
      ) as Device;
    }
    return null;
  }

  /// Retrieve device statistics
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   This is the containing collection
  ///
  /// * [String] deviceId (required):
  ///   The device identifier
  Future<Response> retrieveDeviceStatsWithHttpInfo(
    String collectionId,
    String deviceId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/devices/{deviceId}/stats'
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
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Retrieve device statistics
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///   This is the containing collection
  ///
  /// * [String] deviceId (required):
  ///   The device identifier
  Future<DeviceStats?> retrieveDeviceStats(
    String collectionId,
    String deviceId,
  ) async {
    final response = await retrieveDeviceStatsWithHttpInfo(
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
        'DeviceStats',
      ) as DeviceStats;
    }
    return null;
  }

  /// Update device
  ///
  /// The device can be moved from one collection to another by setting the collection ID field to the new collection. You must have administrative access to both collections. A note on gateway configurations: Empty gateway configuration blocks are deleted. If the configuration block contains a gateway ID it will be updated  with the new values. All values must be submitted in the request. If a device is moved out of the collection and it references a gateway in the configuration the operation will fail. Devices that are moved from one collection to another and references gateway configurations must be updated before they are moved.
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
  Future<Response> updateDeviceWithHttpInfo(
    String existingCollectionId,
    String deviceId,
    UpdateDeviceRequest body,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/span/collections/{existingCollectionId}/devices/{deviceId}'
        .replaceAll('{existingCollectionId}', existingCollectionId)
        .replaceAll('{deviceId}', deviceId);

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

  /// Update device
  ///
  /// The device can be moved from one collection to another by setting the collection ID field to the new collection. You must have administrative access to both collections. A note on gateway configurations: Empty gateway configuration blocks are deleted. If the configuration block contains a gateway ID it will be updated  with the new values. All values must be submitted in the request. If a device is moved out of the collection and it references a gateway in the configuration the operation will fail. Devices that are moved from one collection to another and references gateway configurations must be updated before they are moved.
  ///
  /// Parameters:
  ///
  /// * [String] existingCollectionId (required):
  ///
  /// * [String] deviceId (required):
  ///
  /// * [UpdateDeviceRequest] body (required):
  Future<Device?> updateDevice(
    String existingCollectionId,
    String deviceId,
    UpdateDeviceRequest body,
  ) async {
    final response = await updateDeviceWithHttpInfo(
      existingCollectionId,
      deviceId,
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
        'Device',
      ) as Device;
    }
    return null;
  }
}

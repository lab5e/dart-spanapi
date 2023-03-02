//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class ApiClient {
  ApiClient({this.basePath = 'https://api.lab5e.com'}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications[r'APIToken'] = ApiKeyAuth('header', 'X-API-Token');
  }

  final String basePath;

  var _client = Client();

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  ///
  /// If the [newClient] is null, an [ArgumentError] is thrown.
  set client(Client newClient) {
    if (newClient == null) {
      throw ArgumentError('New client instance cannot be null.');
    }
    _client = newClient;
  }

  final _defaultHeaderMap = <String, String>{};
  final _authentications = <String, Authentication>{};

  void addDefaultHeader(String key, String value) {
    _defaultHeaderMap[key] = value;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  /// Returns an unmodifiable [Map] of the authentications, since none should be added
  /// or deleted.
  Map<String, Authentication> get authentications =>
      Map.unmodifiable(_authentications);

  T getAuthentication<T extends Authentication>(String name) {
    final authentication = _authentications[name];
    return authentication is T ? authentication : null;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String nullableContentType,
    List<String> authNames,
  ) async {
    _updateParamsForAuth(authNames, queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);

    final urlEncodedQueryParams = queryParams
        .where((param) => param.value != null)
        .map((param) => '$param');

    final queryString = urlEncodedQueryParams.isNotEmpty
        ? '?${urlEncodedQueryParams.join('&')}'
        : '';

    final uri = Uri.parse('$basePath$path$queryString');

    if (nullableContentType != null) {
      headerParams['Content-Type'] = nullableContentType;
    }

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (body is MultipartFile &&
          (nullableContentType == null ||
              !nullableContentType
                  .toLowerCase()
                  .startsWith('multipart/form-data'))) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
              request.sink.add,
              onDone: request.sink.close,
              // ignore: avoid_types_on_closure_parameters
              onError: (Object error, StackTrace trace) => request.sink.close(),
              cancelOnError: true,
            );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = nullableContentType == 'application/x-www-form-urlencoded'
          ? formParams
          : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch (method) {
        case 'POST':
          return await _client.post(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'PUT':
          return await _client.put(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'DELETE':
          return await _client.delete(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'PATCH':
          return await _client.patch(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'HEAD':
          return await _client.head(
            uri,
            headers: nullableHeaderParams,
          );
        case 'GET':
          return await _client.get(
            uri,
            headers: nullableHeaderParams,
          );
      }
    } on SocketException catch (e, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        e,
        trace,
      );
    } on TlsException catch (e, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        e,
        trace,
      );
    } on IOException catch (e, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        e,
        trace,
      );
    } on ClientException catch (e, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        e,
        trace,
      );
    } on Exception catch (e, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        e,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String json, String targetType,
          {bool growable}) async =>
      // ignore: deprecated_member_use_from_same_package
      deserialize(json, targetType, growable: growable);

  @Deprecated(
      'Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String json, String targetType, {bool growable}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType =
        targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
        ? json
        : _deserialize(jsonDecode(json), targetType,
            growable: growable == true);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object value) async => serialize(value);

  @Deprecated(
      'Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object value) => value == null ? '' : json.encode(value);

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(
    List<String> authNames,
    List<QueryParam> queryParams,
    Map<String, String> headerParams,
  ) {
    for (final authName in authNames) {
      final auth = _authentications[authName];
      if (auth == null) {
        throw ArgumentError('Authentication undefined: $authName');
      }
      auth.applyToParams(queryParams, headerParams);
    }
  }

  static dynamic _deserialize(dynamic value, String targetType,
      {bool growable}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'AddDownstreamMessageRequest':
          return AddDownstreamMessageRequest.fromJson(value);
        case 'Any':
          return Any.fromJson(value);
        case 'Blob':
          return Blob.fromJson(value);
        case 'CellularIoTConfig':
          return CellularIoTConfig.fromJson(value);
        case 'CellularIoTMetadata':
          return CellularIoTMetadata.fromJson(value);
        case 'CertificateChainResponse':
          return CertificateChainResponse.fromJson(value);
        case 'CertificateInfo':
          return CertificateInfo.fromJson(value);
        case 'ClearFirmwareErrorResponse':
          return ClearFirmwareErrorResponse.fromJson(value);
        case 'CoAPMetadata':
          return CoAPMetadata.fromJson(value);
        case 'Collection':
          return Collection.fromJson(value);
        case 'CollectionFirmware':
          return CollectionFirmware.fromJson(value);
        case 'CreateCertificateRequest':
          return CreateCertificateRequest.fromJson(value);
        case 'CreateCertificateResponse':
          return CreateCertificateResponse.fromJson(value);
        case 'CreateCollectionRequest':
          return CreateCollectionRequest.fromJson(value);
        case 'CreateDeviceRequest':
          return CreateDeviceRequest.fromJson(value);
        case 'CreateFirmwareRequest':
          return CreateFirmwareRequest.fromJson(value);
        case 'CreateOutputRequest':
          return CreateOutputRequest.fromJson(value);
        case 'DeleteDownstreamMessageResponse':
          return DeleteDownstreamMessageResponse.fromJson(value);
        case 'Device':
          return Device.fromJson(value);
        case 'DeviceCertificateResponse':
          return DeviceCertificateResponse.fromJson(value);
        case 'DeviceConfig':
          return DeviceConfig.fromJson(value);
        case 'DeviceMetadata':
          return DeviceMetadata.fromJson(value);
        case 'Firmware':
          return Firmware.fromJson(value);
        case 'FirmwareManagement':
          return FirmwareManagementTypeTransformer().decode(value);
        case 'FirmwareMetadata':
          return FirmwareMetadata.fromJson(value);
        case 'FirmwareUsageResponse':
          return FirmwareUsageResponse.fromJson(value);
        case 'Gateway':
          return Gateway.fromJson(value);
        case 'GatewayCIoTConfig':
          return GatewayCIoTConfig.fromJson(value);
        case 'GatewayCertificateResponse':
          return GatewayCertificateResponse.fromJson(value);
        case 'GatewayConfig':
          return GatewayConfig.fromJson(value);
        case 'GatewayCustomConfig':
          return GatewayCustomConfig.fromJson(value);
        case 'GatewayDeviceConfig':
          return GatewayDeviceConfig.fromJson(value);
        case 'GatewayDeviceMetadata':
          return GatewayDeviceMetadata.fromJson(value);
        case 'GatewayInetConfig':
          return GatewayInetConfig.fromJson(value);
        case 'GatewayMetadata':
          return GatewayMetadata.fromJson(value);
        case 'GatewayStatus':
          return GatewayStatusTypeTransformer().decode(value);
        case 'GatewayType':
          return GatewayTypeTypeTransformer().decode(value);
        case 'InetMetadata':
          return InetMetadata.fromJson(value);
        case 'InlineObject':
          return InlineObject.fromJson(value);
        case 'InlineObject1':
          return InlineObject1.fromJson(value);
        case 'ListBlobResponse':
          return ListBlobResponse.fromJson(value);
        case 'ListCollectionResponse':
          return ListCollectionResponse.fromJson(value);
        case 'ListDataResponse':
          return ListDataResponse.fromJson(value);
        case 'ListDevicesResponse':
          return ListDevicesResponse.fromJson(value);
        case 'ListDownstreamMessagesResponse':
          return ListDownstreamMessagesResponse.fromJson(value);
        case 'ListFirmwareResponse':
          return ListFirmwareResponse.fromJson(value);
        case 'ListGatewayResponse':
          return ListGatewayResponse.fromJson(value);
        case 'ListOutputResponse':
          return ListOutputResponse.fromJson(value);
        case 'ListUpstreamMessagesResponse':
          return ListUpstreamMessagesResponse.fromJson(value);
        case 'MQTTMetadata':
          return MQTTMetadata.fromJson(value);
        case 'MessageDownstream':
          return MessageDownstream.fromJson(value);
        case 'MessageState':
          return MessageStateTypeTransformer().decode(value);
        case 'MessageTransport':
          return MessageTransportTypeTransformer().decode(value);
        case 'MessageUpstream':
          return MessageUpstream.fromJson(value);
        case 'Output':
          return Output.fromJson(value);
        case 'OutputConfig':
          return OutputConfig.fromJson(value);
        case 'OutputDataMessage':
          return OutputDataMessage.fromJson(value);
        case 'OutputLogEntry':
          return OutputLogEntry.fromJson(value);
        case 'OutputLogResponse':
          return OutputLogResponse.fromJson(value);
        case 'OutputMessageType':
          return OutputMessageTypeTypeTransformer().decode(value);
        case 'OutputStatusResponse':
          return OutputStatusResponse.fromJson(value);
        case 'OutputType':
          return OutputTypeTypeTransformer().decode(value);
        case 'RetrieveBlobResponse':
          return RetrieveBlobResponse.fromJson(value);
        case 'SignCertificateRequest':
          return SignCertificateRequest.fromJson(value);
        case 'SignCertificateResponse':
          return SignCertificateResponse.fromJson(value);
        case 'Status':
          return Status.fromJson(value);
        case 'SystemInfoResponse':
          return SystemInfoResponse.fromJson(value);
        case 'UDPMetadata':
          return UDPMetadata.fromJson(value);
        case 'UpdateCollectionRequest':
          return UpdateCollectionRequest.fromJson(value);
        case 'UpdateDeviceRequest':
          return UpdateDeviceRequest.fromJson(value);
        case 'UpdateFirmwareRequest':
          return UpdateFirmwareRequest.fromJson(value);
        case 'UpdateOutputRequest':
          return UpdateOutputRequest.fromJson(value);
        case 'VerifyCertificateRequest':
          return VerifyCertificateRequest.fromJson(value);
        case 'VerifyCertificateResponse':
          return VerifyCertificateResponse.fromJson(value);
        default:
          Match match;
          if (value is List &&
              (match = _regList.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return value
                .map<dynamic>((dynamic v) =>
                    _deserialize(v, targetType, growable: growable))
                .toList(growable: growable);
          }
          if (value is Set &&
              (match = _regSet.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return value
                .map<dynamic>((dynamic v) =>
                    _deserialize(v, targetType, growable: growable))
                .toSet();
          }
          if (value is Map &&
              (match = _regMap.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) =>
                  _deserialize(v, targetType, growable: growable)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.internalServerError,
        'Exception during deserialization.',
        error,
        trace,
      );
    }
    throw ApiException(
      HttpStatus.internalServerError,
      'Could not find a suitable class for deserialization',
    );
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    @required this.json,
    @required this.targetType,
    this.growable,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
      ? message.json
      : ApiClient._deserialize(
          jsonDecode(message.json),
          targetType,
          growable: message.growable == true,
        );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object value) async =>
    value == null ? '' : json.encode(value);

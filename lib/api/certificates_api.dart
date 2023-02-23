//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class CertificatesApi {
  CertificatesApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create certificate
  ///
  /// Create a new device or gateway (client) certificate for an internet-connected device. The devices will use this client certificate to authenticate when sending data via the Internet endpoint. This will create a X509 client certificate with an ECC public key. The key is not stored by the service so keep it in a secure place once it is downloaded. The returned certificate will be valid for 14 days. The key for the certificate is your own responsibility. The client certificate is used in both the TLS, DTLS and gRPC service endpoints.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [CreateCertificateRequest] body (required):
  Future<Response> createCertificateWithHttpInfo(
    String collectionId,
    CreateCertificateRequest body,
  ) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/certificates/create'
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

  /// Create certificate
  ///
  /// Create a new device or gateway (client) certificate for an internet-connected device. The devices will use this client certificate to authenticate when sending data via the Internet endpoint. This will create a X509 client certificate with an ECC public key. The key is not stored by the service so keep it in a secure place once it is downloaded. The returned certificate will be valid for 14 days. The key for the certificate is your own responsibility. The client certificate is used in both the TLS, DTLS and gRPC service endpoints.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [CreateCertificateRequest] body (required):
  Future<CreateCertificateResponse> createCertificate(
    String collectionId,
    CreateCertificateRequest body,
  ) async {
    final response = await createCertificateWithHttpInfo(
      collectionId,
      body,
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
        'CreateCertificateResponse',
      ) as CreateCertificateResponse;
    }
    return Future<CreateCertificateResponse>.value();
  }

  /// Get certificate chain
  ///
  /// Get the certificate chain for the root CA and intermediate certificates used by the device, gateway and server certificates. It is highly recommended to verify the server certificate when sending data to avoid any man-in-the-middle attacks. This chain will contain all required certificates needed to verify the client certificate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] gatewayId:
  ///
  /// * [String] deviceId:
  Future<Response> retrieveCertificateChainWithHttpInfo(
    String collectionId, {
    String gatewayId,
    String deviceId,
  }) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/certificates'
        .replaceAll('{collectionId}', collectionId);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (gatewayId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat('', 'gatewayId', gatewayId));
    }
    if (deviceId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat('', 'deviceId', deviceId));
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

  /// Get certificate chain
  ///
  /// Get the certificate chain for the root CA and intermediate certificates used by the device, gateway and server certificates. It is highly recommended to verify the server certificate when sending data to avoid any man-in-the-middle attacks. This chain will contain all required certificates needed to verify the client certificate.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] gatewayId:
  ///
  /// * [String] deviceId:
  Future<CertificateChainResponse> retrieveCertificateChain(
    String collectionId, {
    String gatewayId,
    String deviceId,
  }) async {
    final response = await retrieveCertificateChainWithHttpInfo(
      collectionId,
      gatewayId: gatewayId,
      deviceId: deviceId,
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
        'CertificateChainResponse',
      ) as CertificateChainResponse;
    }
    return Future<CertificateChainResponse>.value();
  }

  /// Sign certificate
  ///
  /// Sign a device or gateway (aka client) certificate. The certificate is a X509 Certificate signing request PEM encoded. The certificate will be valid for 14 days and must be renewed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [SignCertificateRequest] body (required):
  Future<Response> signCertificateWithHttpInfo(
    String collectionId,
    SignCertificateRequest body,
  ) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/certificates/sign'
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

  /// Sign certificate
  ///
  /// Sign a device or gateway (aka client) certificate. The certificate is a X509 Certificate signing request PEM encoded. The certificate will be valid for 14 days and must be renewed.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [SignCertificateRequest] body (required):
  Future<SignCertificateResponse> signCertificate(
    String collectionId,
    SignCertificateRequest body,
  ) async {
    final response = await signCertificateWithHttpInfo(
      collectionId,
      body,
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
        'SignCertificateResponse',
      ) as SignCertificateResponse;
    }
    return Future<SignCertificateResponse>.value();
  }

  /// Verify certificate
  ///
  /// Verify client certificate. If a client certificate fails it can be tricky to pinpoint exactly *why* the certificate isn't accepted. This resource validates the client certificate and returns the error in plain text.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [VerifyCertificateRequest] body (required):
  Future<Response> verifyCertificateWithHttpInfo(
    String collectionId,
    VerifyCertificateRequest body,
  ) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/certificates/verify'
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

  /// Verify certificate
  ///
  /// Verify client certificate. If a client certificate fails it can be tricky to pinpoint exactly *why* the certificate isn't accepted. This resource validates the client certificate and returns the error in plain text.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [VerifyCertificateRequest] body (required):
  Future<VerifyCertificateResponse> verifyCertificate(
    String collectionId,
    VerifyCertificateRequest body,
  ) async {
    final response = await verifyCertificateWithHttpInfo(
      collectionId,
      body,
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
        'VerifyCertificateResponse',
      ) as VerifyCertificateResponse;
    }
    return Future<VerifyCertificateResponse>.value();
  }
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;


class OutputsApi {
  OutputsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create output
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [Output] body (required):
  Future<Response> createOutputWithHttpInfo(String collectionId, Output body) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/collections/{collectionId}/outputs'
      .replaceAll('{' + 'collectionId' + '}', collectionId.toString());

    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

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

  /// Create output
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [Output] body (required):
  Future<Output> createOutput(String collectionId, Output body) async {
    final response = await createOutputWithHttpInfo(collectionId, body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Output') as Output;
        }
    return Future<Output>.value(null);
  }

  /// Delete output
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] outputId (required):
  Future<Response> deleteOutputWithHttpInfo(String collectionId, String outputId) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (outputId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: outputId');
    }

    final path = r'/collections/{collectionId}/outputs/{outputId}'
      .replaceAll('{' + 'collectionId' + '}', collectionId.toString())
      .replaceAll('{' + 'outputId' + '}', outputId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

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

  /// Delete output
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] outputId (required):
  Future<Output> deleteOutput(String collectionId, String outputId) async {
    final response = await deleteOutputWithHttpInfo(collectionId, outputId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Output') as Output;
        }
    return Future<Output>.value(null);
  }

  /// List outputs
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  Future<Response> listOutputsWithHttpInfo(String collectionId) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }

    final path = r'/collections/{collectionId}/outputs'
      .replaceAll('{' + 'collectionId' + '}', collectionId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

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

  /// List outputs
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  Future<ListOutputResponse> listOutputs(String collectionId) async {
    final response = await listOutputsWithHttpInfo(collectionId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ListOutputResponse') as ListOutputResponse;
        }
    return Future<ListOutputResponse>.value(null);
  }

  /// Output logs
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] outputId (required):
  Future<Response> logsWithHttpInfo(String collectionId, String outputId) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (outputId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: outputId');
    }

    final path = r'/collections/{collectionId}/outputs/{outputId}/logs'
      .replaceAll('{' + 'collectionId' + '}', collectionId.toString())
      .replaceAll('{' + 'outputId' + '}', outputId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

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

  /// Output logs
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] outputId (required):
  Future<OutputLogResponse> logs(String collectionId, String outputId) async {
    final response = await logsWithHttpInfo(collectionId, outputId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'OutputLogResponse') as OutputLogResponse;
        }
    return Future<OutputLogResponse>.value(null);
  }

  /// Retrieve output
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] outputId (required):
  Future<Response> retrieveOutputWithHttpInfo(String collectionId, String outputId) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (outputId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: outputId');
    }

    final path = r'/collections/{collectionId}/outputs/{outputId}'
      .replaceAll('{' + 'collectionId' + '}', collectionId.toString())
      .replaceAll('{' + 'outputId' + '}', outputId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

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

  /// Retrieve output
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] outputId (required):
  Future<Output> retrieveOutput(String collectionId, String outputId) async {
    final response = await retrieveOutputWithHttpInfo(collectionId, outputId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Output') as Output;
        }
    return Future<Output>.value(null);
  }

  /// Output status
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] outputId (required):
  Future<Response> statusWithHttpInfo(String collectionId, String outputId) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (outputId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: outputId');
    }

    final path = r'/collections/{collectionId}/outputs/{outputId}/status'
      .replaceAll('{' + 'collectionId' + '}', collectionId.toString())
      .replaceAll('{' + 'outputId' + '}', outputId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

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

  /// Output status
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] outputId (required):
  Future<OutputStatusResponse> status(String collectionId, String outputId) async {
    final response = await statusWithHttpInfo(collectionId, outputId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'OutputStatusResponse') as OutputStatusResponse;
        }
    return Future<OutputStatusResponse>.value(null);
  }

  /// Update output
  ///
  /// Running outputs will be restarted if required. Note that the collection ID can't be changed on an existing output.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] outputId (required):
  ///
  /// * [Output] body (required):
  Future<Response> updateOutputWithHttpInfo(String collectionId, String outputId, Output body) async {
    // Verify required params are set.
    if (collectionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (outputId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: outputId');
    }
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/collections/{collectionId}/outputs/{outputId}'
      .replaceAll('{' + 'collectionId' + '}', collectionId.toString())
      .replaceAll('{' + 'outputId' + '}', outputId.toString());

    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

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

  /// Update output
  ///
  /// Running outputs will be restarted if required. Note that the collection ID can't be changed on an existing output.
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] outputId (required):
  ///
  /// * [Output] body (required):
  Future<Output> updateOutput(String collectionId, String outputId, Output body) async {
    final response = await updateOutputWithHttpInfo(collectionId, outputId, body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Output') as Output;
        }
    return Future<Output>.value(null);
  }
}

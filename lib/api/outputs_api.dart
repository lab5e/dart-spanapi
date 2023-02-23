//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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
  /// * [CreateOutputRequest] body (required):
  Future<Response> createOutputWithHttpInfo(
    String collectionId,
    CreateOutputRequest body,
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
    final path = r'/span/collections/{collectionId}/outputs'
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

  /// Create output
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [CreateOutputRequest] body (required):
  Future<Output> createOutput(
    String collectionId,
    CreateOutputRequest body,
  ) async {
    final response = await createOutputWithHttpInfo(
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
        'Output',
      ) as Output;
    }
    return Future<Output>.value();
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
  Future<Response> deleteOutputWithHttpInfo(
    String collectionId,
    String outputId,
  ) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (outputId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: outputId');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/outputs/{outputId}'
        .replaceAll('{collectionId}', collectionId)
        .replaceAll('{outputId}', outputId);

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

  /// Delete output
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] outputId (required):
  Future<Output> deleteOutput(
    String collectionId,
    String outputId,
  ) async {
    final response = await deleteOutputWithHttpInfo(
      collectionId,
      outputId,
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
        'Output',
      ) as Output;
    }
    return Future<Output>.value();
  }

  /// List outputs
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  Future<Response> listOutputsWithHttpInfo(
    String collectionId,
  ) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/outputs'
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

  /// List outputs
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  Future<ListOutputResponse> listOutputs(
    String collectionId,
  ) async {
    final response = await listOutputsWithHttpInfo(
      collectionId,
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
        'ListOutputResponse',
      ) as ListOutputResponse;
    }
    return Future<ListOutputResponse>.value();
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
  Future<Response> logsWithHttpInfo(
    String collectionId,
    String outputId,
  ) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (outputId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: outputId');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/outputs/{outputId}/logs'
        .replaceAll('{collectionId}', collectionId)
        .replaceAll('{outputId}', outputId);

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

  /// Output logs
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] outputId (required):
  Future<OutputLogResponse> logs(
    String collectionId,
    String outputId,
  ) async {
    final response = await logsWithHttpInfo(
      collectionId,
      outputId,
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
        'OutputLogResponse',
      ) as OutputLogResponse;
    }
    return Future<OutputLogResponse>.value();
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
  Future<Response> retrieveOutputWithHttpInfo(
    String collectionId,
    String outputId,
  ) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (outputId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: outputId');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/outputs/{outputId}'
        .replaceAll('{collectionId}', collectionId)
        .replaceAll('{outputId}', outputId);

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

  /// Retrieve output
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] outputId (required):
  Future<Output> retrieveOutput(
    String collectionId,
    String outputId,
  ) async {
    final response = await retrieveOutputWithHttpInfo(
      collectionId,
      outputId,
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
        'Output',
      ) as Output;
    }
    return Future<Output>.value();
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
  Future<Response> statusWithHttpInfo(
    String collectionId,
    String outputId,
  ) async {
    // Verify required params are set.
    if (collectionId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: collectionId');
    }
    if (outputId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: outputId');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{collectionId}/outputs/{outputId}/status'
        .replaceAll('{collectionId}', collectionId)
        .replaceAll('{outputId}', outputId);

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

  /// Output status
  ///
  /// Parameters:
  ///
  /// * [String] collectionId (required):
  ///
  /// * [String] outputId (required):
  Future<OutputStatusResponse> status(
    String collectionId,
    String outputId,
  ) async {
    final response = await statusWithHttpInfo(
      collectionId,
      outputId,
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
        'OutputStatusResponse',
      ) as OutputStatusResponse;
    }
    return Future<OutputStatusResponse>.value();
  }

  /// Update output
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] existingCollectionId (required):
  ///
  /// * [String] outputId (required):
  ///
  /// * [UpdateOutputRequest] body (required):
  Future<Response> updateOutputWithHttpInfo(
    String existingCollectionId,
    String outputId,
    UpdateOutputRequest body,
  ) async {
    // Verify required params are set.
    if (existingCollectionId == null) {
      throw ApiException(HttpStatus.badRequest,
          'Missing required param: existingCollectionId');
    }
    if (outputId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: outputId');
    }
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    // ignore: prefer_const_declarations
    final path = r'/span/collections/{existingCollectionId}/outputs/{outputId}'
        .replaceAll('{existingCollectionId}', existingCollectionId)
        .replaceAll('{outputId}', outputId);

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

  /// Update output
  ///
  /// Parameters:
  ///
  /// * [String] existingCollectionId (required):
  ///
  /// * [String] outputId (required):
  ///
  /// * [UpdateOutputRequest] body (required):
  Future<Output> updateOutput(
    String existingCollectionId,
    String outputId,
    UpdateOutputRequest body,
  ) async {
    final response = await updateOutputWithHttpInfo(
      existingCollectionId,
      outputId,
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
        'Output',
      ) as Output;
    }
    return Future<Output>.value();
  }
}

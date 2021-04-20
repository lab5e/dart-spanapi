# spanapi.api.OutputsApi

## Load the API package
```dart
import 'package:spanapi/api.dart';
```

All URIs are relative to *https://api.lab5e.com/span*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOutput**](OutputsApi.md#createoutput) | **POST** /collections/{collectionId}/outputs | Create output
[**deleteOutput**](OutputsApi.md#deleteoutput) | **DELETE** /collections/{collectionId}/outputs/{outputId} | Delete output
[**listOutputs**](OutputsApi.md#listoutputs) | **GET** /collections/{collectionId}/outputs | List outputs
[**logs**](OutputsApi.md#logs) | **GET** /collections/{collectionId}/outputs/{outputId}/logs | Output logs
[**retrieveOutput**](OutputsApi.md#retrieveoutput) | **GET** /collections/{collectionId}/outputs/{outputId} | Retrieve output
[**status**](OutputsApi.md#status) | **GET** /collections/{collectionId}/outputs/{outputId}/status | Output status
[**updateOutput**](OutputsApi.md#updateoutput) | **PATCH** /collections/{collectionId}/outputs/{outputId} | Update output


# **createOutput**
> Output createOutput(collectionId, body)

Create output

### Example 
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = OutputsApi();
final collectionId = collectionId_example; // String | 
final body = Output(); // Output | 

try { 
    final result = api_instance.createOutput(collectionId, body);
    print(result);
} catch (e) {
    print('Exception when calling OutputsApi->createOutput: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **body** | [**Output**](Output.md)|  | 

### Return type

[**Output**](Output.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOutput**
> Output deleteOutput(collectionId, outputId)

Delete output

### Example 
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = OutputsApi();
final collectionId = collectionId_example; // String | 
final outputId = outputId_example; // String | 

try { 
    final result = api_instance.deleteOutput(collectionId, outputId);
    print(result);
} catch (e) {
    print('Exception when calling OutputsApi->deleteOutput: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **outputId** | **String**|  | 

### Return type

[**Output**](Output.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOutputs**
> ListOutputResponse listOutputs(collectionId)

List outputs

### Example 
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = OutputsApi();
final collectionId = collectionId_example; // String | 

try { 
    final result = api_instance.listOutputs(collectionId);
    print(result);
} catch (e) {
    print('Exception when calling OutputsApi->listOutputs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 

### Return type

[**ListOutputResponse**](ListOutputResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logs**
> OutputLogResponse logs(collectionId, outputId)

Output logs

### Example 
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = OutputsApi();
final collectionId = collectionId_example; // String | 
final outputId = outputId_example; // String | 

try { 
    final result = api_instance.logs(collectionId, outputId);
    print(result);
} catch (e) {
    print('Exception when calling OutputsApi->logs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **outputId** | **String**|  | 

### Return type

[**OutputLogResponse**](OutputLogResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveOutput**
> Output retrieveOutput(collectionId, outputId)

Retrieve output

### Example 
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = OutputsApi();
final collectionId = collectionId_example; // String | 
final outputId = outputId_example; // String | 

try { 
    final result = api_instance.retrieveOutput(collectionId, outputId);
    print(result);
} catch (e) {
    print('Exception when calling OutputsApi->retrieveOutput: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **outputId** | **String**|  | 

### Return type

[**Output**](Output.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **status**
> OutputStatusResponse status(collectionId, outputId)

Output status

### Example 
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = OutputsApi();
final collectionId = collectionId_example; // String | 
final outputId = outputId_example; // String | 

try { 
    final result = api_instance.status(collectionId, outputId);
    print(result);
} catch (e) {
    print('Exception when calling OutputsApi->status: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **outputId** | **String**|  | 

### Return type

[**OutputStatusResponse**](OutputStatusResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOutput**
> Output updateOutput(collectionId, outputId, body)

Update output

Running outputs will be restarted if required. Note that the collection ID can't be changed on an existing output.

### Example 
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = OutputsApi();
final collectionId = collectionId_example; // String | 
final outputId = outputId_example; // String | 
final body = Output(); // Output | 

try { 
    final result = api_instance.updateOutput(collectionId, outputId, body);
    print(result);
} catch (e) {
    print('Exception when calling OutputsApi->updateOutput: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **outputId** | **String**|  | 
 **body** | [**Output**](Output.md)|  | 

### Return type

[**Output**](Output.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


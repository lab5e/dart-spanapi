# spanapi.api.OutputsApi

## Load the API package
```dart
import 'package:spanapi/api.dart';
```

All URIs are relative to *https://api.lab5e.com/span*

Method | HTTP request | Description
------------- | ------------- | -------------
[**spanCreateOutput**](OutputsApi.md#spancreateoutput) | **POST** /collections/{collectionId}/outputs | Create output
[**spanDeleteOutput**](OutputsApi.md#spandeleteoutput) | **DELETE** /collections/{collectionId}/outputs/{outputId} | Delete output
[**spanListOutputs**](OutputsApi.md#spanlistoutputs) | **GET** /collections/{collectionId}/outputs | List outputs
[**spanLogs**](OutputsApi.md#spanlogs) | **GET** /collections/{collectionId}/outputs/{outputId}/logs | Output logs
[**spanRetrieveOutput**](OutputsApi.md#spanretrieveoutput) | **GET** /collections/{collectionId}/outputs/{outputId} | Retrieve output
[**spanStatus**](OutputsApi.md#spanstatus) | **GET** /collections/{collectionId}/outputs/{outputId}/status | Output status
[**spanUpdateOutput**](OutputsApi.md#spanupdateoutput) | **PATCH** /collections/{collectionId}/outputs/{outputId} | Update output


# **spanCreateOutput**
> Output spanCreateOutput(collectionId, body)

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
    final result = api_instance.spanCreateOutput(collectionId, body);
    print(result);
} catch (e) {
    print('Exception when calling OutputsApi->spanCreateOutput: $e\n');
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

# **spanDeleteOutput**
> Output spanDeleteOutput(collectionId, outputId)

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
    final result = api_instance.spanDeleteOutput(collectionId, outputId);
    print(result);
} catch (e) {
    print('Exception when calling OutputsApi->spanDeleteOutput: $e\n');
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

# **spanListOutputs**
> ListOutputResponse spanListOutputs(collectionId)

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
    final result = api_instance.spanListOutputs(collectionId);
    print(result);
} catch (e) {
    print('Exception when calling OutputsApi->spanListOutputs: $e\n');
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

# **spanLogs**
> OutputLogResponse spanLogs(collectionId, outputId)

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
    final result = api_instance.spanLogs(collectionId, outputId);
    print(result);
} catch (e) {
    print('Exception when calling OutputsApi->spanLogs: $e\n');
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

# **spanRetrieveOutput**
> Output spanRetrieveOutput(collectionId, outputId)

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
    final result = api_instance.spanRetrieveOutput(collectionId, outputId);
    print(result);
} catch (e) {
    print('Exception when calling OutputsApi->spanRetrieveOutput: $e\n');
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

# **spanStatus**
> OutputStatusResponse spanStatus(collectionId, outputId)

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
    final result = api_instance.spanStatus(collectionId, outputId);
    print(result);
} catch (e) {
    print('Exception when calling OutputsApi->spanStatus: $e\n');
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

# **spanUpdateOutput**
> Output spanUpdateOutput(collectionId, outputId, body)

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
    final result = api_instance.spanUpdateOutput(collectionId, outputId, body);
    print(result);
} catch (e) {
    print('Exception when calling OutputsApi->spanUpdateOutput: $e\n');
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


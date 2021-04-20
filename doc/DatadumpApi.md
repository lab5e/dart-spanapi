# spanapi.api.DatadumpApi

## Load the API package
```dart
import 'package:spanapi/api.dart';
```

All URIs are relative to *https://api.lab5e.com/span*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dataDump**](DatadumpApi.md#datadump) | **POST** /datadump | Data dump


# **dataDump**
> DataDumpResponse dataDump(body)

Data dump

Do a complete data dump of your data, devices, outputs and collections.

### Example 
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = DatadumpApi();
final body = DataDumpRequest(); // DataDumpRequest | 

try { 
    final result = api_instance.dataDump(body);
    print(result);
} catch (e) {
    print('Exception when calling DatadumpApi->dataDump: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DataDumpRequest**](DataDumpRequest.md)|  | 

### Return type

[**DataDumpResponse**](DataDumpResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


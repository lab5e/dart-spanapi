# spanapi.api.DevicesApi

## Load the API package
```dart
import 'package:spanapi/api.dart';
```

All URIs are relative to *https://api.lab5e.com/span*

Method | HTTP request | Description
------------- | ------------- | -------------
[**spanCreateDevice**](DevicesApi.md#spancreatedevice) | **POST** /collections/{collectionId}/devices | Create device
[**spanDeleteDevice**](DevicesApi.md#spandeletedevice) | **DELETE** /collections/{collectionId}/devices/{deviceId} | Remove device
[**spanListDeviceData**](DevicesApi.md#spanlistdevicedata) | **GET** /collections/{collectionId}/devices/{deviceId}/data | Get payloads
[**spanListDevices**](DevicesApi.md#spanlistdevices) | **GET** /collections/{collectionId}/devices | List devices
[**spanRetrieveDevice**](DevicesApi.md#spanretrievedevice) | **GET** /collections/{collectionId}/devices/{deviceId} | Retrieve device
[**spanSendMessage**](DevicesApi.md#spansendmessage) | **POST** /collections/{collectionId}/devices/{deviceId}/to | Send message
[**spanUpdateDevice**](DevicesApi.md#spanupdatedevice) | **PATCH** /collections/{existingCollectionId}/devices/{deviceId} | Update device


# **spanCreateDevice**
> Device spanCreateDevice(collectionId, body)

Create device

Create a new device. This will add a device to the collection. You must have write access to the collection.

### Example 
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = DevicesApi();
final collectionId = collectionId_example; // String | This is the containing collection
final body = Device(); // Device | 

try { 
    final result = api_instance.spanCreateDevice(collectionId, body);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->spanCreateDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**| This is the containing collection | 
 **body** | [**Device**](Device.md)|  | 

### Return type

[**Device**](Device.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spanDeleteDevice**
> Device spanDeleteDevice(collectionId, deviceId)

Remove device

### Example 
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = DevicesApi();
final collectionId = collectionId_example; // String | 
final deviceId = deviceId_example; // String | 

try { 
    final result = api_instance.spanDeleteDevice(collectionId, deviceId);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->spanDeleteDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **deviceId** | **String**|  | 

### Return type

[**Device**](Device.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spanListDeviceData**
> ListDataResponse spanListDeviceData(collectionId, deviceId, limit, start, end, offset)

Get payloads

List the data received from the device. Use the query parameters to control what data you retrieve.

### Example 
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = DevicesApi();
final collectionId = collectionId_example; // String | The collection ID. This is included in the request path.
final deviceId = deviceId_example; // String | The device ID. This is included in the request path.
final limit = 56; // int | Limit the number of payloads to return. The default is 512.
final start = start_example; // String | Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch.
final end = end_example; // String | End of time range. The default is the current time stamp. Value is in milliseconds since epoch.
final offset = offset_example; // String | The message offset based on the message ID. This parameter can't be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned.

try { 
    final result = api_instance.spanListDeviceData(collectionId, deviceId, limit, start, end, offset);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->spanListDeviceData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**| The collection ID. This is included in the request path. | 
 **deviceId** | **String**| The device ID. This is included in the request path. | 
 **limit** | **int**| Limit the number of payloads to return. The default is 512. | [optional] 
 **start** | **String**| Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch. | [optional] 
 **end** | **String**| End of time range. The default is the current time stamp. Value is in milliseconds since epoch. | [optional] 
 **offset** | **String**| The message offset based on the message ID. This parameter can't be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned. | [optional] 

### Return type

[**ListDataResponse**](ListDataResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spanListDevices**
> ListDevicesResponse spanListDevices(collectionId)

List devices

### Example 
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = DevicesApi();
final collectionId = collectionId_example; // String | 

try { 
    final result = api_instance.spanListDevices(collectionId);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->spanListDevices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 

### Return type

[**ListDevicesResponse**](ListDevicesResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spanRetrieveDevice**
> Device spanRetrieveDevice(collectionId, deviceId)

Retrieve device

Retrieve a single device

### Example 
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = DevicesApi();
final collectionId = collectionId_example; // String | 
final deviceId = deviceId_example; // String | 

try { 
    final result = api_instance.spanRetrieveDevice(collectionId, deviceId);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->spanRetrieveDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **deviceId** | **String**|  | 

### Return type

[**Device**](Device.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spanSendMessage**
> SendMessageResponse spanSendMessage(collectionId, deviceId, body)

Send message

Send a message to the device

### Example 
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = DevicesApi();
final collectionId = collectionId_example; // String | 
final deviceId = deviceId_example; // String | 
final body = SendMessageRequest(); // SendMessageRequest | 

try { 
    final result = api_instance.spanSendMessage(collectionId, deviceId, body);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->spanSendMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **deviceId** | **String**|  | 
 **body** | [**SendMessageRequest**](SendMessageRequest.md)|  | 

### Return type

[**SendMessageResponse**](SendMessageResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spanUpdateDevice**
> Device spanUpdateDevice(existingCollectionId, deviceId, body)

Update device

### Example 
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = DevicesApi();
final existingCollectionId = existingCollectionId_example; // String | 
final deviceId = deviceId_example; // String | 
final body = UpdateDeviceRequest(); // UpdateDeviceRequest | 

try { 
    final result = api_instance.spanUpdateDevice(existingCollectionId, deviceId, body);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->spanUpdateDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **existingCollectionId** | **String**|  | 
 **deviceId** | **String**|  | 
 **body** | [**UpdateDeviceRequest**](UpdateDeviceRequest.md)|  | 

### Return type

[**Device**](Device.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


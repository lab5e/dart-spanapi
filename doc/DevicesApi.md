# spanapi.api.DevicesApi

## Load the API package
```dart
import 'package:spanapi/api.dart';
```

All URIs are relative to *https://api.lab5e.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDownstreamMessage**](DevicesApi.md#adddownstreammessage) | **POST** /span/collections/{collectionId}/devices/{deviceId}/outbox | Add message to oubox
[**createDevice**](DevicesApi.md#createdevice) | **POST** /span/collections/{collectionId}/devices | Create device
[**deleteDevice**](DevicesApi.md#deletedevice) | **DELETE** /span/collections/{collectionId}/devices/{deviceId} | Remove device.
[**deleteDownstreamMessage**](DevicesApi.md#deletedownstreammessage) | **DELETE** /span/collections/{collectionId}/devices/{deviceId}/outbox/{messageId} | Delete outgoing message
[**deviceCertificate**](DevicesApi.md#devicecertificate) | **GET** /span/collections/{collectionId}/devices/{deviceId}/certs | Get issued certificate(s) for device
[**listDeviceData**](DevicesApi.md#listdevicedata) | **GET** /span/collections/{collectionId}/devices/{deviceId}/data | Retrieve data from device
[**listDevices**](DevicesApi.md#listdevices) | **GET** /span/collections/{collectionId}/devices | List devices in collection.
[**listDownstreamMessages**](DevicesApi.md#listdownstreammessages) | **GET** /span/collections/{collectionId}/devices/{deviceId}/outbox | List the messages in the outbox
[**listUpstreamMessages**](DevicesApi.md#listupstreammessages) | **GET** /span/collections/{collectionId}/devices/{deviceId}/inbox | List incoming messages
[**retrieveDevice**](DevicesApi.md#retrievedevice) | **GET** /span/collections/{collectionId}/devices/{deviceId} | Retrieve device
[**retrieveDeviceStats**](DevicesApi.md#retrievedevicestats) | **GET** /span/collections/{collectionId}/devices/{deviceId}/stats | Retrieve device statistics
[**updateDevice**](DevicesApi.md#updatedevice) | **PATCH** /span/collections/{existingCollectionId}/devices/{deviceId} | Update device


# **addDownstreamMessage**
> MessageDownstream addDownstreamMessage(collectionId, deviceId, body)

Add message to oubox

Add a new message in the outgoing queue to the device. If there is other messages in the outbox these messages will be sent first.

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
final body = AddDownstreamMessageRequest(); // AddDownstreamMessageRequest | 

try {
    final result = api_instance.addDownstreamMessage(collectionId, deviceId, body);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->addDownstreamMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **deviceId** | **String**|  | 
 **body** | [**AddDownstreamMessageRequest**](AddDownstreamMessageRequest.md)|  | 

### Return type

[**MessageDownstream**](MessageDownstream.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDevice**
> Device createDevice(collectionId, body)

Create device

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = DevicesApi();
final collectionId = collectionId_example; // String | This is the containing collection
final body = CreateDeviceRequest(); // CreateDeviceRequest | 

try {
    final result = api_instance.createDevice(collectionId, body);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->createDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**| This is the containing collection | 
 **body** | [**CreateDeviceRequest**](CreateDeviceRequest.md)|  | 

### Return type

[**Device**](Device.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDevice**
> Device deleteDevice(collectionId, deviceId)

Remove device.

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = DevicesApi();
final collectionId = collectionId_example; // String | This is the containing collection
final deviceId = deviceId_example; // String | The device ID is assigned by the backend.

try {
    final result = api_instance.deleteDevice(collectionId, deviceId);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->deleteDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**| This is the containing collection | 
 **deviceId** | **String**| The device ID is assigned by the backend. | 

### Return type

[**Device**](Device.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDownstreamMessage**
> DeleteDownstreamMessageResponse deleteDownstreamMessage(collectionId, deviceId, messageId)

Delete outgoing message

Delete an outgoing (ie downstream) message from the outbox.

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
final messageId = messageId_example; // String | 

try {
    final result = api_instance.deleteDownstreamMessage(collectionId, deviceId, messageId);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->deleteDownstreamMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **deviceId** | **String**|  | 
 **messageId** | **String**|  | 

### Return type

[**DeleteDownstreamMessageResponse**](DeleteDownstreamMessageResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deviceCertificate**
> DeviceCertificateResponse deviceCertificate(collectionId, deviceId)

Get issued certificate(s) for device

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
    final result = api_instance.deviceCertificate(collectionId, deviceId);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->deviceCertificate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **deviceId** | **String**|  | 

### Return type

[**DeviceCertificateResponse**](DeviceCertificateResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDeviceData**
> ListDataResponse listDeviceData(collectionId, deviceId, limit, start, end, offset)

Retrieve data from device

List the data received from the device. Use the query parameters to control what data you retrieve. The maximum number of data points is 100.

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
    final result = api_instance.listDeviceData(collectionId, deviceId, limit, start, end, offset);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->listDeviceData: $e\n');
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

# **listDevices**
> ListDevicesResponse listDevices(collectionId)

List devices in collection.

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
    final result = api_instance.listDevices(collectionId);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->listDevices: $e\n');
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

# **listDownstreamMessages**
> ListDownstreamMessagesResponse listDownstreamMessages(collectionId, deviceId, limit, start, end, offset)

List the messages in the outbox

List messages that should be sent to the device when it connects to the service. The messages are sent to the device when it connects to the service and either sends a message (via UDP or CoAP) or requests a message via CoAP GET request.option

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
final limit = 56; // int | 
final start = start_example; // String | Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch.
final end = end_example; // String | End of time range. The default is the current time stamp. Value is in milliseconds since epoch.
final offset = offset_example; // String | The message offset based on the message ID. This parameter can't be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned.

try {
    final result = api_instance.listDownstreamMessages(collectionId, deviceId, limit, start, end, offset);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->listDownstreamMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **deviceId** | **String**|  | 
 **limit** | **int**|  | [optional] 
 **start** | **String**| Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch. | [optional] 
 **end** | **String**| End of time range. The default is the current time stamp. Value is in milliseconds since epoch. | [optional] 
 **offset** | **String**| The message offset based on the message ID. This parameter can't be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned. | [optional] 

### Return type

[**ListDownstreamMessagesResponse**](ListDownstreamMessagesResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUpstreamMessages**
> ListUpstreamMessagesResponse listUpstreamMessages(collectionId, deviceId, limit, start, end, offset)

List incoming messages

Retrieve a list of incoming (ie upstream) messages, ie messages sent from the device to the service. These messages are buffered in the service until they expire.  Use the query parameters to limit the number of messages to return. If no limit is specified the default limit of 250 is used.

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
final limit = 56; // int | 
final start = start_example; // String | Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch.
final end = end_example; // String | End of time range. The default is the current time stamp. Value is in milliseconds since epoch.
final offset = offset_example; // String | The message offset based on the message ID. This parameter can't be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned.

try {
    final result = api_instance.listUpstreamMessages(collectionId, deviceId, limit, start, end, offset);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->listUpstreamMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **deviceId** | **String**|  | 
 **limit** | **int**|  | [optional] 
 **start** | **String**| Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch. | [optional] 
 **end** | **String**| End of time range. The default is the current time stamp. Value is in milliseconds since epoch. | [optional] 
 **offset** | **String**| The message offset based on the message ID. This parameter can't be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned. | [optional] 

### Return type

[**ListUpstreamMessagesResponse**](ListUpstreamMessagesResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveDevice**
> Device retrieveDevice(collectionId, deviceId)

Retrieve device

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = DevicesApi();
final collectionId = collectionId_example; // String | This is the containing collection
final deviceId = deviceId_example; // String | The device identifier

try {
    final result = api_instance.retrieveDevice(collectionId, deviceId);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->retrieveDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**| This is the containing collection | 
 **deviceId** | **String**| The device identifier | 

### Return type

[**Device**](Device.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveDeviceStats**
> DeviceStats retrieveDeviceStats(collectionId, deviceId)

Retrieve device statistics

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = DevicesApi();
final collectionId = collectionId_example; // String | This is the containing collection
final deviceId = deviceId_example; // String | The device identifier

try {
    final result = api_instance.retrieveDeviceStats(collectionId, deviceId);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->retrieveDeviceStats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**| This is the containing collection | 
 **deviceId** | **String**| The device identifier | 

### Return type

[**DeviceStats**](DeviceStats.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDevice**
> Device updateDevice(existingCollectionId, deviceId, body)

Update device

The device can be moved from one collection to another by setting the collection ID field to the new collection. You must have administrative access to both collections. A note on gateway configurations: Empty gateway configuration blocks are deleted. If the configuration block contains a gateway ID it will be updated  with the new values. All values must be submitted in the request. If a device is moved out of the collection and it references a gateway in the configuration the operation will fail. Devices that are moved from one collection to another and references gateway configurations must be updated before they are moved.

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
    final result = api_instance.updateDevice(existingCollectionId, deviceId, body);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->updateDevice: $e\n');
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


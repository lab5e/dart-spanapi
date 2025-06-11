# spanapi.api.FotaApi

## Load the API package
```dart
import 'package:spanapi/api.dart';
```

All URIs are relative to *https://api.lab5e.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assignTargetImage**](FotaApi.md#assigntargetimage) | **PATCH** /span/collections/{collectionId}/firmware/labeled/{imageId}/assign | BETA: Assign a target image
[**clearFirmwareError**](FotaApi.md#clearfirmwareerror) | **DELETE** /span/collections/{collectionId}/devices/{deviceId}/fwerror | Clear FOTA error
[**createFirmware**](FotaApi.md#createfirmware) | **POST** /span/collections/{collectionId}/firmware | Create firmware
[**createLabeledFirmware**](FotaApi.md#createlabeledfirmware) | **POST** /span/collections/{collectionId}/firmware/labeled | BETA: Create a labeled firmware image
[**deleteFirmware**](FotaApi.md#deletefirmware) | **DELETE** /span/collections/{collectionId}/firmware/{imageId} | Delete firmware
[**deleteLabeledImage**](FotaApi.md#deletelabeledimage) | **DELETE** /span/collections/{collectionId}/firmware/labeled/{imageId} | BETA: Remove a tagged firmware image
[**firmwareUsage**](FotaApi.md#firmwareusage) | **GET** /span/collections/{collectionId}/firmware/{imageId}/usage | Firmware usage
[**getImageState**](FotaApi.md#getimagestate) | **PATCH** /span/collections/{collectionId}/devices/{deviceId}/fotastate | BETA: Get state for a single device
[**listFirmware**](FotaApi.md#listfirmware) | **GET** /span/collections/{collectionId}/firmware | List firmware
[**listImageStates**](FotaApi.md#listimagestates) | **GET** /span/collections/{collectionId}/firmware/labeled/states | BETA: List image assignments plus states
[**listImageVersionHistory**](FotaApi.md#listimageversionhistory) | **PATCH** /span/collections/{collectionId}/devices/{deviceId}/fotalog | BETA: List version history for a single device
[**listLabeledFirmware**](FotaApi.md#listlabeledfirmware) | **GET** /span/collections/{collectionId}/firmware/labeled | BETA: List the labeled firmware images for a collection
[**retrieveFirmware**](FotaApi.md#retrievefirmware) | **GET** /span/collections/{collectionId}/firmware/{imageId} | Retrieve firmware
[**retrieveFirmwareStats**](FotaApi.md#retrievefirmwarestats) | **GET** /span/collections/{collectionId}/firmware/{imageId}/stats | Retrieve firmware statistics
[**updateFirmware**](FotaApi.md#updatefirmware) | **PATCH** /span/collections/{existingCollectionId}/firmware/{imageId} | Update firmware


# **assignTargetImage**
> AssignTargetImageResponse assignTargetImage(collectionId, imageId, label, deviceId)

BETA: Assign a target image

Assign a particular labeled image to a device or a collection

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = FotaApi();
final collectionId = collectionId_example; // String | 
final imageId = imageId_example; // String | 
final label = label_example; // String | 
final deviceId = deviceId_example; // String | 

try {
    final result = api_instance.assignTargetImage(collectionId, imageId, label, deviceId);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->assignTargetImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **imageId** | **String**|  | 
 **label** | **String**|  | [optional] 
 **deviceId** | **String**|  | [optional] 

### Return type

[**AssignTargetImageResponse**](AssignTargetImageResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clearFirmwareError**
> ClearFirmwareErrorResponse clearFirmwareError(collectionId, deviceId)

Clear FOTA error

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = FotaApi();
final collectionId = collectionId_example; // String | 
final deviceId = deviceId_example; // String | 

try {
    final result = api_instance.clearFirmwareError(collectionId, deviceId);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->clearFirmwareError: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **deviceId** | **String**|  | 

### Return type

[**ClearFirmwareErrorResponse**](ClearFirmwareErrorResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createFirmware**
> Firmware createFirmware(collectionId, body)

Create firmware

Firmware images must have unique version numbers and have an unique checksum. The checksum is calculated when the firmware image is uploaded.

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = FotaApi();
final collectionId = collectionId_example; // String | 
final body = CreateFirmwareBody(); // CreateFirmwareBody | 

try {
    final result = api_instance.createFirmware(collectionId, body);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->createFirmware: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **body** | [**CreateFirmwareBody**](CreateFirmwareBody.md)|  | 

### Return type

[**Firmware**](Firmware.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createLabeledFirmware**
> CreateLabeledFirmwareResponse createLabeledFirmware(collectionId, version, label, imageRef)

BETA: Create a labeled firmware image

Devices might need several different firmware images, depending on their configuration. Low-power devices usually have just a single firmware image but more complex devices might need several firmware images for their  subsystems. The firmware image must be uploaded prior to the call and the  returned data structure is included in the request.

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = FotaApi();
final collectionId = collectionId_example; // String | 
final version = version_example; // String | 
final label = label_example; // String | 
final imageRef = imageRef_example; // String | 

try {
    final result = api_instance.createLabeledFirmware(collectionId, version, label, imageRef);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->createLabeledFirmware: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **version** | **String**|  | [optional] 
 **label** | **String**|  | [optional] 
 **imageRef** | **String**|  | [optional] 

### Return type

[**CreateLabeledFirmwareResponse**](CreateLabeledFirmwareResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFirmware**
> Firmware deleteFirmware(collectionId, imageId)

Delete firmware

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = FotaApi();
final collectionId = collectionId_example; // String | 
final imageId = imageId_example; // String | 

try {
    final result = api_instance.deleteFirmware(collectionId, imageId);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->deleteFirmware: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **imageId** | **String**|  | 

### Return type

[**Firmware**](Firmware.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteLabeledImage**
> Object deleteLabeledImage(collectionId, imageId)

BETA: Remove a tagged firmware image

Remove a tagged firmware image from the backing store and it's metadata

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = FotaApi();
final collectionId = collectionId_example; // String | 
final imageId = imageId_example; // String | 

try {
    final result = api_instance.deleteLabeledImage(collectionId, imageId);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->deleteLabeledImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **imageId** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **firmwareUsage**
> FirmwareUsageResponse firmwareUsage(collectionId, imageId)

Firmware usage

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = FotaApi();
final collectionId = collectionId_example; // String | 
final imageId = imageId_example; // String | 

try {
    final result = api_instance.firmwareUsage(collectionId, imageId);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->firmwareUsage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **imageId** | **String**|  | 

### Return type

[**FirmwareUsageResponse**](FirmwareUsageResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getImageState**
> GetImageStateResponse getImageState(collectionId, deviceId)

BETA: Get state for a single device

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = FotaApi();
final collectionId = collectionId_example; // String | 
final deviceId = deviceId_example; // String | 

try {
    final result = api_instance.getImageState(collectionId, deviceId);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->getImageState: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **deviceId** | **String**|  | 

### Return type

[**GetImageStateResponse**](GetImageStateResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFirmware**
> ListFirmwareResponse listFirmware(collectionId)

List firmware

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = FotaApi();
final collectionId = collectionId_example; // String | 

try {
    final result = api_instance.listFirmware(collectionId);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->listFirmware: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 

### Return type

[**ListFirmwareResponse**](ListFirmwareResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listImageStates**
> ListImageStatesResponse listImageStates(collectionId)

BETA: List image assignments plus states

List the status for the labeled firmware images in the collection

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = FotaApi();
final collectionId = collectionId_example; // String | 

try {
    final result = api_instance.listImageStates(collectionId);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->listImageStates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 

### Return type

[**ListImageStatesResponse**](ListImageStatesResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listImageVersionHistory**
> ListImageVersionHistoryResponse listImageVersionHistory(collectionId, deviceId)

BETA: List version history for a single device

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = FotaApi();
final collectionId = collectionId_example; // String | 
final deviceId = deviceId_example; // String | 

try {
    final result = api_instance.listImageVersionHistory(collectionId, deviceId);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->listImageVersionHistory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **deviceId** | **String**|  | 

### Return type

[**ListImageVersionHistoryResponse**](ListImageVersionHistoryResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listLabeledFirmware**
> ListLabeledFirmwareResponse listLabeledFirmware(collectionId)

BETA: List the labeled firmware images for a collection

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = FotaApi();
final collectionId = collectionId_example; // String | 

try {
    final result = api_instance.listLabeledFirmware(collectionId);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->listLabeledFirmware: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 

### Return type

[**ListLabeledFirmwareResponse**](ListLabeledFirmwareResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveFirmware**
> Firmware retrieveFirmware(collectionId, imageId)

Retrieve firmware

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = FotaApi();
final collectionId = collectionId_example; // String | 
final imageId = imageId_example; // String | 

try {
    final result = api_instance.retrieveFirmware(collectionId, imageId);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->retrieveFirmware: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **imageId** | **String**|  | 

### Return type

[**Firmware**](Firmware.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveFirmwareStats**
> FirmwareStats retrieveFirmwareStats(collectionId, imageId)

Retrieve firmware statistics

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = FotaApi();
final collectionId = collectionId_example; // String | 
final imageId = imageId_example; // String | 

try {
    final result = api_instance.retrieveFirmwareStats(collectionId, imageId);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->retrieveFirmwareStats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **imageId** | **String**|  | 

### Return type

[**FirmwareStats**](FirmwareStats.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFirmware**
> Firmware updateFirmware(existingCollectionId, imageId, body)

Update firmware

Only the version and tags fields can be updated. The other fields will be ignored.

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = FotaApi();
final existingCollectionId = existingCollectionId_example; // String | 
final imageId = imageId_example; // String | 
final body = UpdateFirmwareBody(); // UpdateFirmwareBody | 

try {
    final result = api_instance.updateFirmware(existingCollectionId, imageId, body);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->updateFirmware: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **existingCollectionId** | **String**|  | 
 **imageId** | **String**|  | 
 **body** | [**UpdateFirmwareBody**](UpdateFirmwareBody.md)|  | 

### Return type

[**Firmware**](Firmware.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


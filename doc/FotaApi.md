# spanapi.api.FotaApi

## Load the API package
```dart
import 'package:spanapi/api.dart';
```

All URIs are relative to *https://api.lab5e.com/span*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clearFirmwareError**](FotaApi.md#clearfirmwareerror) | **DELETE** /collections/{collectionId}/devices/{deviceId}/fwerror | Clear FOTA error
[**createFirmware**](FotaApi.md#createfirmware) | **POST** /collections/{collectionId}/firmware | Create firmware
[**deleteFirmware**](FotaApi.md#deletefirmware) | **DELETE** /collections/{collectionId}/firmware/{imageId} | Delete firmware
[**firmwareUsage**](FotaApi.md#firmwareusage) | **GET** /collections/{collectionId}/firmware/{imageId}/usage | Firmware usage
[**listFirmware**](FotaApi.md#listfirmware) | **GET** /collections/{collectionId}/firmware | List firmware
[**retrieveFirmware**](FotaApi.md#retrievefirmware) | **GET** /collections/{collectionId}/firmware/{imageId} | Retrieve firmware
[**updateFirmware**](FotaApi.md#updatefirmware) | **PATCH** /collections/{collectionId}/firmware/{imageId} | Update firmware


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

Create a new firmware image. This is also invoked by the custom HTTP uploader if the POST uses multipart/formdata for the request.

### Example 
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = FotaApi();
final collectionId = collectionId_example; // String | 
final body = CreateFirmwareRequest(); // CreateFirmwareRequest | 

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
 **body** | [**CreateFirmwareRequest**](CreateFirmwareRequest.md)|  | 

### Return type

[**Firmware**](Firmware.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
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

# **firmwareUsage**
> FirmwareUsageResponse firmwareUsage(collectionId, imageId)

Firmware usage

Shows the firmware usage for devices in the collection

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

# **listFirmware**
> ListFirmwareResponse listFirmware(collectionId)

List firmware

Lists available firmware images in collection

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

# **retrieveFirmware**
> Firmware retrieveFirmware(collectionId, imageId)

Retrieve firmware

Retrieve information on a firmware image

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

# **updateFirmware**
> Firmware updateFirmware(collectionId, imageId, body)

Update firmware

### Example 
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = FotaApi();
final collectionId = collectionId_example; // String | Collection ID  Collection ID for the collection owning the firmware image.
final imageId = imageId_example; // String | Firmware image ID
final body = Firmware(); // Firmware | 

try { 
    final result = api_instance.updateFirmware(collectionId, imageId, body);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->updateFirmware: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**| Collection ID  Collection ID for the collection owning the firmware image. | 
 **imageId** | **String**| Firmware image ID | 
 **body** | [**Firmware**](Firmware.md)|  | 

### Return type

[**Firmware**](Firmware.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


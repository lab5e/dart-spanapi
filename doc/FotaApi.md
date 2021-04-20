# spanapi.api.FotaApi

## Load the API package
```dart
import 'package:spanapi/api.dart';
```

All URIs are relative to *https://api.lab5e.com/span*

Method | HTTP request | Description
------------- | ------------- | -------------
[**spanClearFirmwareError**](FotaApi.md#spanclearfirmwareerror) | **DELETE** /collections/{collectionId}/devices/{deviceId}/fwerror | Clear FOTA error
[**spanCreateFirmware**](FotaApi.md#spancreatefirmware) | **POST** /collections/{collectionId}/firmware | Create firmware
[**spanDeleteFirmware**](FotaApi.md#spandeletefirmware) | **DELETE** /collections/{collectionId}/firmware/{imageId} | Delete firmware
[**spanFirmwareUsage**](FotaApi.md#spanfirmwareusage) | **PATCH** /collections/{collectionId}/firmware/{imageId}/usage | Firmware usage
[**spanListFirmware**](FotaApi.md#spanlistfirmware) | **GET** /collections/{collectionId}/firmware | List firmware
[**spanRetrieveFirmware**](FotaApi.md#spanretrievefirmware) | **GET** /collections/{collectionId}/firmware/{imageId} | Retrieve firmware
[**spanUpdateFirmware**](FotaApi.md#spanupdatefirmware) | **PATCH** /collections/{collectionId}/firmware/{imageId} | Update firmware


# **spanClearFirmwareError**
> Object spanClearFirmwareError(collectionId, deviceId)

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
    final result = api_instance.spanClearFirmwareError(collectionId, deviceId);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->spanClearFirmwareError: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **deviceId** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spanCreateFirmware**
> Firmware spanCreateFirmware(collectionId, body)

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
    final result = api_instance.spanCreateFirmware(collectionId, body);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->spanCreateFirmware: $e\n');
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

# **spanDeleteFirmware**
> Firmware spanDeleteFirmware(collectionId, imageId)

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
    final result = api_instance.spanDeleteFirmware(collectionId, imageId);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->spanDeleteFirmware: $e\n');
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

# **spanFirmwareUsage**
> FirmwareUsageResponse spanFirmwareUsage(collectionId, imageId)

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
    final result = api_instance.spanFirmwareUsage(collectionId, imageId);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->spanFirmwareUsage: $e\n');
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

# **spanListFirmware**
> ListFirmwareResponse spanListFirmware(collectionId)

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
    final result = api_instance.spanListFirmware(collectionId);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->spanListFirmware: $e\n');
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

# **spanRetrieveFirmware**
> Firmware spanRetrieveFirmware(collectionId, imageId)

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
    final result = api_instance.spanRetrieveFirmware(collectionId, imageId);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->spanRetrieveFirmware: $e\n');
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

# **spanUpdateFirmware**
> Firmware spanUpdateFirmware(collectionId, imageId, body)

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
    final result = api_instance.spanUpdateFirmware(collectionId, imageId, body);
    print(result);
} catch (e) {
    print('Exception when calling FotaApi->spanUpdateFirmware: $e\n');
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


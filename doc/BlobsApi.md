# spanapi.api.BlobsApi

## Load the API package
```dart
import 'package:spanapi/api.dart';
```

All URIs are relative to *https://api.lab5e.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteBlob**](BlobsApi.md#deleteblob) | **DELETE** /span/collections/{collectionId}/blobs/{blobId} | Remove a blob stored on a collection
[**listBlobs**](BlobsApi.md#listblobs) | **GET** /span/collections/{collectionId}/blobs | List the blobs for a collection


# **deleteBlob**
> Object deleteBlob(collectionId, blobId)

Remove a blob stored on a collection

Remove a blob stored on the collection.

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = BlobsApi();
final collectionId = collectionId_example; // String | 
final blobId = blobId_example; // String | 

try {
    final result = api_instance.deleteBlob(collectionId, blobId);
    print(result);
} catch (e) {
    print('Exception when calling BlobsApi->deleteBlob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **blobId** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBlobs**
> ListBlobResponse listBlobs(collectionId, limit)

List the blobs for a collection

Retrieve a list of all the blobs stored on this collection. Blobs are uploaded by the devices through one of the blob endpoints.

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = BlobsApi();
final collectionId = collectionId_example; // String | 
final limit = 56; // int | 

try {
    final result = api_instance.listBlobs(collectionId, limit);
    print(result);
} catch (e) {
    print('Exception when calling BlobsApi->listBlobs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **limit** | **int**|  | [optional] 

### Return type

[**ListBlobResponse**](ListBlobResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


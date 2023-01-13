# spanapi.api.CollectionsApi

## Load the API package
```dart
import 'package:spanapi/api.dart';
```

All URIs are relative to *https://api.lab5e.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCollection**](CollectionsApi.md#createcollection) | **POST** /span/collections | Create collection
[**deleteCollection**](CollectionsApi.md#deletecollection) | **DELETE** /span/collections/{collectionId} | Delete collection
[**listCollectionData**](CollectionsApi.md#listcollectiondata) | **GET** /span/collections/{collectionId}/data | Retrieve data from devices
[**listCollections**](CollectionsApi.md#listcollections) | **GET** /span/collections | List collections
[**retrieveCollection**](CollectionsApi.md#retrievecollection) | **GET** /span/collections/{collectionId} | Retrieve collection
[**updateCollection**](CollectionsApi.md#updatecollection) | **PATCH** /span/collections/{collectionId} | Update collection


# **createCollection**
> Collection createCollection(body)

Create collection

Create a new collection

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = CollectionsApi();
final body = CreateCollectionRequest(); // CreateCollectionRequest | Request object when creating a collection. The collect ID is assigned by the service.

try {
    final result = api_instance.createCollection(body);
    print(result);
} catch (e) {
    print('Exception when calling CollectionsApi->createCollection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateCollectionRequest**](CreateCollectionRequest.md)| Request object when creating a collection. The collect ID is assigned by the service. | 

### Return type

[**Collection**](Collection.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCollection**
> Collection deleteCollection(collectionId)

Delete collection

Remove the collection. Devices, firmware images, outputs and all other related resources must be removed from the collection before it can be deleted.

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = CollectionsApi();
final collectionId = collectionId_example; // String | The ID of the collection you want to delete

try {
    final result = api_instance.deleteCollection(collectionId);
    print(result);
} catch (e) {
    print('Exception when calling CollectionsApi->deleteCollection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**| The ID of the collection you want to delete | 

### Return type

[**Collection**](Collection.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCollectionData**
> ListDataResponse listCollectionData(collectionId, limit, start, end, offset)

Retrieve data from devices

Retrieve data sent by the devices in the collection. The maximum number of data points is 100.

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = CollectionsApi();
final collectionId = collectionId_example; // String | The collection ID requested. This is included in the request path.
final limit = 56; // int | Limit the number of payloads to return. The default is 512.
final start = start_example; // String | Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch.
final end = end_example; // String | End of time range. The default is the current time stamp. Value is in milliseconds since epoch.
final offset = offset_example; // String | The message offset based on the message ID. This parameter can't be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned.

try {
    final result = api_instance.listCollectionData(collectionId, limit, start, end, offset);
    print(result);
} catch (e) {
    print('Exception when calling CollectionsApi->listCollectionData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**| The collection ID requested. This is included in the request path. | 
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

# **listCollections**
> ListCollectionResponse listCollections()

List collections

Lists all the collections that one of your teams owns.

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = CollectionsApi();

try {
    final result = api_instance.listCollections();
    print(result);
} catch (e) {
    print('Exception when calling CollectionsApi->listCollections: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListCollectionResponse**](ListCollectionResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveCollection**
> Collection retrieveCollection(collectionId)

Retrieve collection

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = CollectionsApi();
final collectionId = collectionId_example; // String | The collection ID of the collection you are requesting

try {
    final result = api_instance.retrieveCollection(collectionId);
    print(result);
} catch (e) {
    print('Exception when calling CollectionsApi->retrieveCollection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**| The collection ID of the collection you are requesting | 

### Return type

[**Collection**](Collection.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCollection**
> Collection updateCollection(collectionId, body)

Update collection

Update a collection.

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = CollectionsApi();
final collectionId = collectionId_example; // String | The ID of the collection. This is assigned by the backend.
final body = UpdateCollectionRequest(); // UpdateCollectionRequest | 

try {
    final result = api_instance.updateCollection(collectionId, body);
    print(result);
} catch (e) {
    print('Exception when calling CollectionsApi->updateCollection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**| The ID of the collection. This is assigned by the backend. | 
 **body** | [**UpdateCollectionRequest**](UpdateCollectionRequest.md)|  | 

### Return type

[**Collection**](Collection.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


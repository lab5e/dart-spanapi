# spanapi.api.CollectionsApi

## Load the API package
```dart
import 'package:spanapi/api.dart';
```

All URIs are relative to *https://api.lab5e.com/span*

Method | HTTP request | Description
------------- | ------------- | -------------
[**spanBroadcastMessage**](CollectionsApi.md#spanbroadcastmessage) | **POST** /collections/{collectionId}/to | Broadcast message
[**spanCreateCollection**](CollectionsApi.md#spancreatecollection) | **POST** /collections | Create collection
[**spanDeleteCollection**](CollectionsApi.md#spandeletecollection) | **DELETE** /collections/{collectionId} | Delete collection
[**spanListCollectionData**](CollectionsApi.md#spanlistcollectiondata) | **GET** /collections/{collectionId}/data | Get payloads
[**spanListCollections**](CollectionsApi.md#spanlistcollections) | **GET** /collections | List collections
[**spanRetrieveCollection**](CollectionsApi.md#spanretrievecollection) | **GET** /collections/{collectionId} | Retrieve collection
[**spanUpdateCollection**](CollectionsApi.md#spanupdatecollection) | **PATCH** /collections/{collectionId} | Update collection


# **spanBroadcastMessage**
> MultiSendMessageResponse spanBroadcastMessage(collectionId, body)

Broadcast message

Broadcast a message to all devices in the collection. This request will always succeed if the collection exists, even if there are one or more send errors. Individual errors are returned as an array of error messages in the response. Use equivalent to resource for devices to send a message to single device.

### Example 
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = CollectionsApi();
final collectionId = collectionId_example; // String | 
final body = BroadcastMessageRequest(); // BroadcastMessageRequest | 

try { 
    final result = api_instance.spanBroadcastMessage(collectionId, body);
    print(result);
} catch (e) {
    print('Exception when calling CollectionsApi->spanBroadcastMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **body** | [**BroadcastMessageRequest**](BroadcastMessageRequest.md)|  | 

### Return type

[**MultiSendMessageResponse**](MultiSendMessageResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spanCreateCollection**
> Collection spanCreateCollection(body)

Create collection

The returned collection is the collection stored in the backend. Defaults have been set. There are no required fields in a collection

### Example 
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = CollectionsApi();
final body = Collection(); // Collection | 

try { 
    final result = api_instance.spanCreateCollection(body);
    print(result);
} catch (e) {
    print('Exception when calling CollectionsApi->spanCreateCollection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Collection**](Collection.md)|  | 

### Return type

[**Collection**](Collection.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spanDeleteCollection**
> Collection spanDeleteCollection(collectionId)

Delete collection

You must have write access to the collection

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
    final result = api_instance.spanDeleteCollection(collectionId);
    print(result);
} catch (e) {
    print('Exception when calling CollectionsApi->spanDeleteCollection: $e\n');
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

# **spanListCollectionData**
> ListDataResponse spanListCollectionData(collectionId, limit, start, end, offset)

Get payloads

List the data received from all the devices in the collection.

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
    final result = api_instance.spanListCollectionData(collectionId, limit, start, end, offset);
    print(result);
} catch (e) {
    print('Exception when calling CollectionsApi->spanListCollectionData: $e\n');
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

# **spanListCollections**
> ListCollectionResponse spanListCollections()

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
    final result = api_instance.spanListCollections();
    print(result);
} catch (e) {
    print('Exception when calling CollectionsApi->spanListCollections: $e\n');
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

# **spanRetrieveCollection**
> Collection spanRetrieveCollection(collectionId)

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
    final result = api_instance.spanRetrieveCollection(collectionId);
    print(result);
} catch (e) {
    print('Exception when calling CollectionsApi->spanRetrieveCollection: $e\n');
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

# **spanUpdateCollection**
> Collection spanUpdateCollection(collectionId, body)

Update collection

You must have write access to the collection, ie. you must administer it

### Example 
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = CollectionsApi();
final collectionId = collectionId_example; // String | The ID of the collection. This is assigned by the backend.
final body = Collection(); // Collection | 

try { 
    final result = api_instance.spanUpdateCollection(collectionId, body);
    print(result);
} catch (e) {
    print('Exception when calling CollectionsApi->spanUpdateCollection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**| The ID of the collection. This is assigned by the backend. | 
 **body** | [**Collection**](Collection.md)|  | 

### Return type

[**Collection**](Collection.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


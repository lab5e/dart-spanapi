# spanapi.api.GatewaysApi

## Load the API package
```dart
import 'package:spanapi/api.dart';
```

All URIs are relative to *https://api.lab5e.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGateway**](GatewaysApi.md#creategateway) | **POST** /span/collections/{collectionId}/gateways | Create gateway
[**deleteGateway**](GatewaysApi.md#deletegateway) | **DELETE** /span/collections/{collectionId}/gateways/{gatewayId} | Delete gateway
[**gatewayCertificates**](GatewaysApi.md#gatewaycertificates) | **GET** /span/collections/{collectionId}/gateways/{gatewayId}/certs | Get issued certificate(s) for gateway
[**listGateways**](GatewaysApi.md#listgateways) | **GET** /span/collections/{collectionId}/gateways | List gateways
[**retrieveGateway**](GatewaysApi.md#retrievegateway) | **GET** /span/collections/{collectionId}/gateways/{gatewayId} | Retrieve gateway
[**retrieveGatewayStats**](GatewaysApi.md#retrievegatewaystats) | **GET** /span/collections/{collectionId}/gateways/{gatewayId}/stats | Retrieve gateway statistics
[**updateGateway**](GatewaysApi.md#updategateway) | **PATCH** /span/collections/{existingCollectionId}/gateways/{gatewayId} | Update gateway


# **createGateway**
> Gateway createGateway(collectionId, body)

Create gateway

Create a new gateway.

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = GatewaysApi();
final collectionId = collectionId_example; // String | 
final body = CreateGatewayRequest(); // CreateGatewayRequest | 

try {
    final result = api_instance.createGateway(collectionId, body);
    print(result);
} catch (e) {
    print('Exception when calling GatewaysApi->createGateway: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **body** | [**CreateGatewayRequest**](CreateGatewayRequest.md)|  | 

### Return type

[**Gateway**](Gateway.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGateway**
> Gateway deleteGateway(collectionId, gatewayId)

Delete gateway

Remove a gateway from Span.

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = GatewaysApi();
final collectionId = collectionId_example; // String | 
final gatewayId = gatewayId_example; // String | 

try {
    final result = api_instance.deleteGateway(collectionId, gatewayId);
    print(result);
} catch (e) {
    print('Exception when calling GatewaysApi->deleteGateway: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **gatewayId** | **String**|  | 

### Return type

[**Gateway**](Gateway.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gatewayCertificates**
> GatewayCertificateResponse gatewayCertificates(collectionId, gatewayId)

Get issued certificate(s) for gateway

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = GatewaysApi();
final collectionId = collectionId_example; // String | 
final gatewayId = gatewayId_example; // String | 

try {
    final result = api_instance.gatewayCertificates(collectionId, gatewayId);
    print(result);
} catch (e) {
    print('Exception when calling GatewaysApi->gatewayCertificates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **gatewayId** | **String**|  | 

### Return type

[**GatewayCertificateResponse**](GatewayCertificateResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGateways**
> ListGatewayResponse listGateways(collectionId)

List gateways

List the user's gatways, including built-in gateways.

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = GatewaysApi();
final collectionId = collectionId_example; // String | 

try {
    final result = api_instance.listGateways(collectionId);
    print(result);
} catch (e) {
    print('Exception when calling GatewaysApi->listGateways: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 

### Return type

[**ListGatewayResponse**](ListGatewayResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveGateway**
> Gateway retrieveGateway(collectionId, gatewayId)

Retrieve gateway

Get gateway information

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = GatewaysApi();
final collectionId = collectionId_example; // String | 
final gatewayId = gatewayId_example; // String | 

try {
    final result = api_instance.retrieveGateway(collectionId, gatewayId);
    print(result);
} catch (e) {
    print('Exception when calling GatewaysApi->retrieveGateway: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **gatewayId** | **String**|  | 

### Return type

[**Gateway**](Gateway.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveGatewayStats**
> GatewayStats retrieveGatewayStats(collectionId, gatewayId)

Retrieve gateway statistics

Get statistics for gateway

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = GatewaysApi();
final collectionId = collectionId_example; // String | 
final gatewayId = gatewayId_example; // String | 

try {
    final result = api_instance.retrieveGatewayStats(collectionId, gatewayId);
    print(result);
} catch (e) {
    print('Exception when calling GatewaysApi->retrieveGatewayStats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **gatewayId** | **String**|  | 

### Return type

[**GatewayStats**](GatewayStats.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGateway**
> Gateway updateGateway(existingCollectionId, gatewayId, body)

Update gateway

Update configuration for a gateway. If you want to remove or move a gateway from the collection the devices in the collection must not have any gateway configuration. The certificates for the gateway are unchanged when the gateway is moved.

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = GatewaysApi();
final existingCollectionId = existingCollectionId_example; // String | 
final gatewayId = gatewayId_example; // String | 
final body = UpdateGatewayRequest(); // UpdateGatewayRequest | 

try {
    final result = api_instance.updateGateway(existingCollectionId, gatewayId, body);
    print(result);
} catch (e) {
    print('Exception when calling GatewaysApi->updateGateway: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **existingCollectionId** | **String**|  | 
 **gatewayId** | **String**|  | 
 **body** | [**UpdateGatewayRequest**](UpdateGatewayRequest.md)|  | 

### Return type

[**Gateway**](Gateway.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


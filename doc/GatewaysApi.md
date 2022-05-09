# spanapi.api.GatewaysApi

## Load the API package
```dart
import 'package:spanapi/api.dart';
```

All URIs are relative to *https://api.lab5e.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listGateways**](GatewaysApi.md#listgateways) | **GET** /span/networks/{networkId}/gateways | List gateways
[**listNetworks**](GatewaysApi.md#listnetworks) | **GET** /span/networks | List networks
[**retrieveGateway**](GatewaysApi.md#retrievegateway) | **GET** /span/networks/{networkId}/gateways/{gatewayId} | Retrieve gateway


# **listGateways**
> ListGatewayResponse listGateways(networkId)

List gateways

List the gatways for the network. Some of the gatways are built into Span and can't be deleted.

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = GatewaysApi();
final networkId = networkId_example; // String | 

try {
    final result = api_instance.listGateways(networkId);
    print(result);
} catch (e) {
    print('Exception when calling GatewaysApi->listGateways: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **networkId** | **String**|  | 

### Return type

[**ListGatewayResponse**](ListGatewayResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listNetworks**
> ListNetworkResponse listNetworks()

List networks

List networks available to the collection. This will include the built-in networks in Span.

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = GatewaysApi();

try {
    final result = api_instance.listNetworks();
    print(result);
} catch (e) {
    print('Exception when calling GatewaysApi->listNetworks: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListNetworkResponse**](ListNetworkResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveGateway**
> Gateway retrieveGateway(networkId, gatewayId)

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
final networkId = networkId_example; // String | 
final gatewayId = gatewayId_example; // String | 

try {
    final result = api_instance.retrieveGateway(networkId, gatewayId);
    print(result);
} catch (e) {
    print('Exception when calling GatewaysApi->retrieveGateway: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **networkId** | **String**|  | 
 **gatewayId** | **String**|  | 

### Return type

[**Gateway**](Gateway.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# spanapi.api.CertificatesApi

## Load the API package
```dart
import 'package:spanapi/api.dart';
```

All URIs are relative to *https://api.lab5e.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCertificate**](CertificatesApi.md#createcertificate) | **POST** /span/collections/{collectionId}/certificates/create | Create certificate
[**retrieveCertificateChain**](CertificatesApi.md#retrievecertificatechain) | **GET** /span/collections/{collectionId}/certificates | Get certificate chain
[**signCertificate**](CertificatesApi.md#signcertificate) | **POST** /span/collections/{collectionId}/certificates/sign | Sign certificate
[**verifyCertificate**](CertificatesApi.md#verifycertificate) | **POST** /span/collections/{collectionId}/certificates/verify | Verify certificate


# **createCertificate**
> CreateCertificateResponse createCertificate(collectionId, body)

Create certificate

Create a new device or gateway (client) certificate for an internet-connected device. The devices will use this client certificate to authenticate when sending data via the Internet endpoint. This will create a X509 client certificate with an ECC public key. The key is not stored by the service so keep it in a secure place once it is downloaded. The returned certificate will be valid for 14 days. The key for the certificate is your own responsibility. The client certificate is used in both the TLS, DTLS and gRPC service endpoints.

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = CertificatesApi();
final collectionId = collectionId_example; // String | 
final body = CreateCertificateRequest(); // CreateCertificateRequest | 

try {
    final result = api_instance.createCertificate(collectionId, body);
    print(result);
} catch (e) {
    print('Exception when calling CertificatesApi->createCertificate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **body** | [**CreateCertificateRequest**](CreateCertificateRequest.md)|  | 

### Return type

[**CreateCertificateResponse**](CreateCertificateResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveCertificateChain**
> CertificateChainResponse retrieveCertificateChain(collectionId, gatewayId, deviceId)

Get certificate chain

Get the certificate chain for the root CA and intermediate certificates used by the device, gateway and server certificates. It is highly recommended to verify the server certificate when sending data to avoid any man-in-the-middle attacks. This chain will contain all required certificates needed to verify the client certificate.

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = CertificatesApi();
final collectionId = collectionId_example; // String | 
final gatewayId = gatewayId_example; // String | 
final deviceId = deviceId_example; // String | 

try {
    final result = api_instance.retrieveCertificateChain(collectionId, gatewayId, deviceId);
    print(result);
} catch (e) {
    print('Exception when calling CertificatesApi->retrieveCertificateChain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **gatewayId** | **String**|  | [optional] 
 **deviceId** | **String**|  | [optional] 

### Return type

[**CertificateChainResponse**](CertificateChainResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signCertificate**
> SignCertificateResponse signCertificate(collectionId, body)

Sign certificate

Sign a device or gateway (aka client) certificate. The certificate is a X509 Certificate signing request PEM encoded. The certificate will be valid for 14 days and must be renewed.

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = CertificatesApi();
final collectionId = collectionId_example; // String | 
final body = SignCertificateRequest(); // SignCertificateRequest | 

try {
    final result = api_instance.signCertificate(collectionId, body);
    print(result);
} catch (e) {
    print('Exception when calling CertificatesApi->signCertificate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **body** | [**SignCertificateRequest**](SignCertificateRequest.md)|  | 

### Return type

[**SignCertificateResponse**](SignCertificateResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyCertificate**
> VerifyCertificateResponse verifyCertificate(collectionId, body)

Verify certificate

Verify client certificate. If a client certificate fails it can be tricky to pinpoint exactly *why* the certificate isn't accepted. This resource validates the client certificate and returns the error in plain text.

### Example
```dart
import 'package:spanapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = CertificatesApi();
final collectionId = collectionId_example; // String | 
final body = VerifyCertificateRequest(); // VerifyCertificateRequest | 

try {
    final result = api_instance.verifyCertificate(collectionId, body);
    print(result);
} catch (e) {
    print('Exception when calling CertificatesApi->verifyCertificate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**|  | 
 **body** | [**VerifyCertificateRequest**](VerifyCertificateRequest.md)|  | 

### Return type

[**VerifyCertificateResponse**](VerifyCertificateResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


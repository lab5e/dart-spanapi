# spanapi
API for device, collection, output and firmware management

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 4.3.0 grouchy-aloysius
- Build package: org.openapitools.codegen.languages.DartClientCodegen
For more information, please visit [https://lab5e.com](https://lab5e.com)

## Requirements

Dart 2.0 or later

## Installation & Usage

### Github
If this Dart package is published to Github, add the following dependency to your pubspec.yaml
```
dependencies:
  spanapi:
    git: https://github.com/lab5e/dart-spanapi.git
```

### Local
To use the package in your local drive, add the following dependency to your pubspec.yaml
```
dependencies:
  spanapi:
    path: /path/to/spanapi
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

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

## Documentation for API Endpoints

All URIs are relative to *https://api.lab5e.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CertificatesApi* | [**createCertificate**](doc//CertificatesApi.md#createcertificate) | **POST** /span/collections/{collectionId}/certificates/create | Create certificate
*CertificatesApi* | [**retrieveCertificateChain**](doc//CertificatesApi.md#retrievecertificatechain) | **GET** /span/collections/{collectionId}/certificates | Get certificate chain
*CertificatesApi* | [**signCertificate**](doc//CertificatesApi.md#signcertificate) | **POST** /span/collections/{collectionId}/certificates/sign | Sign certificate
*CertificatesApi* | [**verifyCertificate**](doc//CertificatesApi.md#verifycertificate) | **POST** /span/collections/{collectionId}/certificates/verify | Verify certificate
*CollectionsApi* | [**createCollection**](doc//CollectionsApi.md#createcollection) | **POST** /span/collections | Create collection
*CollectionsApi* | [**deleteCollection**](doc//CollectionsApi.md#deletecollection) | **DELETE** /span/collections/{collectionId} | Delete collection
*CollectionsApi* | [**listCollectionData**](doc//CollectionsApi.md#listcollectiondata) | **GET** /span/collections/{collectionId}/data | Retrieve data from devices
*CollectionsApi* | [**listCollections**](doc//CollectionsApi.md#listcollections) | **GET** /span/collections | List collections
*CollectionsApi* | [**retrieveCollection**](doc//CollectionsApi.md#retrievecollection) | **GET** /span/collections/{collectionId} | Retrieve collection
*CollectionsApi* | [**updateCollection**](doc//CollectionsApi.md#updatecollection) | **PATCH** /span/collections/{collectionId} | Update collection
*DevicesApi* | [**addDownstreamMessage**](doc//DevicesApi.md#adddownstreammessage) | **POST** /span/collections/{collectionId}/devices/{deviceId}/outbox | Add message to oubox
*DevicesApi* | [**createDevice**](doc//DevicesApi.md#createdevice) | **POST** /span/collections/{collectionId}/devices | Create device
*DevicesApi* | [**deleteDevice**](doc//DevicesApi.md#deletedevice) | **DELETE** /span/collections/{collectionId}/devices/{deviceId} | Remove device.
*DevicesApi* | [**deleteDownstreamMessage**](doc//DevicesApi.md#deletedownstreammessage) | **DELETE** /span/collections/{collectionId}/devices/{deviceId}/outbox/{messageId} | Delete outgoing message
*DevicesApi* | [**deviceCertificate**](doc//DevicesApi.md#devicecertificate) | **GET** /span/collections/{collectionId}/devices/{deviceId}/certs | Get issued certificate(s) for device
*DevicesApi* | [**listDeviceData**](doc//DevicesApi.md#listdevicedata) | **GET** /span/collections/{collectionId}/devices/{deviceId}/data | Retrieve data from device
*DevicesApi* | [**listDevices**](doc//DevicesApi.md#listdevices) | **GET** /span/collections/{collectionId}/devices | List devices in collection.
*DevicesApi* | [**listDownstreamMessages**](doc//DevicesApi.md#listdownstreammessages) | **GET** /span/collections/{collectionId}/devices/{deviceId}/outbox | List the messages in the outbox
*DevicesApi* | [**listUpstreamMessages**](doc//DevicesApi.md#listupstreammessages) | **GET** /span/collections/{collectionId}/devices/{deviceId}/inbox | List incoming messages
*DevicesApi* | [**retrieveDevice**](doc//DevicesApi.md#retrievedevice) | **GET** /span/collections/{collectionId}/devices/{deviceId} | Retrieve device
*DevicesApi* | [**updateDevice**](doc//DevicesApi.md#updatedevice) | **PATCH** /span/collections/{existingCollectionId}/devices/{deviceId} | Update device
*FotaApi* | [**clearFirmwareError**](doc//FotaApi.md#clearfirmwareerror) | **DELETE** /span/collections/{collectionId}/devices/{deviceId}/fwerror | Clear FOTA error
*FotaApi* | [**createFirmware**](doc//FotaApi.md#createfirmware) | **POST** /span/collections/{collectionId}/firmware | Create firmware
*FotaApi* | [**deleteFirmware**](doc//FotaApi.md#deletefirmware) | **DELETE** /span/collections/{collectionId}/firmware/{imageId} | Delete firmware
*FotaApi* | [**firmwareUsage**](doc//FotaApi.md#firmwareusage) | **GET** /span/collections/{collectionId}/firmware/{imageId}/usage | Firmware usage
*FotaApi* | [**listFirmware**](doc//FotaApi.md#listfirmware) | **GET** /span/collections/{collectionId}/firmware | List firmware
*FotaApi* | [**retrieveFirmware**](doc//FotaApi.md#retrievefirmware) | **GET** /span/collections/{collectionId}/firmware/{imageId} | Retrieve firmware
*FotaApi* | [**updateFirmware**](doc//FotaApi.md#updatefirmware) | **PATCH** /span/collections/{existingCollectionId}/firmware/{imageId} | Update firmware
*GatewaysApi* | [**listGateways**](doc//GatewaysApi.md#listgateways) | **GET** /span/networks/{networkId}/gateways | List gateways
*GatewaysApi* | [**listNetworks**](doc//GatewaysApi.md#listnetworks) | **GET** /span/networks | List networks
*GatewaysApi* | [**retrieveGateway**](doc//GatewaysApi.md#retrievegateway) | **GET** /span/networks/{networkId}/gateways/{gatewayId} | Retrieve gateway
*OutputsApi* | [**createOutput**](doc//OutputsApi.md#createoutput) | **POST** /span/collections/{collectionId}/outputs | Create output
*OutputsApi* | [**deleteOutput**](doc//OutputsApi.md#deleteoutput) | **DELETE** /span/collections/{collectionId}/outputs/{outputId} | Delete output
*OutputsApi* | [**listOutputs**](doc//OutputsApi.md#listoutputs) | **GET** /span/collections/{collectionId}/outputs | List outputs
*OutputsApi* | [**logs**](doc//OutputsApi.md#logs) | **GET** /span/collections/{collectionId}/outputs/{outputId}/logs | Output logs
*OutputsApi* | [**retrieveOutput**](doc//OutputsApi.md#retrieveoutput) | **GET** /span/collections/{collectionId}/outputs/{outputId} | Retrieve output
*OutputsApi* | [**status**](doc//OutputsApi.md#status) | **GET** /span/collections/{collectionId}/outputs/{outputId}/status | Output status
*OutputsApi* | [**updateOutput**](doc//OutputsApi.md#updateoutput) | **PATCH** /span/collections/{existingCollectionId}/outputs/{outputId} | Update output
*SpanApi* | [**getSystemInfo**](doc//SpanApi.md#getsysteminfo) | **GET** /span/system | System information


## Documentation For Models

 - [AddDownstreamMessageRequest](doc//AddDownstreamMessageRequest.md)
 - [Any](doc//Any.md)
 - [CellularIoTConfig](doc//CellularIoTConfig.md)
 - [CellularIoTMetadata](doc//CellularIoTMetadata.md)
 - [CertificateChainResponse](doc//CertificateChainResponse.md)
 - [CertificateInfo](doc//CertificateInfo.md)
 - [ClearFirmwareErrorResponse](doc//ClearFirmwareErrorResponse.md)
 - [CoAPMetadata](doc//CoAPMetadata.md)
 - [Collection](doc//Collection.md)
 - [CollectionFirmware](doc//CollectionFirmware.md)
 - [CreateCertificateRequest](doc//CreateCertificateRequest.md)
 - [CreateCertificateResponse](doc//CreateCertificateResponse.md)
 - [CreateCollectionRequest](doc//CreateCollectionRequest.md)
 - [CreateDeviceRequest](doc//CreateDeviceRequest.md)
 - [CreateFirmwareRequest](doc//CreateFirmwareRequest.md)
 - [CreateOutputRequest](doc//CreateOutputRequest.md)
 - [DeleteDownstreamMessageResponse](doc//DeleteDownstreamMessageResponse.md)
 - [Device](doc//Device.md)
 - [DeviceCertificateResponse](doc//DeviceCertificateResponse.md)
 - [DeviceConfig](doc//DeviceConfig.md)
 - [DeviceMetadata](doc//DeviceMetadata.md)
 - [Firmware](doc//Firmware.md)
 - [FirmwareManagement](doc//FirmwareManagement.md)
 - [FirmwareMetadata](doc//FirmwareMetadata.md)
 - [FirmwareUsageResponse](doc//FirmwareUsageResponse.md)
 - [Gateway](doc//Gateway.md)
 - [InetMetadata](doc//InetMetadata.md)
 - [ListCollectionResponse](doc//ListCollectionResponse.md)
 - [ListDataResponse](doc//ListDataResponse.md)
 - [ListDevicesResponse](doc//ListDevicesResponse.md)
 - [ListDownstreamMessagesResponse](doc//ListDownstreamMessagesResponse.md)
 - [ListFirmwareResponse](doc//ListFirmwareResponse.md)
 - [ListGatewayResponse](doc//ListGatewayResponse.md)
 - [ListNetworkResponse](doc//ListNetworkResponse.md)
 - [ListOutputResponse](doc//ListOutputResponse.md)
 - [ListUpstreamMessagesResponse](doc//ListUpstreamMessagesResponse.md)
 - [MQTTMetadata](doc//MQTTMetadata.md)
 - [MessageDownstream](doc//MessageDownstream.md)
 - [MessageState](doc//MessageState.md)
 - [MessageTransport](doc//MessageTransport.md)
 - [MessageUpstream](doc//MessageUpstream.md)
 - [Network](doc//Network.md)
 - [NetworkMetadata](doc//NetworkMetadata.md)
 - [NetworkOperator](doc//NetworkOperator.md)
 - [Output](doc//Output.md)
 - [OutputConfig](doc//OutputConfig.md)
 - [OutputDataMessage](doc//OutputDataMessage.md)
 - [OutputLogEntry](doc//OutputLogEntry.md)
 - [OutputLogResponse](doc//OutputLogResponse.md)
 - [OutputMessageType](doc//OutputMessageType.md)
 - [OutputStatusResponse](doc//OutputStatusResponse.md)
 - [OutputType](doc//OutputType.md)
 - [SignCertificateRequest](doc//SignCertificateRequest.md)
 - [SignCertificateResponse](doc//SignCertificateResponse.md)
 - [Status](doc//Status.md)
 - [SystemInfoResponse](doc//SystemInfoResponse.md)
 - [UDPMetadata](doc//UDPMetadata.md)
 - [UpdateCollectionRequest](doc//UpdateCollectionRequest.md)
 - [UpdateDeviceRequest](doc//UpdateDeviceRequest.md)
 - [UpdateFirmwareRequest](doc//UpdateFirmwareRequest.md)
 - [UpdateOutputRequest](doc//UpdateOutputRequest.md)
 - [VerifyCertificateRequest](doc//VerifyCertificateRequest.md)
 - [VerifyCertificateResponse](doc//VerifyCertificateResponse.md)


## Documentation For Authorization


## APIToken

- **Type**: API key
- **API key parameter name**: X-API-Token
- **Location**: HTTP header


## Author

dev@lab5e.com


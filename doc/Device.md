# spanapi.model.Device

## Load the model package
```dart
import 'package:spanapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deviceId** | **String** | The device ID is assigned by the backend. | [optional] 
**collectionId** | **String** |  | [optional] 
**tags** | **Map<String, String>** | Tags are metadata for the device that you can set. These are just strings. | [optional] [default to const {}]
**firmware** | [**FirmwareMetadata**](FirmwareMetadata.md) |  | [optional] 
**config** | [**DeviceConfig**](DeviceConfig.md) |  | [optional] 
**metadata** | [**DeviceMetadata**](DeviceMetadata.md) |  | [optional] 
**lastGatewayId** | **String** |  | [optional] 
**lastTransport** | [**MessageTransport**](MessageTransport.md) |  | [optional] 
**lastReceived** | **String** |  | [optional] 
**lastPayload** | **String** |  | [optional] 
**enabled** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



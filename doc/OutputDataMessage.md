# spanapi.model.OutputDataMessage

## Load the model package
```dart
import 'package:spanapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**OutputMessageType**](OutputMessageType.md) |  | [optional] 
**device** | [**Device**](Device.md) |  | [optional] 
**payload** | **String** |  | [optional] 
**received** | **String** | Received time for message. Value is ms since epoch. | [optional] 
**transport** | **String** |  | [optional] 
**udpMetaData** | [**UDPMetadata**](UDPMetadata.md) |  | [optional] 
**coapMetaData** | [**CoAPMetadata**](CoAPMetadata.md) |  | [optional] 
**messageId** | **String** |  | [optional] 
**mqttMetaData** | [**MQTTMetadata**](MQTTMetadata.md) |  | [optional] 
**gatewayMetaData** | [**GatewayMetadata**](GatewayMetadata.md) |  | [optional] 
**gatewayId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



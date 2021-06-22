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
**imsi** | **String** | The IMSI is the unique ID for the (e|nu|whatever)SIM card on your device. This is the primary identifier for your device on the network. | [optional] 
**imei** | **String** | The IMEI number is the unique ID for your hardware as seen by the network. Obviously you might have a completely different view on things. | [optional] 
**tags** | **Map<String, String>** | Tags are metadata for the device that you can set. These are just strings. | [optional] [default to const {}]
**network** | [**NetworkMetadata**](NetworkMetadata.md) |  | [optional] 
**firmware** | [**FirmwareMetadata**](FirmwareMetadata.md) |  | [optional] 
**metadata** | [**DeviceMetadata**](DeviceMetadata.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



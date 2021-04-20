# spanapi.model.CollectionFirmware

## Load the model package
```dart
import 'package:spanapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currentFirmwareId** | **String** | The current firmware is the firmware that the devices are currently using. | [optional] 
**targetFirmwareId** | **String** | The target firmware is set to the desired firmware image for the devices in this collection. If the management is set to \"device\" this will only be used if the target firmware isn't set on the device itself. | [optional] 
**management** | [**CollectionFirmwareFirmwareManagement**](CollectionFirmwareFirmwareManagement.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



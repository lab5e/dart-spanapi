# spanapi.model.UpdateDeviceBody

## Load the model package
```dart
import 'package:spanapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**collectionId** | **String** | The collection id for the device. This field is optional and can be omitted if the collection id isn't changed. When changing to a new collection you must be an owner of the other collection, ie an administrator of the team that owns the new collection. | [optional] 
**tags** | **Map<String, String>** | Tags are metadata for the device that you can set. These are just strings. | [optional] [default to const {}]
**firmware** | [**FirmwareMetadata**](FirmwareMetadata.md) |  | [optional] 
**config** | [**DeviceConfig**](DeviceConfig.md) |  | [optional] 
**enabled** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# spanapi.model.CreateCollectionRequest

## Load the model package
```dart
import 'package:spanapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**teamId** | **String** | The team ID that owns the collection. This field is required. When you create new collections the default is to use your private team ID. | [optional] 
**firmware** | [**CollectionFirmware**](CollectionFirmware.md) |  | [optional] 
**tags** | **Map<String, String>** | Tags for the collection. Tags are metadata fields that you can assign to the collection. | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



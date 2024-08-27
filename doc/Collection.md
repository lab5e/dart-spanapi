# spanapi.model.Collection

## Load the model package
```dart
import 'package:spanapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**collectionId** | **String** | The ID of the collection. This is assigned by the backend. | [optional] 
**teamId** | **String** | The team ID that owns the collection. This field is required. When you create new collections the default is to use your private team ID. | [optional] 
**firmware** | [**CollectionFirmware**](CollectionFirmware.md) |  | [optional] 
**tags** | **Map<String, String>** | Tags for the collection. Tags are metadata fields that you can assign to the collection. | [optional] [default to const {}]
**upstreamTimestamps** | **List<String>** |  | [optional] [default to const []]
**downstreamTimestamps** | **List<String>** |  | [optional] [default to const []]
**enabled** | **bool** | Disabled flag for collection. If the collection is disabled it is in effect read only and inactive. You can't update a disabled collection. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



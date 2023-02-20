# spanapi.model.DeviceConfig

## Load the model package
```dart
import 'package:spanapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ciot** | [**CellularIoTConfig**](CellularIoTConfig.md) |  | [optional] 
**inet** | [**Object**](.md) | This is the configuration for an internet-connected device. There are currently no configuration options for internet devices; the device is identified via the clientcertificate.  This is empty since there's no configuration required for the internet  gateway | [optional] 
**gateway** | [**Map<String, GatewayDeviceConfig>**](GatewayDeviceConfig.md) |  | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# my_api_client.api.PingControllerApi

## Load the API package
```dart
import 'package:my_api_client/api.dart';
```

All URIs are relative to *http://[::1]:4001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pingControllerPing**](PingControllerApi.md#pingcontrollerping) | **GET** /ping | 


# **pingControllerPing**
> PingResponse pingControllerPing()



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = PingControllerApi();

try {
    final result = api_instance.pingControllerPing();
    print(result);
} catch (e) {
    print('Exception when calling PingControllerApi->pingControllerPing: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PingResponse**](PingResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


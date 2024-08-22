# openapi.api.PingControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://b713a217-f664-43a7-a6f6-fad732f4daa6.api.rappider.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pingControllerPing**](PingControllerApi.md#pingcontrollerping) | **GET** /ping | 


# **pingControllerPing**
> PingResponse pingControllerPing()



### Example
```dart
import 'package:openapi/api.dart';

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


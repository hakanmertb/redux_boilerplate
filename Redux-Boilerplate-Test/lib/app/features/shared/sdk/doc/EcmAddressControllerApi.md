# openapi.api.EcmAddressControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ecmAddressControllerCount**](EcmAddressControllerApi.md#ecmaddresscontrollercount) | **GET** /ecm-addresses/count | 
[**ecmAddressControllerCreate**](EcmAddressControllerApi.md#ecmaddresscontrollercreate) | **POST** /ecm-addresses | 
[**ecmAddressControllerDeleteById**](EcmAddressControllerApi.md#ecmaddresscontrollerdeletebyid) | **DELETE** /ecm-addresses/{id} | 
[**ecmAddressControllerFind**](EcmAddressControllerApi.md#ecmaddresscontrollerfind) | **GET** /ecm-addresses | 
[**ecmAddressControllerFindById**](EcmAddressControllerApi.md#ecmaddresscontrollerfindbyid) | **GET** /ecm-addresses/{id} | 
[**ecmAddressControllerReplaceById**](EcmAddressControllerApi.md#ecmaddresscontrollerreplacebyid) | **PUT** /ecm-addresses/{id} | 
[**ecmAddressControllerUpdateAll**](EcmAddressControllerApi.md#ecmaddresscontrollerupdateall) | **PATCH** /ecm-addresses | 
[**ecmAddressControllerUpdateById**](EcmAddressControllerApi.md#ecmaddresscontrollerupdatebyid) | **PATCH** /ecm-addresses/{id} | 


# **ecmAddressControllerCount**
> Count ecmAddressControllerCount(where)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmAddressControllerApi();
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.ecmAddressControllerCount(where);
    print(result);
} catch (e) {
    print('Exception when calling EcmAddressControllerApi->ecmAddressControllerCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmAddressControllerCreate**
> EcmAddress ecmAddressControllerCreate(newEcmAddress)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmAddressControllerApi();
final newEcmAddress = NewEcmAddress(); // NewEcmAddress | 

try {
    final result = api_instance.ecmAddressControllerCreate(newEcmAddress);
    print(result);
} catch (e) {
    print('Exception when calling EcmAddressControllerApi->ecmAddressControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newEcmAddress** | [**NewEcmAddress**](NewEcmAddress.md)|  | [optional] 

### Return type

[**EcmAddress**](EcmAddress.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmAddressControllerDeleteById**
> ecmAddressControllerDeleteById(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmAddressControllerApi();
final id = id_example; // String | 

try {
    api_instance.ecmAddressControllerDeleteById(id);
} catch (e) {
    print('Exception when calling EcmAddressControllerApi->ecmAddressControllerDeleteById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmAddressControllerFind**
> List<EcmAddressWithRelations> ecmAddressControllerFind(filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmAddressControllerApi();
final filter = ; // EcmAddressFilter1 | 

try {
    final result = api_instance.ecmAddressControllerFind(filter);
    print(result);
} catch (e) {
    print('Exception when calling EcmAddressControllerApi->ecmAddressControllerFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**EcmAddressFilter1**](.md)|  | [optional] 

### Return type

[**List<EcmAddressWithRelations>**](EcmAddressWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmAddressControllerFindById**
> EcmAddressWithRelations ecmAddressControllerFindById(id, filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmAddressControllerApi();
final id = id_example; // String | 
final filter = ; // EcmAddressFilter | 

try {
    final result = api_instance.ecmAddressControllerFindById(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling EcmAddressControllerApi->ecmAddressControllerFindById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**EcmAddressFilter**](.md)|  | [optional] 

### Return type

[**EcmAddressWithRelations**](EcmAddressWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmAddressControllerReplaceById**
> ecmAddressControllerReplaceById(id, ecmAddress)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmAddressControllerApi();
final id = id_example; // String | 
final ecmAddress = EcmAddress(); // EcmAddress | 

try {
    api_instance.ecmAddressControllerReplaceById(id, ecmAddress);
} catch (e) {
    print('Exception when calling EcmAddressControllerApi->ecmAddressControllerReplaceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **ecmAddress** | [**EcmAddress**](EcmAddress.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmAddressControllerUpdateAll**
> Count ecmAddressControllerUpdateAll(where, ecmAddressPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmAddressControllerApi();
final where = Object; // Map<String, Object> | 
final ecmAddressPartial = [List<EcmAddressPartial>()]; // List<EcmAddressPartial> | 

try {
    final result = api_instance.ecmAddressControllerUpdateAll(where, ecmAddressPartial);
    print(result);
} catch (e) {
    print('Exception when calling EcmAddressControllerApi->ecmAddressControllerUpdateAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **ecmAddressPartial** | [**List<EcmAddressPartial>**](EcmAddressPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmAddressControllerUpdateById**
> ecmAddressControllerUpdateById(id, ecmAddressPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmAddressControllerApi();
final id = id_example; // String | 
final ecmAddressPartial = EcmAddressPartial(); // EcmAddressPartial | 

try {
    api_instance.ecmAddressControllerUpdateById(id, ecmAddressPartial);
} catch (e) {
    print('Exception when calling EcmAddressControllerApi->ecmAddressControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **ecmAddressPartial** | [**EcmAddressPartial**](EcmAddressPartial.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


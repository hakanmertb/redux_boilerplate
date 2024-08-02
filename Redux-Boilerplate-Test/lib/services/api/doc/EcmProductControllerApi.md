# my_api_client.api.EcmProductControllerApi

## Load the API package
```dart
import 'package:my_api_client/api.dart';
```

All URIs are relative to *http://[::1]:4001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ecmProductControllerCount**](EcmProductControllerApi.md#ecmproductcontrollercount) | **GET** /ecm-products/count | 
[**ecmProductControllerCreate**](EcmProductControllerApi.md#ecmproductcontrollercreate) | **POST** /ecm-products | 
[**ecmProductControllerDeleteById**](EcmProductControllerApi.md#ecmproductcontrollerdeletebyid) | **DELETE** /ecm-products/{id} | 
[**ecmProductControllerFind**](EcmProductControllerApi.md#ecmproductcontrollerfind) | **GET** /ecm-products | 
[**ecmProductControllerFindById**](EcmProductControllerApi.md#ecmproductcontrollerfindbyid) | **GET** /ecm-products/{id} | 
[**ecmProductControllerReplaceById**](EcmProductControllerApi.md#ecmproductcontrollerreplacebyid) | **PUT** /ecm-products/{id} | 
[**ecmProductControllerUpdateAll**](EcmProductControllerApi.md#ecmproductcontrollerupdateall) | **PATCH** /ecm-products | 
[**ecmProductControllerUpdateById**](EcmProductControllerApi.md#ecmproductcontrollerupdatebyid) | **PATCH** /ecm-products/{id} | 


# **ecmProductControllerCount**
> Count ecmProductControllerCount(where)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmProductControllerApi();
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.ecmProductControllerCount(where);
    print(result);
} catch (e) {
    print('Exception when calling EcmProductControllerApi->ecmProductControllerCount: $e\n');
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

# **ecmProductControllerCreate**
> EcmProduct ecmProductControllerCreate(newEcmProduct)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmProductControllerApi();
final newEcmProduct = NewEcmProduct(); // NewEcmProduct | 

try {
    final result = api_instance.ecmProductControllerCreate(newEcmProduct);
    print(result);
} catch (e) {
    print('Exception when calling EcmProductControllerApi->ecmProductControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newEcmProduct** | [**NewEcmProduct**](NewEcmProduct.md)|  | [optional] 

### Return type

[**EcmProduct**](EcmProduct.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmProductControllerDeleteById**
> ecmProductControllerDeleteById(id)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmProductControllerApi();
final id = id_example; // String | 

try {
    api_instance.ecmProductControllerDeleteById(id);
} catch (e) {
    print('Exception when calling EcmProductControllerApi->ecmProductControllerDeleteById: $e\n');
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

# **ecmProductControllerFind**
> List<EcmProductWithRelations> ecmProductControllerFind(filter)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmProductControllerApi();
final filter = ; // EcmProductFilter1 | 

try {
    final result = api_instance.ecmProductControllerFind(filter);
    print(result);
} catch (e) {
    print('Exception when calling EcmProductControllerApi->ecmProductControllerFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**EcmProductFilter1**](.md)|  | [optional] 

### Return type

[**List<EcmProductWithRelations>**](EcmProductWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmProductControllerFindById**
> EcmProductWithRelations ecmProductControllerFindById(id, filter)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmProductControllerApi();
final id = id_example; // String | 
final filter = ; // EcmProductFilter | 

try {
    final result = api_instance.ecmProductControllerFindById(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling EcmProductControllerApi->ecmProductControllerFindById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**EcmProductFilter**](.md)|  | [optional] 

### Return type

[**EcmProductWithRelations**](EcmProductWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmProductControllerReplaceById**
> ecmProductControllerReplaceById(id, ecmProduct)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmProductControllerApi();
final id = id_example; // String | 
final ecmProduct = EcmProduct(); // EcmProduct | 

try {
    api_instance.ecmProductControllerReplaceById(id, ecmProduct);
} catch (e) {
    print('Exception when calling EcmProductControllerApi->ecmProductControllerReplaceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **ecmProduct** | [**EcmProduct**](EcmProduct.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmProductControllerUpdateAll**
> Count ecmProductControllerUpdateAll(where, ecmProductPartial)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmProductControllerApi();
final where = Object; // Map<String, Object> | 
final ecmProductPartial = [List<EcmProductPartial>()]; // List<EcmProductPartial> | 

try {
    final result = api_instance.ecmProductControllerUpdateAll(where, ecmProductPartial);
    print(result);
} catch (e) {
    print('Exception when calling EcmProductControllerApi->ecmProductControllerUpdateAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **ecmProductPartial** | [**List<EcmProductPartial>**](EcmProductPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmProductControllerUpdateById**
> ecmProductControllerUpdateById(id, ecmProductPartial)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmProductControllerApi();
final id = id_example; // String | 
final ecmProductPartial = EcmProductPartial(); // EcmProductPartial | 

try {
    api_instance.ecmProductControllerUpdateById(id, ecmProductPartial);
} catch (e) {
    print('Exception when calling EcmProductControllerApi->ecmProductControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **ecmProductPartial** | [**EcmProductPartial**](EcmProductPartial.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# openapi.api.EcmDiscountControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ecmDiscountControllerCount**](EcmDiscountControllerApi.md#ecmdiscountcontrollercount) | **GET** /ecm-discounts/count | 
[**ecmDiscountControllerCreate**](EcmDiscountControllerApi.md#ecmdiscountcontrollercreate) | **POST** /ecm-discounts | 
[**ecmDiscountControllerDeleteById**](EcmDiscountControllerApi.md#ecmdiscountcontrollerdeletebyid) | **DELETE** /ecm-discounts/{id} | 
[**ecmDiscountControllerFind**](EcmDiscountControllerApi.md#ecmdiscountcontrollerfind) | **GET** /ecm-discounts | 
[**ecmDiscountControllerFindById**](EcmDiscountControllerApi.md#ecmdiscountcontrollerfindbyid) | **GET** /ecm-discounts/{id} | 
[**ecmDiscountControllerReplaceById**](EcmDiscountControllerApi.md#ecmdiscountcontrollerreplacebyid) | **PUT** /ecm-discounts/{id} | 
[**ecmDiscountControllerUpdateAll**](EcmDiscountControllerApi.md#ecmdiscountcontrollerupdateall) | **PATCH** /ecm-discounts | 
[**ecmDiscountControllerUpdateById**](EcmDiscountControllerApi.md#ecmdiscountcontrollerupdatebyid) | **PATCH** /ecm-discounts/{id} | 


# **ecmDiscountControllerCount**
> Count ecmDiscountControllerCount(where)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmDiscountControllerApi();
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.ecmDiscountControllerCount(where);
    print(result);
} catch (e) {
    print('Exception when calling EcmDiscountControllerApi->ecmDiscountControllerCount: $e\n');
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

# **ecmDiscountControllerCreate**
> EcmDiscount ecmDiscountControllerCreate(newEcmDiscount)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmDiscountControllerApi();
final newEcmDiscount = NewEcmDiscount(); // NewEcmDiscount | 

try {
    final result = api_instance.ecmDiscountControllerCreate(newEcmDiscount);
    print(result);
} catch (e) {
    print('Exception when calling EcmDiscountControllerApi->ecmDiscountControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newEcmDiscount** | [**NewEcmDiscount**](NewEcmDiscount.md)|  | [optional] 

### Return type

[**EcmDiscount**](EcmDiscount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmDiscountControllerDeleteById**
> ecmDiscountControllerDeleteById(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmDiscountControllerApi();
final id = id_example; // String | 

try {
    api_instance.ecmDiscountControllerDeleteById(id);
} catch (e) {
    print('Exception when calling EcmDiscountControllerApi->ecmDiscountControllerDeleteById: $e\n');
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

# **ecmDiscountControllerFind**
> List<EcmDiscountWithRelations> ecmDiscountControllerFind(filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmDiscountControllerApi();
final filter = ; // EcmDiscountFilter1 | 

try {
    final result = api_instance.ecmDiscountControllerFind(filter);
    print(result);
} catch (e) {
    print('Exception when calling EcmDiscountControllerApi->ecmDiscountControllerFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**EcmDiscountFilter1**](.md)|  | [optional] 

### Return type

[**List<EcmDiscountWithRelations>**](EcmDiscountWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmDiscountControllerFindById**
> EcmDiscountWithRelations ecmDiscountControllerFindById(id, filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmDiscountControllerApi();
final id = id_example; // String | 
final filter = ; // EcmDiscountFilter | 

try {
    final result = api_instance.ecmDiscountControllerFindById(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling EcmDiscountControllerApi->ecmDiscountControllerFindById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**EcmDiscountFilter**](.md)|  | [optional] 

### Return type

[**EcmDiscountWithRelations**](EcmDiscountWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmDiscountControllerReplaceById**
> ecmDiscountControllerReplaceById(id, ecmDiscount)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmDiscountControllerApi();
final id = id_example; // String | 
final ecmDiscount = EcmDiscount(); // EcmDiscount | 

try {
    api_instance.ecmDiscountControllerReplaceById(id, ecmDiscount);
} catch (e) {
    print('Exception when calling EcmDiscountControllerApi->ecmDiscountControllerReplaceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **ecmDiscount** | [**EcmDiscount**](EcmDiscount.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmDiscountControllerUpdateAll**
> Count ecmDiscountControllerUpdateAll(where, ecmDiscountPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmDiscountControllerApi();
final where = Object; // Map<String, Object> | 
final ecmDiscountPartial = [List<EcmDiscountPartial>()]; // List<EcmDiscountPartial> | 

try {
    final result = api_instance.ecmDiscountControllerUpdateAll(where, ecmDiscountPartial);
    print(result);
} catch (e) {
    print('Exception when calling EcmDiscountControllerApi->ecmDiscountControllerUpdateAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **ecmDiscountPartial** | [**List<EcmDiscountPartial>**](EcmDiscountPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmDiscountControllerUpdateById**
> ecmDiscountControllerUpdateById(id, ecmDiscountPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmDiscountControllerApi();
final id = id_example; // String | 
final ecmDiscountPartial = EcmDiscountPartial(); // EcmDiscountPartial | 

try {
    api_instance.ecmDiscountControllerUpdateById(id, ecmDiscountPartial);
} catch (e) {
    print('Exception when calling EcmDiscountControllerApi->ecmDiscountControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **ecmDiscountPartial** | [**EcmDiscountPartial**](EcmDiscountPartial.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


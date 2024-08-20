# openapi.api.EcmPaymentControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ecmPaymentControllerCount**](EcmPaymentControllerApi.md#ecmpaymentcontrollercount) | **GET** /ecm-payments/count | 
[**ecmPaymentControllerCreate**](EcmPaymentControllerApi.md#ecmpaymentcontrollercreate) | **POST** /ecm-payments | 
[**ecmPaymentControllerDeleteById**](EcmPaymentControllerApi.md#ecmpaymentcontrollerdeletebyid) | **DELETE** /ecm-payments/{id} | 
[**ecmPaymentControllerFind**](EcmPaymentControllerApi.md#ecmpaymentcontrollerfind) | **GET** /ecm-payments | 
[**ecmPaymentControllerFindById**](EcmPaymentControllerApi.md#ecmpaymentcontrollerfindbyid) | **GET** /ecm-payments/{id} | 
[**ecmPaymentControllerReplaceById**](EcmPaymentControllerApi.md#ecmpaymentcontrollerreplacebyid) | **PUT** /ecm-payments/{id} | 
[**ecmPaymentControllerUpdateAll**](EcmPaymentControllerApi.md#ecmpaymentcontrollerupdateall) | **PATCH** /ecm-payments | 
[**ecmPaymentControllerUpdateById**](EcmPaymentControllerApi.md#ecmpaymentcontrollerupdatebyid) | **PATCH** /ecm-payments/{id} | 


# **ecmPaymentControllerCount**
> Count ecmPaymentControllerCount(where)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmPaymentControllerApi();
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.ecmPaymentControllerCount(where);
    print(result);
} catch (e) {
    print('Exception when calling EcmPaymentControllerApi->ecmPaymentControllerCount: $e\n');
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

# **ecmPaymentControllerCreate**
> EcmPayment ecmPaymentControllerCreate(newEcmPayment)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmPaymentControllerApi();
final newEcmPayment = NewEcmPayment(); // NewEcmPayment | 

try {
    final result = api_instance.ecmPaymentControllerCreate(newEcmPayment);
    print(result);
} catch (e) {
    print('Exception when calling EcmPaymentControllerApi->ecmPaymentControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newEcmPayment** | [**NewEcmPayment**](NewEcmPayment.md)|  | [optional] 

### Return type

[**EcmPayment**](EcmPayment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmPaymentControllerDeleteById**
> ecmPaymentControllerDeleteById(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmPaymentControllerApi();
final id = id_example; // String | 

try {
    api_instance.ecmPaymentControllerDeleteById(id);
} catch (e) {
    print('Exception when calling EcmPaymentControllerApi->ecmPaymentControllerDeleteById: $e\n');
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

# **ecmPaymentControllerFind**
> List<EcmPaymentWithRelations> ecmPaymentControllerFind(filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmPaymentControllerApi();
final filter = ; // EcmPaymentFilter1 | 

try {
    final result = api_instance.ecmPaymentControllerFind(filter);
    print(result);
} catch (e) {
    print('Exception when calling EcmPaymentControllerApi->ecmPaymentControllerFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**EcmPaymentFilter1**](.md)|  | [optional] 

### Return type

[**List<EcmPaymentWithRelations>**](EcmPaymentWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmPaymentControllerFindById**
> EcmPaymentWithRelations ecmPaymentControllerFindById(id, filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmPaymentControllerApi();
final id = id_example; // String | 
final filter = ; // EcmPaymentFilter | 

try {
    final result = api_instance.ecmPaymentControllerFindById(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling EcmPaymentControllerApi->ecmPaymentControllerFindById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**EcmPaymentFilter**](.md)|  | [optional] 

### Return type

[**EcmPaymentWithRelations**](EcmPaymentWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmPaymentControllerReplaceById**
> ecmPaymentControllerReplaceById(id, ecmPayment)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmPaymentControllerApi();
final id = id_example; // String | 
final ecmPayment = EcmPayment(); // EcmPayment | 

try {
    api_instance.ecmPaymentControllerReplaceById(id, ecmPayment);
} catch (e) {
    print('Exception when calling EcmPaymentControllerApi->ecmPaymentControllerReplaceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **ecmPayment** | [**EcmPayment**](EcmPayment.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmPaymentControllerUpdateAll**
> Count ecmPaymentControllerUpdateAll(where, ecmPaymentPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmPaymentControllerApi();
final where = Object; // Map<String, Object> | 
final ecmPaymentPartial = [List<EcmPaymentPartial>()]; // List<EcmPaymentPartial> | 

try {
    final result = api_instance.ecmPaymentControllerUpdateAll(where, ecmPaymentPartial);
    print(result);
} catch (e) {
    print('Exception when calling EcmPaymentControllerApi->ecmPaymentControllerUpdateAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **ecmPaymentPartial** | [**List<EcmPaymentPartial>**](EcmPaymentPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmPaymentControllerUpdateById**
> ecmPaymentControllerUpdateById(id, ecmPaymentPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmPaymentControllerApi();
final id = id_example; // String | 
final ecmPaymentPartial = EcmPaymentPartial(); // EcmPaymentPartial | 

try {
    api_instance.ecmPaymentControllerUpdateById(id, ecmPaymentPartial);
} catch (e) {
    print('Exception when calling EcmPaymentControllerApi->ecmPaymentControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **ecmPaymentPartial** | [**EcmPaymentPartial**](EcmPaymentPartial.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


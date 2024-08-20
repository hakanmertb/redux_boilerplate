# openapi.api.EcmTransactionControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ecmTransactionControllerCount**](EcmTransactionControllerApi.md#ecmtransactioncontrollercount) | **GET** /ecm-transactions/count | 
[**ecmTransactionControllerCreate**](EcmTransactionControllerApi.md#ecmtransactioncontrollercreate) | **POST** /ecm-transactions | 
[**ecmTransactionControllerDeleteById**](EcmTransactionControllerApi.md#ecmtransactioncontrollerdeletebyid) | **DELETE** /ecm-transactions/{id} | 
[**ecmTransactionControllerFind**](EcmTransactionControllerApi.md#ecmtransactioncontrollerfind) | **GET** /ecm-transactions | 
[**ecmTransactionControllerFindById**](EcmTransactionControllerApi.md#ecmtransactioncontrollerfindbyid) | **GET** /ecm-transactions/{id} | 
[**ecmTransactionControllerFindEcmOrder**](EcmTransactionControllerApi.md#ecmtransactioncontrollerfindecmorder) | **GET** /ecm-transactions/{id}/ecm-order | 
[**ecmTransactionControllerReplaceById**](EcmTransactionControllerApi.md#ecmtransactioncontrollerreplacebyid) | **PUT** /ecm-transactions/{id} | 
[**ecmTransactionControllerUpdateAll**](EcmTransactionControllerApi.md#ecmtransactioncontrollerupdateall) | **PATCH** /ecm-transactions | 
[**ecmTransactionControllerUpdateById**](EcmTransactionControllerApi.md#ecmtransactioncontrollerupdatebyid) | **PATCH** /ecm-transactions/{id} | 


# **ecmTransactionControllerCount**
> Count ecmTransactionControllerCount(where)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmTransactionControllerApi();
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.ecmTransactionControllerCount(where);
    print(result);
} catch (e) {
    print('Exception when calling EcmTransactionControllerApi->ecmTransactionControllerCount: $e\n');
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

# **ecmTransactionControllerCreate**
> EcmTransaction ecmTransactionControllerCreate(newEcmTransaction)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmTransactionControllerApi();
final newEcmTransaction = NewEcmTransaction(); // NewEcmTransaction | 

try {
    final result = api_instance.ecmTransactionControllerCreate(newEcmTransaction);
    print(result);
} catch (e) {
    print('Exception when calling EcmTransactionControllerApi->ecmTransactionControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newEcmTransaction** | [**NewEcmTransaction**](NewEcmTransaction.md)|  | [optional] 

### Return type

[**EcmTransaction**](EcmTransaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmTransactionControllerDeleteById**
> ecmTransactionControllerDeleteById(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmTransactionControllerApi();
final id = id_example; // String | 

try {
    api_instance.ecmTransactionControllerDeleteById(id);
} catch (e) {
    print('Exception when calling EcmTransactionControllerApi->ecmTransactionControllerDeleteById: $e\n');
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

# **ecmTransactionControllerFind**
> List<EcmTransactionWithRelations> ecmTransactionControllerFind(filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmTransactionControllerApi();
final filter = ; // EcmTransactionFilter1 | 

try {
    final result = api_instance.ecmTransactionControllerFind(filter);
    print(result);
} catch (e) {
    print('Exception when calling EcmTransactionControllerApi->ecmTransactionControllerFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**EcmTransactionFilter1**](.md)|  | [optional] 

### Return type

[**List<EcmTransactionWithRelations>**](EcmTransactionWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmTransactionControllerFindById**
> EcmTransactionWithRelations ecmTransactionControllerFindById(id, filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmTransactionControllerApi();
final id = id_example; // String | 
final filter = ; // EcmTransactionFilter | 

try {
    final result = api_instance.ecmTransactionControllerFindById(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling EcmTransactionControllerApi->ecmTransactionControllerFindById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**EcmTransactionFilter**](.md)|  | [optional] 

### Return type

[**EcmTransactionWithRelations**](EcmTransactionWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmTransactionControllerFindEcmOrder**
> EcmOrder ecmTransactionControllerFindEcmOrder(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmTransactionControllerApi();
final id = id_example; // String | 

try {
    final result = api_instance.ecmTransactionControllerFindEcmOrder(id);
    print(result);
} catch (e) {
    print('Exception when calling EcmTransactionControllerApi->ecmTransactionControllerFindEcmOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**EcmOrder**](EcmOrder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmTransactionControllerReplaceById**
> ecmTransactionControllerReplaceById(id, ecmTransaction)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmTransactionControllerApi();
final id = id_example; // String | 
final ecmTransaction = EcmTransaction(); // EcmTransaction | 

try {
    api_instance.ecmTransactionControllerReplaceById(id, ecmTransaction);
} catch (e) {
    print('Exception when calling EcmTransactionControllerApi->ecmTransactionControllerReplaceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **ecmTransaction** | [**EcmTransaction**](EcmTransaction.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmTransactionControllerUpdateAll**
> Count ecmTransactionControllerUpdateAll(where, ecmTransactionPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmTransactionControllerApi();
final where = Object; // Map<String, Object> | 
final ecmTransactionPartial = [List<EcmTransactionPartial>()]; // List<EcmTransactionPartial> | 

try {
    final result = api_instance.ecmTransactionControllerUpdateAll(where, ecmTransactionPartial);
    print(result);
} catch (e) {
    print('Exception when calling EcmTransactionControllerApi->ecmTransactionControllerUpdateAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **ecmTransactionPartial** | [**List<EcmTransactionPartial>**](EcmTransactionPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmTransactionControllerUpdateById**
> ecmTransactionControllerUpdateById(id, ecmTransactionPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmTransactionControllerApi();
final id = id_example; // String | 
final ecmTransactionPartial = EcmTransactionPartial(); // EcmTransactionPartial | 

try {
    api_instance.ecmTransactionControllerUpdateById(id, ecmTransactionPartial);
} catch (e) {
    print('Exception when calling EcmTransactionControllerApi->ecmTransactionControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **ecmTransactionPartial** | [**EcmTransactionPartial**](EcmTransactionPartial.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


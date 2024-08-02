# my_api_client.api.EcmOrderItemControllerApi

## Load the API package
```dart
import 'package:my_api_client/api.dart';
```

All URIs are relative to *http://[::1]:4001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ecmOrderItemControllerCount**](EcmOrderItemControllerApi.md#ecmorderitemcontrollercount) | **GET** /ecm-order-items/count | 
[**ecmOrderItemControllerCreate**](EcmOrderItemControllerApi.md#ecmorderitemcontrollercreate) | **POST** /ecm-order-items | 
[**ecmOrderItemControllerDeleteById**](EcmOrderItemControllerApi.md#ecmorderitemcontrollerdeletebyid) | **DELETE** /ecm-order-items/{id} | 
[**ecmOrderItemControllerFind**](EcmOrderItemControllerApi.md#ecmorderitemcontrollerfind) | **GET** /ecm-order-items | 
[**ecmOrderItemControllerFindById**](EcmOrderItemControllerApi.md#ecmorderitemcontrollerfindbyid) | **GET** /ecm-order-items/{id} | 
[**ecmOrderItemControllerFindEcmOrder**](EcmOrderItemControllerApi.md#ecmorderitemcontrollerfindecmorder) | **GET** /ecm-order-items/{id}/ecm-order | 
[**ecmOrderItemControllerFindEcmProduct**](EcmOrderItemControllerApi.md#ecmorderitemcontrollerfindecmproduct) | **GET** /ecm-order-items/{id}/ecm-product | 
[**ecmOrderItemControllerReplaceById**](EcmOrderItemControllerApi.md#ecmorderitemcontrollerreplacebyid) | **PUT** /ecm-order-items/{id} | 
[**ecmOrderItemControllerUpdateAll**](EcmOrderItemControllerApi.md#ecmorderitemcontrollerupdateall) | **PATCH** /ecm-order-items | 
[**ecmOrderItemControllerUpdateById**](EcmOrderItemControllerApi.md#ecmorderitemcontrollerupdatebyid) | **PATCH** /ecm-order-items/{id} | 


# **ecmOrderItemControllerCount**
> Count ecmOrderItemControllerCount(where)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmOrderItemControllerApi();
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.ecmOrderItemControllerCount(where);
    print(result);
} catch (e) {
    print('Exception when calling EcmOrderItemControllerApi->ecmOrderItemControllerCount: $e\n');
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

# **ecmOrderItemControllerCreate**
> EcmOrderItem ecmOrderItemControllerCreate(newEcmOrderItem)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmOrderItemControllerApi();
final newEcmOrderItem = NewEcmOrderItem(); // NewEcmOrderItem | 

try {
    final result = api_instance.ecmOrderItemControllerCreate(newEcmOrderItem);
    print(result);
} catch (e) {
    print('Exception when calling EcmOrderItemControllerApi->ecmOrderItemControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newEcmOrderItem** | [**NewEcmOrderItem**](NewEcmOrderItem.md)|  | [optional] 

### Return type

[**EcmOrderItem**](EcmOrderItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmOrderItemControllerDeleteById**
> ecmOrderItemControllerDeleteById(id)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmOrderItemControllerApi();
final id = id_example; // String | 

try {
    api_instance.ecmOrderItemControllerDeleteById(id);
} catch (e) {
    print('Exception when calling EcmOrderItemControllerApi->ecmOrderItemControllerDeleteById: $e\n');
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

# **ecmOrderItemControllerFind**
> List<EcmOrderItemWithRelations> ecmOrderItemControllerFind(filter)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmOrderItemControllerApi();
final filter = ; // EcmOrderItemFilter1 | 

try {
    final result = api_instance.ecmOrderItemControllerFind(filter);
    print(result);
} catch (e) {
    print('Exception when calling EcmOrderItemControllerApi->ecmOrderItemControllerFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**EcmOrderItemFilter1**](.md)|  | [optional] 

### Return type

[**List<EcmOrderItemWithRelations>**](EcmOrderItemWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmOrderItemControllerFindById**
> EcmOrderItemWithRelations ecmOrderItemControllerFindById(id, filter)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmOrderItemControllerApi();
final id = id_example; // String | 
final filter = ; // EcmOrderItemFilter | 

try {
    final result = api_instance.ecmOrderItemControllerFindById(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling EcmOrderItemControllerApi->ecmOrderItemControllerFindById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**EcmOrderItemFilter**](.md)|  | [optional] 

### Return type

[**EcmOrderItemWithRelations**](EcmOrderItemWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmOrderItemControllerFindEcmOrder**
> EcmOrder ecmOrderItemControllerFindEcmOrder(id)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmOrderItemControllerApi();
final id = id_example; // String | 

try {
    final result = api_instance.ecmOrderItemControllerFindEcmOrder(id);
    print(result);
} catch (e) {
    print('Exception when calling EcmOrderItemControllerApi->ecmOrderItemControllerFindEcmOrder: $e\n');
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

# **ecmOrderItemControllerFindEcmProduct**
> EcmProduct ecmOrderItemControllerFindEcmProduct(id)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmOrderItemControllerApi();
final id = id_example; // String | 

try {
    final result = api_instance.ecmOrderItemControllerFindEcmProduct(id);
    print(result);
} catch (e) {
    print('Exception when calling EcmOrderItemControllerApi->ecmOrderItemControllerFindEcmProduct: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**EcmProduct**](EcmProduct.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmOrderItemControllerReplaceById**
> ecmOrderItemControllerReplaceById(id, ecmOrderItem)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmOrderItemControllerApi();
final id = id_example; // String | 
final ecmOrderItem = EcmOrderItem(); // EcmOrderItem | 

try {
    api_instance.ecmOrderItemControllerReplaceById(id, ecmOrderItem);
} catch (e) {
    print('Exception when calling EcmOrderItemControllerApi->ecmOrderItemControllerReplaceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **ecmOrderItem** | [**EcmOrderItem**](EcmOrderItem.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmOrderItemControllerUpdateAll**
> Count ecmOrderItemControllerUpdateAll(where, ecmOrderItemPartial)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmOrderItemControllerApi();
final where = Object; // Map<String, Object> | 
final ecmOrderItemPartial = [List<EcmOrderItemPartial>()]; // List<EcmOrderItemPartial> | 

try {
    final result = api_instance.ecmOrderItemControllerUpdateAll(where, ecmOrderItemPartial);
    print(result);
} catch (e) {
    print('Exception when calling EcmOrderItemControllerApi->ecmOrderItemControllerUpdateAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **ecmOrderItemPartial** | [**List<EcmOrderItemPartial>**](EcmOrderItemPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmOrderItemControllerUpdateById**
> ecmOrderItemControllerUpdateById(id, ecmOrderItemPartial)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmOrderItemControllerApi();
final id = id_example; // String | 
final ecmOrderItemPartial = EcmOrderItemPartial(); // EcmOrderItemPartial | 

try {
    api_instance.ecmOrderItemControllerUpdateById(id, ecmOrderItemPartial);
} catch (e) {
    print('Exception when calling EcmOrderItemControllerApi->ecmOrderItemControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **ecmOrderItemPartial** | [**EcmOrderItemPartial**](EcmOrderItemPartial.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


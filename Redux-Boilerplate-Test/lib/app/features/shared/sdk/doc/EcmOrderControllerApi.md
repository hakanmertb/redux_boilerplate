# openapi.api.EcmOrderControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ecmOrderControllerCount**](EcmOrderControllerApi.md#ecmordercontrollercount) | **GET** /ecm-orders/count | 
[**ecmOrderControllerCreate**](EcmOrderControllerApi.md#ecmordercontrollercreate) | **POST** /ecm-orders | 
[**ecmOrderControllerCreateEcmOrderItem**](EcmOrderControllerApi.md#ecmordercontrollercreateecmorderitem) | **POST** /ecm-orders/{id}/ecm-order-item | 
[**ecmOrderControllerDeleteById**](EcmOrderControllerApi.md#ecmordercontrollerdeletebyid) | **DELETE** /ecm-orders/{id} | 
[**ecmOrderControllerDeleteEcmOrderItem**](EcmOrderControllerApi.md#ecmordercontrollerdeleteecmorderitem) | **DELETE** /ecm-orders/{id}/ecm-order-item | 
[**ecmOrderControllerFind**](EcmOrderControllerApi.md#ecmordercontrollerfind) | **GET** /ecm-orders | 
[**ecmOrderControllerFindById**](EcmOrderControllerApi.md#ecmordercontrollerfindbyid) | **GET** /ecm-orders/{id} | 
[**ecmOrderControllerFindEcmOrderItems**](EcmOrderControllerApi.md#ecmordercontrollerfindecmorderitems) | **GET** /ecm-orders/{id}/ecm-order-item | 
[**ecmOrderControllerFindEcmShoppingCart**](EcmOrderControllerApi.md#ecmordercontrollerfindecmshoppingcart) | **GET** /ecm-orders/{id}/ecm-shopping-cart | 
[**ecmOrderControllerPatchEcmOrderItem**](EcmOrderControllerApi.md#ecmordercontrollerpatchecmorderitem) | **PATCH** /ecm-orders/{id}/ecm-order-item | 
[**ecmOrderControllerReplaceById**](EcmOrderControllerApi.md#ecmordercontrollerreplacebyid) | **PUT** /ecm-orders/{id} | 
[**ecmOrderControllerUpdateAll**](EcmOrderControllerApi.md#ecmordercontrollerupdateall) | **PATCH** /ecm-orders | 
[**ecmOrderControllerUpdateById**](EcmOrderControllerApi.md#ecmordercontrollerupdatebyid) | **PATCH** /ecm-orders/{id} | 


# **ecmOrderControllerCount**
> Count ecmOrderControllerCount(where)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmOrderControllerApi();
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.ecmOrderControllerCount(where);
    print(result);
} catch (e) {
    print('Exception when calling EcmOrderControllerApi->ecmOrderControllerCount: $e\n');
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

# **ecmOrderControllerCreate**
> EcmOrder ecmOrderControllerCreate(newEcmOrder)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmOrderControllerApi();
final newEcmOrder = NewEcmOrder(); // NewEcmOrder | 

try {
    final result = api_instance.ecmOrderControllerCreate(newEcmOrder);
    print(result);
} catch (e) {
    print('Exception when calling EcmOrderControllerApi->ecmOrderControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newEcmOrder** | [**NewEcmOrder**](NewEcmOrder.md)|  | [optional] 

### Return type

[**EcmOrder**](EcmOrder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmOrderControllerCreateEcmOrderItem**
> EcmOrderItem ecmOrderControllerCreateEcmOrderItem(id, ecmOrderItem)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmOrderControllerApi();
final id = id_example; // String | 
final ecmOrderItem = EcmOrderItem(); // EcmOrderItem | 

try {
    final result = api_instance.ecmOrderControllerCreateEcmOrderItem(id, ecmOrderItem);
    print(result);
} catch (e) {
    print('Exception when calling EcmOrderControllerApi->ecmOrderControllerCreateEcmOrderItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **ecmOrderItem** | [**EcmOrderItem**](EcmOrderItem.md)|  | [optional] 

### Return type

[**EcmOrderItem**](EcmOrderItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmOrderControllerDeleteById**
> ecmOrderControllerDeleteById(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmOrderControllerApi();
final id = id_example; // String | 

try {
    api_instance.ecmOrderControllerDeleteById(id);
} catch (e) {
    print('Exception when calling EcmOrderControllerApi->ecmOrderControllerDeleteById: $e\n');
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

# **ecmOrderControllerDeleteEcmOrderItem**
> Count ecmOrderControllerDeleteEcmOrderItem(id, where)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmOrderControllerApi();
final id = id_example; // String | 
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.ecmOrderControllerDeleteEcmOrderItem(id, where);
    print(result);
} catch (e) {
    print('Exception when calling EcmOrderControllerApi->ecmOrderControllerDeleteEcmOrderItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmOrderControllerFind**
> List<EcmOrderWithRelations> ecmOrderControllerFind(filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmOrderControllerApi();
final filter = ; // EcmOrderFilter1 | 

try {
    final result = api_instance.ecmOrderControllerFind(filter);
    print(result);
} catch (e) {
    print('Exception when calling EcmOrderControllerApi->ecmOrderControllerFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**EcmOrderFilter1**](.md)|  | [optional] 

### Return type

[**List<EcmOrderWithRelations>**](EcmOrderWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmOrderControllerFindById**
> EcmOrderWithRelations ecmOrderControllerFindById(id, filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmOrderControllerApi();
final id = id_example; // String | 
final filter = ; // EcmOrderFilter | 

try {
    final result = api_instance.ecmOrderControllerFindById(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling EcmOrderControllerApi->ecmOrderControllerFindById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**EcmOrderFilter**](.md)|  | [optional] 

### Return type

[**EcmOrderWithRelations**](EcmOrderWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmOrderControllerFindEcmOrderItems**
> List<EcmOrderItemWithRelations> ecmOrderControllerFindEcmOrderItems(id, filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmOrderControllerApi();
final id = id_example; // String | 
final filter = ; // EcmOrderItemFilter1 | 

try {
    final result = api_instance.ecmOrderControllerFindEcmOrderItems(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling EcmOrderControllerApi->ecmOrderControllerFindEcmOrderItems: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**EcmOrderItemFilter1**](.md)|  | [optional] 

### Return type

[**List<EcmOrderItemWithRelations>**](EcmOrderItemWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmOrderControllerFindEcmShoppingCart**
> EcmShoppingCart ecmOrderControllerFindEcmShoppingCart(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmOrderControllerApi();
final id = id_example; // String | 

try {
    final result = api_instance.ecmOrderControllerFindEcmShoppingCart(id);
    print(result);
} catch (e) {
    print('Exception when calling EcmOrderControllerApi->ecmOrderControllerFindEcmShoppingCart: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**EcmShoppingCart**](EcmShoppingCart.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmOrderControllerPatchEcmOrderItem**
> Count ecmOrderControllerPatchEcmOrderItem(id, where, ecmOrderItemPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmOrderControllerApi();
final id = id_example; // String | 
final where = Object; // Map<String, Object> | 
final ecmOrderItemPartial = EcmOrderItemPartial(); // EcmOrderItemPartial | 

try {
    final result = api_instance.ecmOrderControllerPatchEcmOrderItem(id, where, ecmOrderItemPartial);
    print(result);
} catch (e) {
    print('Exception when calling EcmOrderControllerApi->ecmOrderControllerPatchEcmOrderItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **ecmOrderItemPartial** | [**EcmOrderItemPartial**](EcmOrderItemPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmOrderControllerReplaceById**
> ecmOrderControllerReplaceById(id, ecmOrder)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmOrderControllerApi();
final id = id_example; // String | 
final ecmOrder = EcmOrder(); // EcmOrder | 

try {
    api_instance.ecmOrderControllerReplaceById(id, ecmOrder);
} catch (e) {
    print('Exception when calling EcmOrderControllerApi->ecmOrderControllerReplaceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **ecmOrder** | [**EcmOrder**](EcmOrder.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmOrderControllerUpdateAll**
> Count ecmOrderControllerUpdateAll(where, ecmOrderPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmOrderControllerApi();
final where = Object; // Map<String, Object> | 
final ecmOrderPartial = [List<EcmOrderPartial>()]; // List<EcmOrderPartial> | 

try {
    final result = api_instance.ecmOrderControllerUpdateAll(where, ecmOrderPartial);
    print(result);
} catch (e) {
    print('Exception when calling EcmOrderControllerApi->ecmOrderControllerUpdateAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **ecmOrderPartial** | [**List<EcmOrderPartial>**](EcmOrderPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmOrderControllerUpdateById**
> ecmOrderControllerUpdateById(id, ecmOrderPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmOrderControllerApi();
final id = id_example; // String | 
final ecmOrderPartial = EcmOrderPartial(); // EcmOrderPartial | 

try {
    api_instance.ecmOrderControllerUpdateById(id, ecmOrderPartial);
} catch (e) {
    print('Exception when calling EcmOrderControllerApi->ecmOrderControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **ecmOrderPartial** | [**EcmOrderPartial**](EcmOrderPartial.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# openapi.api.EcmShoppingCartControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ecmShoppingCartControllerCount**](EcmShoppingCartControllerApi.md#ecmshoppingcartcontrollercount) | **GET** /ecm-shopping-carts/count | 
[**ecmShoppingCartControllerCreate**](EcmShoppingCartControllerApi.md#ecmshoppingcartcontrollercreate) | **POST** /ecm-shopping-carts | 
[**ecmShoppingCartControllerCreateEcmShoppingCartItem**](EcmShoppingCartControllerApi.md#ecmshoppingcartcontrollercreateecmshoppingcartitem) | **POST** /ecm-shopping-carts/{id}/ecm-shopping-cart-item | 
[**ecmShoppingCartControllerDeleteById**](EcmShoppingCartControllerApi.md#ecmshoppingcartcontrollerdeletebyid) | **DELETE** /ecm-shopping-carts/{id} | 
[**ecmShoppingCartControllerDeleteEcmShoppingCartItem**](EcmShoppingCartControllerApi.md#ecmshoppingcartcontrollerdeleteecmshoppingcartitem) | **DELETE** /ecm-shopping-carts/{id}/ecm-shopping-cart-item | 
[**ecmShoppingCartControllerFind**](EcmShoppingCartControllerApi.md#ecmshoppingcartcontrollerfind) | **GET** /ecm-shopping-carts | 
[**ecmShoppingCartControllerFindById**](EcmShoppingCartControllerApi.md#ecmshoppingcartcontrollerfindbyid) | **GET** /ecm-shopping-carts/{id} | 
[**ecmShoppingCartControllerFindEcmShoppingCartItems**](EcmShoppingCartControllerApi.md#ecmshoppingcartcontrollerfindecmshoppingcartitems) | **GET** /ecm-shopping-carts/{id}/ecm-shopping-cart-item | 
[**ecmShoppingCartControllerPatchEcmShoppingCartItem**](EcmShoppingCartControllerApi.md#ecmshoppingcartcontrollerpatchecmshoppingcartitem) | **PATCH** /ecm-shopping-carts/{id}/ecm-shopping-cart-item | 
[**ecmShoppingCartControllerReplaceById**](EcmShoppingCartControllerApi.md#ecmshoppingcartcontrollerreplacebyid) | **PUT** /ecm-shopping-carts/{id} | 
[**ecmShoppingCartControllerUpdateAll**](EcmShoppingCartControllerApi.md#ecmshoppingcartcontrollerupdateall) | **PATCH** /ecm-shopping-carts | 
[**ecmShoppingCartControllerUpdateById**](EcmShoppingCartControllerApi.md#ecmshoppingcartcontrollerupdatebyid) | **PATCH** /ecm-shopping-carts/{id} | 


# **ecmShoppingCartControllerCount**
> Count ecmShoppingCartControllerCount(where)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmShoppingCartControllerApi();
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.ecmShoppingCartControllerCount(where);
    print(result);
} catch (e) {
    print('Exception when calling EcmShoppingCartControllerApi->ecmShoppingCartControllerCount: $e\n');
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

# **ecmShoppingCartControllerCreate**
> EcmShoppingCart ecmShoppingCartControllerCreate(newEcmShoppingCart)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmShoppingCartControllerApi();
final newEcmShoppingCart = NewEcmShoppingCart(); // NewEcmShoppingCart | 

try {
    final result = api_instance.ecmShoppingCartControllerCreate(newEcmShoppingCart);
    print(result);
} catch (e) {
    print('Exception when calling EcmShoppingCartControllerApi->ecmShoppingCartControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newEcmShoppingCart** | [**NewEcmShoppingCart**](NewEcmShoppingCart.md)|  | [optional] 

### Return type

[**EcmShoppingCart**](EcmShoppingCart.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmShoppingCartControllerCreateEcmShoppingCartItem**
> EcmShoppingCartItem ecmShoppingCartControllerCreateEcmShoppingCartItem(id, ecmShoppingCartItem)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmShoppingCartControllerApi();
final id = id_example; // String | 
final ecmShoppingCartItem = EcmShoppingCartItem(); // EcmShoppingCartItem | 

try {
    final result = api_instance.ecmShoppingCartControllerCreateEcmShoppingCartItem(id, ecmShoppingCartItem);
    print(result);
} catch (e) {
    print('Exception when calling EcmShoppingCartControllerApi->ecmShoppingCartControllerCreateEcmShoppingCartItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **ecmShoppingCartItem** | [**EcmShoppingCartItem**](EcmShoppingCartItem.md)|  | [optional] 

### Return type

[**EcmShoppingCartItem**](EcmShoppingCartItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmShoppingCartControllerDeleteById**
> ecmShoppingCartControllerDeleteById(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmShoppingCartControllerApi();
final id = id_example; // String | 

try {
    api_instance.ecmShoppingCartControllerDeleteById(id);
} catch (e) {
    print('Exception when calling EcmShoppingCartControllerApi->ecmShoppingCartControllerDeleteById: $e\n');
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

# **ecmShoppingCartControllerDeleteEcmShoppingCartItem**
> Count ecmShoppingCartControllerDeleteEcmShoppingCartItem(id, where)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmShoppingCartControllerApi();
final id = id_example; // String | 
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.ecmShoppingCartControllerDeleteEcmShoppingCartItem(id, where);
    print(result);
} catch (e) {
    print('Exception when calling EcmShoppingCartControllerApi->ecmShoppingCartControllerDeleteEcmShoppingCartItem: $e\n');
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

# **ecmShoppingCartControllerFind**
> List<EcmShoppingCartWithRelations> ecmShoppingCartControllerFind(filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmShoppingCartControllerApi();
final filter = ; // EcmShoppingCartFilter1 | 

try {
    final result = api_instance.ecmShoppingCartControllerFind(filter);
    print(result);
} catch (e) {
    print('Exception when calling EcmShoppingCartControllerApi->ecmShoppingCartControllerFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**EcmShoppingCartFilter1**](.md)|  | [optional] 

### Return type

[**List<EcmShoppingCartWithRelations>**](EcmShoppingCartWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmShoppingCartControllerFindById**
> EcmShoppingCartWithRelations ecmShoppingCartControllerFindById(id, filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmShoppingCartControllerApi();
final id = id_example; // String | 
final filter = ; // EcmShoppingCartFilter | 

try {
    final result = api_instance.ecmShoppingCartControllerFindById(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling EcmShoppingCartControllerApi->ecmShoppingCartControllerFindById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**EcmShoppingCartFilter**](.md)|  | [optional] 

### Return type

[**EcmShoppingCartWithRelations**](EcmShoppingCartWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmShoppingCartControllerFindEcmShoppingCartItems**
> List<EcmShoppingCartItemWithRelations> ecmShoppingCartControllerFindEcmShoppingCartItems(id, filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmShoppingCartControllerApi();
final id = id_example; // String | 
final filter = ; // EcmShoppingCartItemFilter1 | 

try {
    final result = api_instance.ecmShoppingCartControllerFindEcmShoppingCartItems(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling EcmShoppingCartControllerApi->ecmShoppingCartControllerFindEcmShoppingCartItems: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**EcmShoppingCartItemFilter1**](.md)|  | [optional] 

### Return type

[**List<EcmShoppingCartItemWithRelations>**](EcmShoppingCartItemWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmShoppingCartControllerPatchEcmShoppingCartItem**
> Count ecmShoppingCartControllerPatchEcmShoppingCartItem(id, where, ecmShoppingCartItemPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmShoppingCartControllerApi();
final id = id_example; // String | 
final where = Object; // Map<String, Object> | 
final ecmShoppingCartItemPartial = EcmShoppingCartItemPartial(); // EcmShoppingCartItemPartial | 

try {
    final result = api_instance.ecmShoppingCartControllerPatchEcmShoppingCartItem(id, where, ecmShoppingCartItemPartial);
    print(result);
} catch (e) {
    print('Exception when calling EcmShoppingCartControllerApi->ecmShoppingCartControllerPatchEcmShoppingCartItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **ecmShoppingCartItemPartial** | [**EcmShoppingCartItemPartial**](EcmShoppingCartItemPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmShoppingCartControllerReplaceById**
> ecmShoppingCartControllerReplaceById(id, ecmShoppingCart)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmShoppingCartControllerApi();
final id = id_example; // String | 
final ecmShoppingCart = EcmShoppingCart(); // EcmShoppingCart | 

try {
    api_instance.ecmShoppingCartControllerReplaceById(id, ecmShoppingCart);
} catch (e) {
    print('Exception when calling EcmShoppingCartControllerApi->ecmShoppingCartControllerReplaceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **ecmShoppingCart** | [**EcmShoppingCart**](EcmShoppingCart.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmShoppingCartControllerUpdateAll**
> Count ecmShoppingCartControllerUpdateAll(where, ecmShoppingCartPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmShoppingCartControllerApi();
final where = Object; // Map<String, Object> | 
final ecmShoppingCartPartial = [List<EcmShoppingCartPartial>()]; // List<EcmShoppingCartPartial> | 

try {
    final result = api_instance.ecmShoppingCartControllerUpdateAll(where, ecmShoppingCartPartial);
    print(result);
} catch (e) {
    print('Exception when calling EcmShoppingCartControllerApi->ecmShoppingCartControllerUpdateAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **ecmShoppingCartPartial** | [**List<EcmShoppingCartPartial>**](EcmShoppingCartPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmShoppingCartControllerUpdateById**
> ecmShoppingCartControllerUpdateById(id, ecmShoppingCartPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EcmShoppingCartControllerApi();
final id = id_example; // String | 
final ecmShoppingCartPartial = EcmShoppingCartPartial(); // EcmShoppingCartPartial | 

try {
    api_instance.ecmShoppingCartControllerUpdateById(id, ecmShoppingCartPartial);
} catch (e) {
    print('Exception when calling EcmShoppingCartControllerApi->ecmShoppingCartControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **ecmShoppingCartPartial** | [**EcmShoppingCartPartial**](EcmShoppingCartPartial.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


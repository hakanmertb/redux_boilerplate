# my_api_client.api.EcmShoppingCartItemControllerApi

## Load the API package
```dart
import 'package:my_api_client/api.dart';
```

All URIs are relative to *http://[::1]:4001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ecmShoppingCartItemControllerCount**](EcmShoppingCartItemControllerApi.md#ecmshoppingcartitemcontrollercount) | **GET** /ecm-shopping-cart-items/count | 
[**ecmShoppingCartItemControllerCreate**](EcmShoppingCartItemControllerApi.md#ecmshoppingcartitemcontrollercreate) | **POST** /ecm-shopping-cart-items | 
[**ecmShoppingCartItemControllerDeleteById**](EcmShoppingCartItemControllerApi.md#ecmshoppingcartitemcontrollerdeletebyid) | **DELETE** /ecm-shopping-cart-items/{id} | 
[**ecmShoppingCartItemControllerFind**](EcmShoppingCartItemControllerApi.md#ecmshoppingcartitemcontrollerfind) | **GET** /ecm-shopping-cart-items | 
[**ecmShoppingCartItemControllerFindById**](EcmShoppingCartItemControllerApi.md#ecmshoppingcartitemcontrollerfindbyid) | **GET** /ecm-shopping-cart-items/{id} | 
[**ecmShoppingCartItemControllerFindEcmProduct**](EcmShoppingCartItemControllerApi.md#ecmshoppingcartitemcontrollerfindecmproduct) | **GET** /ecm-shopping-cart-items/{id}/ecm-product | 
[**ecmShoppingCartItemControllerFindEcmShoppingCart**](EcmShoppingCartItemControllerApi.md#ecmshoppingcartitemcontrollerfindecmshoppingcart) | **GET** /ecm-shopping-cart-items/{id}/ecm-shopping-cart | 
[**ecmShoppingCartItemControllerReplaceById**](EcmShoppingCartItemControllerApi.md#ecmshoppingcartitemcontrollerreplacebyid) | **PUT** /ecm-shopping-cart-items/{id} | 
[**ecmShoppingCartItemControllerUpdateAll**](EcmShoppingCartItemControllerApi.md#ecmshoppingcartitemcontrollerupdateall) | **PATCH** /ecm-shopping-cart-items | 
[**ecmShoppingCartItemControllerUpdateById**](EcmShoppingCartItemControllerApi.md#ecmshoppingcartitemcontrollerupdatebyid) | **PATCH** /ecm-shopping-cart-items/{id} | 


# **ecmShoppingCartItemControllerCount**
> Count ecmShoppingCartItemControllerCount(where)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmShoppingCartItemControllerApi();
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.ecmShoppingCartItemControllerCount(where);
    print(result);
} catch (e) {
    print('Exception when calling EcmShoppingCartItemControllerApi->ecmShoppingCartItemControllerCount: $e\n');
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

# **ecmShoppingCartItemControllerCreate**
> EcmShoppingCartItem ecmShoppingCartItemControllerCreate(newEcmShoppingCartItem)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmShoppingCartItemControllerApi();
final newEcmShoppingCartItem = NewEcmShoppingCartItem(); // NewEcmShoppingCartItem | 

try {
    final result = api_instance.ecmShoppingCartItemControllerCreate(newEcmShoppingCartItem);
    print(result);
} catch (e) {
    print('Exception when calling EcmShoppingCartItemControllerApi->ecmShoppingCartItemControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newEcmShoppingCartItem** | [**NewEcmShoppingCartItem**](NewEcmShoppingCartItem.md)|  | [optional] 

### Return type

[**EcmShoppingCartItem**](EcmShoppingCartItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmShoppingCartItemControllerDeleteById**
> ecmShoppingCartItemControllerDeleteById(id)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmShoppingCartItemControllerApi();
final id = id_example; // String | 

try {
    api_instance.ecmShoppingCartItemControllerDeleteById(id);
} catch (e) {
    print('Exception when calling EcmShoppingCartItemControllerApi->ecmShoppingCartItemControllerDeleteById: $e\n');
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

# **ecmShoppingCartItemControllerFind**
> List<EcmShoppingCartItemWithRelations> ecmShoppingCartItemControllerFind(filter)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmShoppingCartItemControllerApi();
final filter = ; // EcmShoppingCartItemFilter1 | 

try {
    final result = api_instance.ecmShoppingCartItemControllerFind(filter);
    print(result);
} catch (e) {
    print('Exception when calling EcmShoppingCartItemControllerApi->ecmShoppingCartItemControllerFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**EcmShoppingCartItemFilter1**](.md)|  | [optional] 

### Return type

[**List<EcmShoppingCartItemWithRelations>**](EcmShoppingCartItemWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmShoppingCartItemControllerFindById**
> EcmShoppingCartItemWithRelations ecmShoppingCartItemControllerFindById(id, filter)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmShoppingCartItemControllerApi();
final id = id_example; // String | 
final filter = ; // EcmShoppingCartItemFilter | 

try {
    final result = api_instance.ecmShoppingCartItemControllerFindById(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling EcmShoppingCartItemControllerApi->ecmShoppingCartItemControllerFindById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**EcmShoppingCartItemFilter**](.md)|  | [optional] 

### Return type

[**EcmShoppingCartItemWithRelations**](EcmShoppingCartItemWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmShoppingCartItemControllerFindEcmProduct**
> EcmProduct ecmShoppingCartItemControllerFindEcmProduct(id)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmShoppingCartItemControllerApi();
final id = id_example; // String | 

try {
    final result = api_instance.ecmShoppingCartItemControllerFindEcmProduct(id);
    print(result);
} catch (e) {
    print('Exception when calling EcmShoppingCartItemControllerApi->ecmShoppingCartItemControllerFindEcmProduct: $e\n');
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

# **ecmShoppingCartItemControllerFindEcmShoppingCart**
> EcmShoppingCart ecmShoppingCartItemControllerFindEcmShoppingCart(id)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmShoppingCartItemControllerApi();
final id = id_example; // String | 

try {
    final result = api_instance.ecmShoppingCartItemControllerFindEcmShoppingCart(id);
    print(result);
} catch (e) {
    print('Exception when calling EcmShoppingCartItemControllerApi->ecmShoppingCartItemControllerFindEcmShoppingCart: $e\n');
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

# **ecmShoppingCartItemControllerReplaceById**
> ecmShoppingCartItemControllerReplaceById(id, ecmShoppingCartItem)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmShoppingCartItemControllerApi();
final id = id_example; // String | 
final ecmShoppingCartItem = EcmShoppingCartItem(); // EcmShoppingCartItem | 

try {
    api_instance.ecmShoppingCartItemControllerReplaceById(id, ecmShoppingCartItem);
} catch (e) {
    print('Exception when calling EcmShoppingCartItemControllerApi->ecmShoppingCartItemControllerReplaceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **ecmShoppingCartItem** | [**EcmShoppingCartItem**](EcmShoppingCartItem.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmShoppingCartItemControllerUpdateAll**
> Count ecmShoppingCartItemControllerUpdateAll(where, ecmShoppingCartItemPartial)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmShoppingCartItemControllerApi();
final where = Object; // Map<String, Object> | 
final ecmShoppingCartItemPartial = [List<EcmShoppingCartItemPartial>()]; // List<EcmShoppingCartItemPartial> | 

try {
    final result = api_instance.ecmShoppingCartItemControllerUpdateAll(where, ecmShoppingCartItemPartial);
    print(result);
} catch (e) {
    print('Exception when calling EcmShoppingCartItemControllerApi->ecmShoppingCartItemControllerUpdateAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **ecmShoppingCartItemPartial** | [**List<EcmShoppingCartItemPartial>**](EcmShoppingCartItemPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ecmShoppingCartItemControllerUpdateById**
> ecmShoppingCartItemControllerUpdateById(id, ecmShoppingCartItemPartial)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = EcmShoppingCartItemControllerApi();
final id = id_example; // String | 
final ecmShoppingCartItemPartial = EcmShoppingCartItemPartial(); // EcmShoppingCartItemPartial | 

try {
    api_instance.ecmShoppingCartItemControllerUpdateById(id, ecmShoppingCartItemPartial);
} catch (e) {
    print('Exception when calling EcmShoppingCartItemControllerApi->ecmShoppingCartItemControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **ecmShoppingCartItemPartial** | [**EcmShoppingCartItemPartial**](EcmShoppingCartItemPartial.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


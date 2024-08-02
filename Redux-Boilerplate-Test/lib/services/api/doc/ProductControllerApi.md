# my_api_client.api.ProductControllerApi

## Load the API package
```dart
import 'package:my_api_client/api.dart';
```

All URIs are relative to *http://[::1]:4001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**productControllerCount**](ProductControllerApi.md#productcontrollercount) | **GET** /products/count | 
[**productControllerCreate**](ProductControllerApi.md#productcontrollercreate) | **POST** /products | 
[**productControllerDeleteById**](ProductControllerApi.md#productcontrollerdeletebyid) | **DELETE** /products/{id} | 
[**productControllerFind**](ProductControllerApi.md#productcontrollerfind) | **GET** /products | 
[**productControllerFindById**](ProductControllerApi.md#productcontrollerfindbyid) | **GET** /products/{id} | 
[**productControllerReplaceById**](ProductControllerApi.md#productcontrollerreplacebyid) | **PUT** /products/{id} | 
[**productControllerUpdateAll**](ProductControllerApi.md#productcontrollerupdateall) | **PATCH** /products | 
[**productControllerUpdateById**](ProductControllerApi.md#productcontrollerupdatebyid) | **PATCH** /products/{id} | 


# **productControllerCount**
> Count productControllerCount(where)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ProductControllerApi();
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.productControllerCount(where);
    print(result);
} catch (e) {
    print('Exception when calling ProductControllerApi->productControllerCount: $e\n');
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

# **productControllerCreate**
> Product productControllerCreate(newProduct)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ProductControllerApi();
final newProduct = NewProduct(); // NewProduct | 

try {
    final result = api_instance.productControllerCreate(newProduct);
    print(result);
} catch (e) {
    print('Exception when calling ProductControllerApi->productControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newProduct** | [**NewProduct**](NewProduct.md)|  | [optional] 

### Return type

[**Product**](Product.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productControllerDeleteById**
> productControllerDeleteById(id)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ProductControllerApi();
final id = id_example; // String | 

try {
    api_instance.productControllerDeleteById(id);
} catch (e) {
    print('Exception when calling ProductControllerApi->productControllerDeleteById: $e\n');
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

# **productControllerFind**
> List<ProductWithRelations> productControllerFind(filter)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ProductControllerApi();
final filter = ; // ProductFilter1 | 

try {
    final result = api_instance.productControllerFind(filter);
    print(result);
} catch (e) {
    print('Exception when calling ProductControllerApi->productControllerFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**ProductFilter1**](.md)|  | [optional] 

### Return type

[**List<ProductWithRelations>**](ProductWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productControllerFindById**
> ProductWithRelations productControllerFindById(id, filter)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ProductControllerApi();
final id = id_example; // String | 
final filter = ; // ProductFilter | 

try {
    final result = api_instance.productControllerFindById(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling ProductControllerApi->productControllerFindById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**ProductFilter**](.md)|  | [optional] 

### Return type

[**ProductWithRelations**](ProductWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productControllerReplaceById**
> productControllerReplaceById(id, product)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ProductControllerApi();
final id = id_example; // String | 
final product = Product(); // Product | 

try {
    api_instance.productControllerReplaceById(id, product);
} catch (e) {
    print('Exception when calling ProductControllerApi->productControllerReplaceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **product** | [**Product**](Product.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productControllerUpdateAll**
> Count productControllerUpdateAll(where, productPartial)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ProductControllerApi();
final where = Object; // Map<String, Object> | 
final productPartial = [List<ProductPartial>()]; // List<ProductPartial> | 

try {
    final result = api_instance.productControllerUpdateAll(where, productPartial);
    print(result);
} catch (e) {
    print('Exception when calling ProductControllerApi->productControllerUpdateAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **productPartial** | [**List<ProductPartial>**](ProductPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productControllerUpdateById**
> productControllerUpdateById(id, productPartial)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ProductControllerApi();
final id = id_example; // String | 
final productPartial = ProductPartial(); // ProductPartial | 

try {
    api_instance.productControllerUpdateById(id, productPartial);
} catch (e) {
    print('Exception when calling ProductControllerApi->productControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **productPartial** | [**ProductPartial**](ProductPartial.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


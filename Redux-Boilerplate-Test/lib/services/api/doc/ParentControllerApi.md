# my_api_client.api.ParentControllerApi

## Load the API package
```dart
import 'package:my_api_client/api.dart';
```

All URIs are relative to *http://[::1]:4001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**parentControllerCount**](ParentControllerApi.md#parentcontrollercount) | **GET** /parents/count | 
[**parentControllerCreate**](ParentControllerApi.md#parentcontrollercreate) | **POST** /parents | 
[**parentControllerDeleteById**](ParentControllerApi.md#parentcontrollerdeletebyid) | **DELETE** /parents/{id} | 
[**parentControllerFind**](ParentControllerApi.md#parentcontrollerfind) | **GET** /parents | 
[**parentControllerFindById**](ParentControllerApi.md#parentcontrollerfindbyid) | **GET** /parents/{id} | 
[**parentControllerReplaceById**](ParentControllerApi.md#parentcontrollerreplacebyid) | **PUT** /parents/{id} | 
[**parentControllerUpdateAll**](ParentControllerApi.md#parentcontrollerupdateall) | **PATCH** /parents | 
[**parentControllerUpdateById**](ParentControllerApi.md#parentcontrollerupdatebyid) | **PATCH** /parents/{id} | 


# **parentControllerCount**
> Count parentControllerCount(where)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ParentControllerApi();
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.parentControllerCount(where);
    print(result);
} catch (e) {
    print('Exception when calling ParentControllerApi->parentControllerCount: $e\n');
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

# **parentControllerCreate**
> Parent parentControllerCreate(newParent)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ParentControllerApi();
final newParent = NewParent(); // NewParent | 

try {
    final result = api_instance.parentControllerCreate(newParent);
    print(result);
} catch (e) {
    print('Exception when calling ParentControllerApi->parentControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newParent** | [**NewParent**](NewParent.md)|  | [optional] 

### Return type

[**Parent**](Parent.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **parentControllerDeleteById**
> parentControllerDeleteById(id)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ParentControllerApi();
final id = id_example; // String | 

try {
    api_instance.parentControllerDeleteById(id);
} catch (e) {
    print('Exception when calling ParentControllerApi->parentControllerDeleteById: $e\n');
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

# **parentControllerFind**
> List<ParentWithRelations> parentControllerFind(filter)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ParentControllerApi();
final filter = ; // ParentFilter1 | 

try {
    final result = api_instance.parentControllerFind(filter);
    print(result);
} catch (e) {
    print('Exception when calling ParentControllerApi->parentControllerFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**ParentFilter1**](.md)|  | [optional] 

### Return type

[**List<ParentWithRelations>**](ParentWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **parentControllerFindById**
> ParentWithRelations parentControllerFindById(id, filter)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ParentControllerApi();
final id = id_example; // String | 
final filter = ; // ParentFilter | 

try {
    final result = api_instance.parentControllerFindById(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling ParentControllerApi->parentControllerFindById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**ParentFilter**](.md)|  | [optional] 

### Return type

[**ParentWithRelations**](ParentWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **parentControllerReplaceById**
> parentControllerReplaceById(id, parent)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ParentControllerApi();
final id = id_example; // String | 
final parent = Parent(); // Parent | 

try {
    api_instance.parentControllerReplaceById(id, parent);
} catch (e) {
    print('Exception when calling ParentControllerApi->parentControllerReplaceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **parent** | [**Parent**](Parent.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **parentControllerUpdateAll**
> Count parentControllerUpdateAll(where, parentPartial)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ParentControllerApi();
final where = Object; // Map<String, Object> | 
final parentPartial = [List<ParentPartial>()]; // List<ParentPartial> | 

try {
    final result = api_instance.parentControllerUpdateAll(where, parentPartial);
    print(result);
} catch (e) {
    print('Exception when calling ParentControllerApi->parentControllerUpdateAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **parentPartial** | [**List<ParentPartial>**](ParentPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **parentControllerUpdateById**
> parentControllerUpdateById(id, parentPartial)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ParentControllerApi();
final id = id_example; // String | 
final parentPartial = ParentPartial(); // ParentPartial | 

try {
    api_instance.parentControllerUpdateById(id, parentPartial);
} catch (e) {
    print('Exception when calling ParentControllerApi->parentControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **parentPartial** | [**ParentPartial**](ParentPartial.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# openapi.api.BlogControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**blogControllerCount**](BlogControllerApi.md#blogcontrollercount) | **GET** /blogs/count | 
[**blogControllerCreate**](BlogControllerApi.md#blogcontrollercreate) | **POST** /blogs | 
[**blogControllerDeleteById**](BlogControllerApi.md#blogcontrollerdeletebyid) | **DELETE** /blogs/{id} | 
[**blogControllerFind**](BlogControllerApi.md#blogcontrollerfind) | **GET** /blogs | 
[**blogControllerFindById**](BlogControllerApi.md#blogcontrollerfindbyid) | **GET** /blogs/{id} | 
[**blogControllerReplaceById**](BlogControllerApi.md#blogcontrollerreplacebyid) | **PUT** /blogs/{id} | 
[**blogControllerUpdateAll**](BlogControllerApi.md#blogcontrollerupdateall) | **PATCH** /blogs | 
[**blogControllerUpdateById**](BlogControllerApi.md#blogcontrollerupdatebyid) | **PATCH** /blogs/{id} | 


# **blogControllerCount**
> Count blogControllerCount(where)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BlogControllerApi();
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.blogControllerCount(where);
    print(result);
} catch (e) {
    print('Exception when calling BlogControllerApi->blogControllerCount: $e\n');
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

# **blogControllerCreate**
> Blog blogControllerCreate(newBlog)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BlogControllerApi();
final newBlog = NewBlog(); // NewBlog | 

try {
    final result = api_instance.blogControllerCreate(newBlog);
    print(result);
} catch (e) {
    print('Exception when calling BlogControllerApi->blogControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newBlog** | [**NewBlog**](NewBlog.md)|  | [optional] 

### Return type

[**Blog**](Blog.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **blogControllerDeleteById**
> blogControllerDeleteById(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BlogControllerApi();
final id = id_example; // String | 

try {
    api_instance.blogControllerDeleteById(id);
} catch (e) {
    print('Exception when calling BlogControllerApi->blogControllerDeleteById: $e\n');
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

# **blogControllerFind**
> List<BlogWithRelations> blogControllerFind(filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BlogControllerApi();
final filter = ; // BlogFilter1 | 

try {
    final result = api_instance.blogControllerFind(filter);
    print(result);
} catch (e) {
    print('Exception when calling BlogControllerApi->blogControllerFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**BlogFilter1**](.md)|  | [optional] 

### Return type

[**List<BlogWithRelations>**](BlogWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **blogControllerFindById**
> BlogWithRelations blogControllerFindById(id, filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BlogControllerApi();
final id = id_example; // String | 
final filter = ; // BlogFilter | 

try {
    final result = api_instance.blogControllerFindById(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling BlogControllerApi->blogControllerFindById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**BlogFilter**](.md)|  | [optional] 

### Return type

[**BlogWithRelations**](BlogWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **blogControllerReplaceById**
> blogControllerReplaceById(id, blog)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BlogControllerApi();
final id = id_example; // String | 
final blog = Blog(); // Blog | 

try {
    api_instance.blogControllerReplaceById(id, blog);
} catch (e) {
    print('Exception when calling BlogControllerApi->blogControllerReplaceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **blog** | [**Blog**](Blog.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **blogControllerUpdateAll**
> Count blogControllerUpdateAll(where, blogPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BlogControllerApi();
final where = Object; // Map<String, Object> | 
final blogPartial = [List<BlogPartial>()]; // List<BlogPartial> | 

try {
    final result = api_instance.blogControllerUpdateAll(where, blogPartial);
    print(result);
} catch (e) {
    print('Exception when calling BlogControllerApi->blogControllerUpdateAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **blogPartial** | [**List<BlogPartial>**](BlogPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **blogControllerUpdateById**
> blogControllerUpdateById(id, blogPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BlogControllerApi();
final id = id_example; // String | 
final blogPartial = BlogPartial(); // BlogPartial | 

try {
    api_instance.blogControllerUpdateById(id, blogPartial);
} catch (e) {
    print('Exception when calling BlogControllerApi->blogControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **blogPartial** | [**BlogPartial**](BlogPartial.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


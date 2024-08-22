# openapi.api.ApplicationControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://b713a217-f664-43a7-a6f6-fad732f4daa6.api.rappider.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**applicationControllerCount**](ApplicationControllerApi.md#applicationcontrollercount) | **GET** /applications/count | 
[**applicationControllerCreate**](ApplicationControllerApi.md#applicationcontrollercreate) | **POST** /applications | 
[**applicationControllerDeleteById**](ApplicationControllerApi.md#applicationcontrollerdeletebyid) | **DELETE** /applications/{id} | 
[**applicationControllerFind**](ApplicationControllerApi.md#applicationcontrollerfind) | **GET** /applications | 
[**applicationControllerFindById**](ApplicationControllerApi.md#applicationcontrollerfindbyid) | **GET** /applications/{id} | 
[**applicationControllerFindUser**](ApplicationControllerApi.md#applicationcontrollerfinduser) | **GET** /applications/{id}/user | 
[**applicationControllerReplaceById**](ApplicationControllerApi.md#applicationcontrollerreplacebyid) | **PUT** /applications/{id} | 
[**applicationControllerUpdateAll**](ApplicationControllerApi.md#applicationcontrollerupdateall) | **PATCH** /applications | 
[**applicationControllerUpdateById**](ApplicationControllerApi.md#applicationcontrollerupdatebyid) | **PATCH** /applications/{id} | 


# **applicationControllerCount**
> Count applicationControllerCount(where)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApplicationControllerApi();
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.applicationControllerCount(where);
    print(result);
} catch (e) {
    print('Exception when calling ApplicationControllerApi->applicationControllerCount: $e\n');
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

# **applicationControllerCreate**
> Application applicationControllerCreate(newApplication)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApplicationControllerApi();
final newApplication = NewApplication(); // NewApplication | 

try {
    final result = api_instance.applicationControllerCreate(newApplication);
    print(result);
} catch (e) {
    print('Exception when calling ApplicationControllerApi->applicationControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newApplication** | [**NewApplication**](NewApplication.md)|  | [optional] 

### Return type

[**Application**](Application.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **applicationControllerDeleteById**
> applicationControllerDeleteById(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApplicationControllerApi();
final id = id_example; // String | 

try {
    api_instance.applicationControllerDeleteById(id);
} catch (e) {
    print('Exception when calling ApplicationControllerApi->applicationControllerDeleteById: $e\n');
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

# **applicationControllerFind**
> List<ApplicationWithRelations> applicationControllerFind(filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApplicationControllerApi();
final filter = ; // ApplicationFilter1 | 

try {
    final result = api_instance.applicationControllerFind(filter);
    print(result);
} catch (e) {
    print('Exception when calling ApplicationControllerApi->applicationControllerFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**ApplicationFilter1**](.md)|  | [optional] 

### Return type

[**List<ApplicationWithRelations>**](ApplicationWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **applicationControllerFindById**
> ApplicationWithRelations applicationControllerFindById(id, filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApplicationControllerApi();
final id = id_example; // String | 
final filter = ; // ApplicationFilter | 

try {
    final result = api_instance.applicationControllerFindById(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling ApplicationControllerApi->applicationControllerFindById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**ApplicationFilter**](.md)|  | [optional] 

### Return type

[**ApplicationWithRelations**](ApplicationWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **applicationControllerFindUser**
> User applicationControllerFindUser(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApplicationControllerApi();
final id = id_example; // String | 

try {
    final result = api_instance.applicationControllerFindUser(id);
    print(result);
} catch (e) {
    print('Exception when calling ApplicationControllerApi->applicationControllerFindUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **applicationControllerReplaceById**
> applicationControllerReplaceById(id, application)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApplicationControllerApi();
final id = id_example; // String | 
final application = Application(); // Application | 

try {
    api_instance.applicationControllerReplaceById(id, application);
} catch (e) {
    print('Exception when calling ApplicationControllerApi->applicationControllerReplaceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **application** | [**Application**](Application.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **applicationControllerUpdateAll**
> Count applicationControllerUpdateAll(where, applicationPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApplicationControllerApi();
final where = Object; // Map<String, Object> | 
final applicationPartial = [List<ApplicationPartial>()]; // List<ApplicationPartial> | 

try {
    final result = api_instance.applicationControllerUpdateAll(where, applicationPartial);
    print(result);
} catch (e) {
    print('Exception when calling ApplicationControllerApi->applicationControllerUpdateAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **applicationPartial** | [**List<ApplicationPartial>**](ApplicationPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **applicationControllerUpdateById**
> applicationControllerUpdateById(id, applicationPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ApplicationControllerApi();
final id = id_example; // String | 
final applicationPartial = ApplicationPartial(); // ApplicationPartial | 

try {
    api_instance.applicationControllerUpdateById(id, applicationPartial);
} catch (e) {
    print('Exception when calling ApplicationControllerApi->applicationControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **applicationPartial** | [**ApplicationPartial**](ApplicationPartial.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


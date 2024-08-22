# openapi.api.XxDemographicInfoControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://b713a217-f664-43a7-a6f6-fad732f4daa6.api.rappider.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**xxDemographicInfoControllerCount**](XxDemographicInfoControllerApi.md#xxdemographicinfocontrollercount) | **GET** /xx-demographic-infos/count | 
[**xxDemographicInfoControllerCreate**](XxDemographicInfoControllerApi.md#xxdemographicinfocontrollercreate) | **POST** /xx-demographic-infos | 
[**xxDemographicInfoControllerDeleteById**](XxDemographicInfoControllerApi.md#xxdemographicinfocontrollerdeletebyid) | **DELETE** /xx-demographic-infos/{id} | 
[**xxDemographicInfoControllerFind**](XxDemographicInfoControllerApi.md#xxdemographicinfocontrollerfind) | **GET** /xx-demographic-infos | 
[**xxDemographicInfoControllerFindById**](XxDemographicInfoControllerApi.md#xxdemographicinfocontrollerfindbyid) | **GET** /xx-demographic-infos/{id} | 
[**xxDemographicInfoControllerReplaceById**](XxDemographicInfoControllerApi.md#xxdemographicinfocontrollerreplacebyid) | **PUT** /xx-demographic-infos/{id} | 
[**xxDemographicInfoControllerUpdateAll**](XxDemographicInfoControllerApi.md#xxdemographicinfocontrollerupdateall) | **PATCH** /xx-demographic-infos | 
[**xxDemographicInfoControllerUpdateById**](XxDemographicInfoControllerApi.md#xxdemographicinfocontrollerupdatebyid) | **PATCH** /xx-demographic-infos/{id} | 


# **xxDemographicInfoControllerCount**
> Count xxDemographicInfoControllerCount(where)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = XxDemographicInfoControllerApi();
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.xxDemographicInfoControllerCount(where);
    print(result);
} catch (e) {
    print('Exception when calling XxDemographicInfoControllerApi->xxDemographicInfoControllerCount: $e\n');
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

# **xxDemographicInfoControllerCreate**
> XxDemographicInfo xxDemographicInfoControllerCreate(newDemographicInfo)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = XxDemographicInfoControllerApi();
final newDemographicInfo = NewDemographicInfo(); // NewDemographicInfo | 

try {
    final result = api_instance.xxDemographicInfoControllerCreate(newDemographicInfo);
    print(result);
} catch (e) {
    print('Exception when calling XxDemographicInfoControllerApi->xxDemographicInfoControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newDemographicInfo** | [**NewDemographicInfo**](NewDemographicInfo.md)|  | [optional] 

### Return type

[**XxDemographicInfo**](XxDemographicInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **xxDemographicInfoControllerDeleteById**
> xxDemographicInfoControllerDeleteById(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = XxDemographicInfoControllerApi();
final id = id_example; // String | 

try {
    api_instance.xxDemographicInfoControllerDeleteById(id);
} catch (e) {
    print('Exception when calling XxDemographicInfoControllerApi->xxDemographicInfoControllerDeleteById: $e\n');
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

# **xxDemographicInfoControllerFind**
> List<XxDemographicInfoWithRelations> xxDemographicInfoControllerFind(filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = XxDemographicInfoControllerApi();
final filter = ; // XxDemographicInfoFilter1 | 

try {
    final result = api_instance.xxDemographicInfoControllerFind(filter);
    print(result);
} catch (e) {
    print('Exception when calling XxDemographicInfoControllerApi->xxDemographicInfoControllerFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**XxDemographicInfoFilter1**](.md)|  | [optional] 

### Return type

[**List<XxDemographicInfoWithRelations>**](XxDemographicInfoWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **xxDemographicInfoControllerFindById**
> XxDemographicInfoWithRelations xxDemographicInfoControllerFindById(id, filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = XxDemographicInfoControllerApi();
final id = id_example; // String | 
final filter = ; // XxDemographicInfoFilter | 

try {
    final result = api_instance.xxDemographicInfoControllerFindById(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling XxDemographicInfoControllerApi->xxDemographicInfoControllerFindById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**XxDemographicInfoFilter**](.md)|  | [optional] 

### Return type

[**XxDemographicInfoWithRelations**](XxDemographicInfoWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **xxDemographicInfoControllerReplaceById**
> xxDemographicInfoControllerReplaceById(id, xxDemographicInfo)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = XxDemographicInfoControllerApi();
final id = id_example; // String | 
final xxDemographicInfo = XxDemographicInfo(); // XxDemographicInfo | 

try {
    api_instance.xxDemographicInfoControllerReplaceById(id, xxDemographicInfo);
} catch (e) {
    print('Exception when calling XxDemographicInfoControllerApi->xxDemographicInfoControllerReplaceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **xxDemographicInfo** | [**XxDemographicInfo**](XxDemographicInfo.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **xxDemographicInfoControllerUpdateAll**
> Count xxDemographicInfoControllerUpdateAll(where, xxDemographicInfoPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = XxDemographicInfoControllerApi();
final where = Object; // Map<String, Object> | 
final xxDemographicInfoPartial = [List<XxDemographicInfoPartial>()]; // List<XxDemographicInfoPartial> | 

try {
    final result = api_instance.xxDemographicInfoControllerUpdateAll(where, xxDemographicInfoPartial);
    print(result);
} catch (e) {
    print('Exception when calling XxDemographicInfoControllerApi->xxDemographicInfoControllerUpdateAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **xxDemographicInfoPartial** | [**List<XxDemographicInfoPartial>**](XxDemographicInfoPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **xxDemographicInfoControllerUpdateById**
> xxDemographicInfoControllerUpdateById(id, xxDemographicInfoPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = XxDemographicInfoControllerApi();
final id = id_example; // String | 
final xxDemographicInfoPartial = XxDemographicInfoPartial(); // XxDemographicInfoPartial | 

try {
    api_instance.xxDemographicInfoControllerUpdateById(id, xxDemographicInfoPartial);
} catch (e) {
    print('Exception when calling XxDemographicInfoControllerApi->xxDemographicInfoControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **xxDemographicInfoPartial** | [**XxDemographicInfoPartial**](XxDemographicInfoPartial.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


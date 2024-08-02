# my_api_client.api.ReviewControllerApi

## Load the API package
```dart
import 'package:my_api_client/api.dart';
```

All URIs are relative to *http://[::1]:4001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reviewControllerCount**](ReviewControllerApi.md#reviewcontrollercount) | **GET** /reviews/count | 
[**reviewControllerCreate**](ReviewControllerApi.md#reviewcontrollercreate) | **POST** /reviews | 
[**reviewControllerDeleteById**](ReviewControllerApi.md#reviewcontrollerdeletebyid) | **DELETE** /reviews/{id} | 
[**reviewControllerFind**](ReviewControllerApi.md#reviewcontrollerfind) | **GET** /reviews | 
[**reviewControllerFindById**](ReviewControllerApi.md#reviewcontrollerfindbyid) | **GET** /reviews/{id} | 
[**reviewControllerFindProvider**](ReviewControllerApi.md#reviewcontrollerfindprovider) | **GET** /reviews/{id}/provider | 
[**reviewControllerFindUser**](ReviewControllerApi.md#reviewcontrollerfinduser) | **GET** /reviews/{id}/user | 
[**reviewControllerReplaceById**](ReviewControllerApi.md#reviewcontrollerreplacebyid) | **PUT** /reviews/{id} | 
[**reviewControllerUpdateAll**](ReviewControllerApi.md#reviewcontrollerupdateall) | **PATCH** /reviews | 
[**reviewControllerUpdateById**](ReviewControllerApi.md#reviewcontrollerupdatebyid) | **PATCH** /reviews/{id} | 


# **reviewControllerCount**
> Count reviewControllerCount(where)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ReviewControllerApi();
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.reviewControllerCount(where);
    print(result);
} catch (e) {
    print('Exception when calling ReviewControllerApi->reviewControllerCount: $e\n');
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

# **reviewControllerCreate**
> Review reviewControllerCreate(newReview)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ReviewControllerApi();
final newReview = NewReview(); // NewReview | 

try {
    final result = api_instance.reviewControllerCreate(newReview);
    print(result);
} catch (e) {
    print('Exception when calling ReviewControllerApi->reviewControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newReview** | [**NewReview**](NewReview.md)|  | [optional] 

### Return type

[**Review**](Review.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewControllerDeleteById**
> reviewControllerDeleteById(id)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ReviewControllerApi();
final id = id_example; // String | 

try {
    api_instance.reviewControllerDeleteById(id);
} catch (e) {
    print('Exception when calling ReviewControllerApi->reviewControllerDeleteById: $e\n');
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

# **reviewControllerFind**
> List<ReviewWithRelations> reviewControllerFind(filter)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ReviewControllerApi();
final filter = ; // ReviewFilter | 

try {
    final result = api_instance.reviewControllerFind(filter);
    print(result);
} catch (e) {
    print('Exception when calling ReviewControllerApi->reviewControllerFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**ReviewFilter**](.md)|  | [optional] 

### Return type

[**List<ReviewWithRelations>**](ReviewWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewControllerFindById**
> ReviewWithRelations reviewControllerFindById(id, filter)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ReviewControllerApi();
final id = id_example; // String | 
final filter = ; // ReviewFilter1 | 

try {
    final result = api_instance.reviewControllerFindById(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling ReviewControllerApi->reviewControllerFindById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**ReviewFilter1**](.md)|  | [optional] 

### Return type

[**ReviewWithRelations**](ReviewWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewControllerFindProvider**
> Provider reviewControllerFindProvider(id)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ReviewControllerApi();
final id = id_example; // String | 

try {
    final result = api_instance.reviewControllerFindProvider(id);
    print(result);
} catch (e) {
    print('Exception when calling ReviewControllerApi->reviewControllerFindProvider: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Provider**](Provider.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewControllerFindUser**
> User reviewControllerFindUser(id)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ReviewControllerApi();
final id = id_example; // String | 

try {
    final result = api_instance.reviewControllerFindUser(id);
    print(result);
} catch (e) {
    print('Exception when calling ReviewControllerApi->reviewControllerFindUser: $e\n');
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

# **reviewControllerReplaceById**
> reviewControllerReplaceById(id, review)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ReviewControllerApi();
final id = id_example; // String | 
final review = Review(); // Review | 

try {
    api_instance.reviewControllerReplaceById(id, review);
} catch (e) {
    print('Exception when calling ReviewControllerApi->reviewControllerReplaceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **review** | [**Review**](Review.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewControllerUpdateAll**
> Count reviewControllerUpdateAll(where, reviewPartial)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ReviewControllerApi();
final where = Object; // Map<String, Object> | 
final reviewPartial = [List<ReviewPartial>()]; // List<ReviewPartial> | 

try {
    final result = api_instance.reviewControllerUpdateAll(where, reviewPartial);
    print(result);
} catch (e) {
    print('Exception when calling ReviewControllerApi->reviewControllerUpdateAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **reviewPartial** | [**List<ReviewPartial>**](ReviewPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewControllerUpdateById**
> reviewControllerUpdateById(id, reviewPartial)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = ReviewControllerApi();
final id = id_example; // String | 
final reviewPartial = ReviewPartial(); // ReviewPartial | 

try {
    api_instance.reviewControllerUpdateById(id, reviewPartial);
} catch (e) {
    print('Exception when calling ReviewControllerApi->reviewControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **reviewPartial** | [**ReviewPartial**](ReviewPartial.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# openapi.api.UserControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userControllerCreateBook**](UserControllerApi.md#usercontrollercreatebook) | **POST** /users/{id}/book | 
[**userControllerDeleteBook**](UserControllerApi.md#usercontrollerdeletebook) | **DELETE** /users/{id}/book | 
[**userControllerFindBooks**](UserControllerApi.md#usercontrollerfindbooks) | **GET** /users/{id}/book | 
[**userControllerPatchBook**](UserControllerApi.md#usercontrollerpatchbook) | **PATCH** /users/{id}/book | 


# **userControllerCreateBook**
> Book userControllerCreateBook(id, book)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserControllerApi();
final id = id_example; // String | 
final book = Book(); // Book | 

try {
    final result = api_instance.userControllerCreateBook(id, book);
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->userControllerCreateBook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **book** | [**Book**](Book.md)|  | [optional] 

### Return type

[**Book**](Book.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerDeleteBook**
> Count userControllerDeleteBook(id, where)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserControllerApi();
final id = id_example; // String | 
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.userControllerDeleteBook(id, where);
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->userControllerDeleteBook: $e\n');
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

# **userControllerFindBooks**
> List<BookWithRelations> userControllerFindBooks(id, filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserControllerApi();
final id = id_example; // String | 
final filter = ; // BookFilter1 | 

try {
    final result = api_instance.userControllerFindBooks(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->userControllerFindBooks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**BookFilter1**](.md)|  | [optional] 

### Return type

[**List<BookWithRelations>**](BookWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerPatchBook**
> Count userControllerPatchBook(id, where, bookPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserControllerApi();
final id = id_example; // String | 
final where = Object; // Map<String, Object> | 
final bookPartial = BookPartial(); // BookPartial | 

try {
    final result = api_instance.userControllerPatchBook(id, where, bookPartial);
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->userControllerPatchBook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **bookPartial** | [**BookPartial**](BookPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# openapi.api.ContactControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contactControllerCount**](ContactControllerApi.md#contactcontrollercount) | **GET** /contacts/count | 
[**contactControllerCreate**](ContactControllerApi.md#contactcontrollercreate) | **POST** /contacts | 
[**contactControllerDeleteById**](ContactControllerApi.md#contactcontrollerdeletebyid) | **DELETE** /contacts/{id} | 
[**contactControllerFind**](ContactControllerApi.md#contactcontrollerfind) | **GET** /contacts | 
[**contactControllerFindById**](ContactControllerApi.md#contactcontrollerfindbyid) | **GET** /contacts/{id} | 
[**contactControllerFindUser**](ContactControllerApi.md#contactcontrollerfinduser) | **GET** /contacts/{id}/user | 
[**contactControllerReplaceById**](ContactControllerApi.md#contactcontrollerreplacebyid) | **PUT** /contacts/{id} | 
[**contactControllerUpdateAll**](ContactControllerApi.md#contactcontrollerupdateall) | **PATCH** /contacts | 
[**contactControllerUpdateById**](ContactControllerApi.md#contactcontrollerupdatebyid) | **PATCH** /contacts/{id} | 


# **contactControllerCount**
> Count contactControllerCount(where)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactControllerApi();
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.contactControllerCount(where);
    print(result);
} catch (e) {
    print('Exception when calling ContactControllerApi->contactControllerCount: $e\n');
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

# **contactControllerCreate**
> Contact contactControllerCreate(newContact)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactControllerApi();
final newContact = NewContact(); // NewContact | 

try {
    final result = api_instance.contactControllerCreate(newContact);
    print(result);
} catch (e) {
    print('Exception when calling ContactControllerApi->contactControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newContact** | [**NewContact**](NewContact.md)|  | [optional] 

### Return type

[**Contact**](Contact.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contactControllerDeleteById**
> contactControllerDeleteById(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactControllerApi();
final id = id_example; // String | 

try {
    api_instance.contactControllerDeleteById(id);
} catch (e) {
    print('Exception when calling ContactControllerApi->contactControllerDeleteById: $e\n');
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

# **contactControllerFind**
> List<ContactWithRelations> contactControllerFind(filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactControllerApi();
final filter = ; // ContactFilter1 | 

try {
    final result = api_instance.contactControllerFind(filter);
    print(result);
} catch (e) {
    print('Exception when calling ContactControllerApi->contactControllerFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**ContactFilter1**](.md)|  | [optional] 

### Return type

[**List<ContactWithRelations>**](ContactWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contactControllerFindById**
> ContactWithRelations contactControllerFindById(id, filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactControllerApi();
final id = id_example; // String | 
final filter = ; // ContactFilter | 

try {
    final result = api_instance.contactControllerFindById(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling ContactControllerApi->contactControllerFindById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**ContactFilter**](.md)|  | [optional] 

### Return type

[**ContactWithRelations**](ContactWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contactControllerFindUser**
> User contactControllerFindUser(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactControllerApi();
final id = id_example; // String | 

try {
    final result = api_instance.contactControllerFindUser(id);
    print(result);
} catch (e) {
    print('Exception when calling ContactControllerApi->contactControllerFindUser: $e\n');
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

# **contactControllerReplaceById**
> contactControllerReplaceById(id, contact)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactControllerApi();
final id = id_example; // String | 
final contact = Contact(); // Contact | 

try {
    api_instance.contactControllerReplaceById(id, contact);
} catch (e) {
    print('Exception when calling ContactControllerApi->contactControllerReplaceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **contact** | [**Contact**](Contact.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contactControllerUpdateAll**
> Count contactControllerUpdateAll(where, contactPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactControllerApi();
final where = Object; // Map<String, Object> | 
final contactPartial = [List<ContactPartial>()]; // List<ContactPartial> | 

try {
    final result = api_instance.contactControllerUpdateAll(where, contactPartial);
    print(result);
} catch (e) {
    print('Exception when calling ContactControllerApi->contactControllerUpdateAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **contactPartial** | [**List<ContactPartial>**](ContactPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contactControllerUpdateById**
> contactControllerUpdateById(id, contactPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactControllerApi();
final id = id_example; // String | 
final contactPartial = ContactPartial(); // ContactPartial | 

try {
    api_instance.contactControllerUpdateById(id, contactPartial);
} catch (e) {
    print('Exception when calling ContactControllerApi->contactControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **contactPartial** | [**ContactPartial**](ContactPartial.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


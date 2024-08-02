# my_api_client.api.BookControllerApi

## Load the API package
```dart
import 'package:my_api_client/api.dart';
```

All URIs are relative to *http://[::1]:4001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bookControllerCount**](BookControllerApi.md#bookcontrollercount) | **GET** /books/count | 
[**bookControllerCreate**](BookControllerApi.md#bookcontrollercreate) | **POST** /books | 
[**bookControllerCreateSlot**](BookControllerApi.md#bookcontrollercreateslot) | **POST** /books/{id}/slot | 
[**bookControllerDeleteById**](BookControllerApi.md#bookcontrollerdeletebyid) | **DELETE** /books/{id} | 
[**bookControllerDeleteSlot**](BookControllerApi.md#bookcontrollerdeleteslot) | **DELETE** /books/{id}/slot | 
[**bookControllerFind**](BookControllerApi.md#bookcontrollerfind) | **GET** /books | 
[**bookControllerFindById**](BookControllerApi.md#bookcontrollerfindbyid) | **GET** /books/{id} | 
[**bookControllerFindSlots**](BookControllerApi.md#bookcontrollerfindslots) | **GET** /books/{id}/slot | 
[**bookControllerFindUser**](BookControllerApi.md#bookcontrollerfinduser) | **GET** /books/{id}/user | 
[**bookControllerPatchSlot**](BookControllerApi.md#bookcontrollerpatchslot) | **PATCH** /books/{id}/slot | 
[**bookControllerReplaceById**](BookControllerApi.md#bookcontrollerreplacebyid) | **PUT** /books/{id} | 
[**bookControllerUpdateAll**](BookControllerApi.md#bookcontrollerupdateall) | **PATCH** /books | 
[**bookControllerUpdateById**](BookControllerApi.md#bookcontrollerupdatebyid) | **PATCH** /books/{id} | 


# **bookControllerCount**
> Count bookControllerCount(where)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = BookControllerApi();
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.bookControllerCount(where);
    print(result);
} catch (e) {
    print('Exception when calling BookControllerApi->bookControllerCount: $e\n');
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

# **bookControllerCreate**
> Book bookControllerCreate(newBook)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = BookControllerApi();
final newBook = NewBook(); // NewBook | 

try {
    final result = api_instance.bookControllerCreate(newBook);
    print(result);
} catch (e) {
    print('Exception when calling BookControllerApi->bookControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newBook** | [**NewBook**](NewBook.md)|  | [optional] 

### Return type

[**Book**](Book.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bookControllerCreateSlot**
> Slot bookControllerCreateSlot(id, slot)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = BookControllerApi();
final id = id_example; // String | 
final slot = Slot(); // Slot | 

try {
    final result = api_instance.bookControllerCreateSlot(id, slot);
    print(result);
} catch (e) {
    print('Exception when calling BookControllerApi->bookControllerCreateSlot: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **slot** | [**Slot**](Slot.md)|  | [optional] 

### Return type

[**Slot**](Slot.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bookControllerDeleteById**
> bookControllerDeleteById(id)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = BookControllerApi();
final id = id_example; // String | 

try {
    api_instance.bookControllerDeleteById(id);
} catch (e) {
    print('Exception when calling BookControllerApi->bookControllerDeleteById: $e\n');
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

# **bookControllerDeleteSlot**
> Count bookControllerDeleteSlot(id, where)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = BookControllerApi();
final id = id_example; // String | 
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.bookControllerDeleteSlot(id, where);
    print(result);
} catch (e) {
    print('Exception when calling BookControllerApi->bookControllerDeleteSlot: $e\n');
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

# **bookControllerFind**
> List<BookWithRelations> bookControllerFind(filter)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = BookControllerApi();
final filter = ; // BookFilter1 | 

try {
    final result = api_instance.bookControllerFind(filter);
    print(result);
} catch (e) {
    print('Exception when calling BookControllerApi->bookControllerFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**BookFilter1**](.md)|  | [optional] 

### Return type

[**List<BookWithRelations>**](BookWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bookControllerFindById**
> BookWithRelations bookControllerFindById(id, filter)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = BookControllerApi();
final id = id_example; // String | 
final filter = ; // BookFilter | 

try {
    final result = api_instance.bookControllerFindById(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling BookControllerApi->bookControllerFindById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**BookFilter**](.md)|  | [optional] 

### Return type

[**BookWithRelations**](BookWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bookControllerFindSlots**
> List<SlotWithRelations> bookControllerFindSlots(id, filter)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = BookControllerApi();
final id = id_example; // String | 
final filter = ; // SlotFilter | 

try {
    final result = api_instance.bookControllerFindSlots(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling BookControllerApi->bookControllerFindSlots: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**SlotFilter**](.md)|  | [optional] 

### Return type

[**List<SlotWithRelations>**](SlotWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bookControllerFindUser**
> User bookControllerFindUser(id)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = BookControllerApi();
final id = id_example; // String | 

try {
    final result = api_instance.bookControllerFindUser(id);
    print(result);
} catch (e) {
    print('Exception when calling BookControllerApi->bookControllerFindUser: $e\n');
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

# **bookControllerPatchSlot**
> Count bookControllerPatchSlot(id, where, slotPartial)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = BookControllerApi();
final id = id_example; // String | 
final where = Object; // Map<String, Object> | 
final slotPartial = SlotPartial(); // SlotPartial | 

try {
    final result = api_instance.bookControllerPatchSlot(id, where, slotPartial);
    print(result);
} catch (e) {
    print('Exception when calling BookControllerApi->bookControllerPatchSlot: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **slotPartial** | [**SlotPartial**](SlotPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bookControllerReplaceById**
> bookControllerReplaceById(id, book)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = BookControllerApi();
final id = id_example; // String | 
final book = Book(); // Book | 

try {
    api_instance.bookControllerReplaceById(id, book);
} catch (e) {
    print('Exception when calling BookControllerApi->bookControllerReplaceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **book** | [**Book**](Book.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bookControllerUpdateAll**
> Count bookControllerUpdateAll(where, bookPartial)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = BookControllerApi();
final where = Object; // Map<String, Object> | 
final bookPartial = [List<BookPartial>()]; // List<BookPartial> | 

try {
    final result = api_instance.bookControllerUpdateAll(where, bookPartial);
    print(result);
} catch (e) {
    print('Exception when calling BookControllerApi->bookControllerUpdateAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **bookPartial** | [**List<BookPartial>**](BookPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bookControllerUpdateById**
> bookControllerUpdateById(id, bookPartial)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = BookControllerApi();
final id = id_example; // String | 
final bookPartial = BookPartial(); // BookPartial | 

try {
    api_instance.bookControllerUpdateById(id, bookPartial);
} catch (e) {
    print('Exception when calling BookControllerApi->bookControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **bookPartial** | [**BookPartial**](BookPartial.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# openapi.api.SearchControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**searchControllerCount**](SearchControllerApi.md#searchcontrollercount) | **GET** /searches/count | 
[**searchControllerCreate**](SearchControllerApi.md#searchcontrollercreate) | **POST** /searches | 
[**searchControllerCreateSlot**](SearchControllerApi.md#searchcontrollercreateslot) | **POST** /searches/{id}/slot | 
[**searchControllerDeleteById**](SearchControllerApi.md#searchcontrollerdeletebyid) | **DELETE** /searches/{id} | 
[**searchControllerDeleteSlot**](SearchControllerApi.md#searchcontrollerdeleteslot) | **DELETE** /searches/{id}/slot | 
[**searchControllerFind**](SearchControllerApi.md#searchcontrollerfind) | **GET** /searches | 
[**searchControllerFindById**](SearchControllerApi.md#searchcontrollerfindbyid) | **GET** /searches/{id} | 
[**searchControllerFindSlots**](SearchControllerApi.md#searchcontrollerfindslots) | **GET** /searches/{id}/slot | 
[**searchControllerPatchSlot**](SearchControllerApi.md#searchcontrollerpatchslot) | **PATCH** /searches/{id}/slot | 
[**searchControllerReplaceById**](SearchControllerApi.md#searchcontrollerreplacebyid) | **PUT** /searches/{id} | 
[**searchControllerUpdateAll**](SearchControllerApi.md#searchcontrollerupdateall) | **PATCH** /searches | 
[**searchControllerUpdateById**](SearchControllerApi.md#searchcontrollerupdatebyid) | **PATCH** /searches/{id} | 


# **searchControllerCount**
> Count searchControllerCount(where)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SearchControllerApi();
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.searchControllerCount(where);
    print(result);
} catch (e) {
    print('Exception when calling SearchControllerApi->searchControllerCount: $e\n');
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

# **searchControllerCreate**
> Search searchControllerCreate(newSearch)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SearchControllerApi();
final newSearch = NewSearch(); // NewSearch | 

try {
    final result = api_instance.searchControllerCreate(newSearch);
    print(result);
} catch (e) {
    print('Exception when calling SearchControllerApi->searchControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newSearch** | [**NewSearch**](NewSearch.md)|  | [optional] 

### Return type

[**Search**](Search.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchControllerCreateSlot**
> Slot searchControllerCreateSlot(id, slot)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SearchControllerApi();
final id = id_example; // String | 
final slot = Slot(); // Slot | 

try {
    final result = api_instance.searchControllerCreateSlot(id, slot);
    print(result);
} catch (e) {
    print('Exception when calling SearchControllerApi->searchControllerCreateSlot: $e\n');
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

# **searchControllerDeleteById**
> searchControllerDeleteById(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SearchControllerApi();
final id = id_example; // String | 

try {
    api_instance.searchControllerDeleteById(id);
} catch (e) {
    print('Exception when calling SearchControllerApi->searchControllerDeleteById: $e\n');
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

# **searchControllerDeleteSlot**
> Count searchControllerDeleteSlot(id, where)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SearchControllerApi();
final id = id_example; // String | 
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.searchControllerDeleteSlot(id, where);
    print(result);
} catch (e) {
    print('Exception when calling SearchControllerApi->searchControllerDeleteSlot: $e\n');
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

# **searchControllerFind**
> List<SearchWithRelations> searchControllerFind(filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SearchControllerApi();
final filter = ; // SearchFilter1 | 

try {
    final result = api_instance.searchControllerFind(filter);
    print(result);
} catch (e) {
    print('Exception when calling SearchControllerApi->searchControllerFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**SearchFilter1**](.md)|  | [optional] 

### Return type

[**List<SearchWithRelations>**](SearchWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchControllerFindById**
> SearchWithRelations searchControllerFindById(id, filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SearchControllerApi();
final id = id_example; // String | 
final filter = ; // SearchFilter | 

try {
    final result = api_instance.searchControllerFindById(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling SearchControllerApi->searchControllerFindById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**SearchFilter**](.md)|  | [optional] 

### Return type

[**SearchWithRelations**](SearchWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchControllerFindSlots**
> List<SlotWithRelations> searchControllerFindSlots(id, filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SearchControllerApi();
final id = id_example; // String | 
final filter = ; // SlotFilter | 

try {
    final result = api_instance.searchControllerFindSlots(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling SearchControllerApi->searchControllerFindSlots: $e\n');
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

# **searchControllerPatchSlot**
> Count searchControllerPatchSlot(id, where, slotPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SearchControllerApi();
final id = id_example; // String | 
final where = Object; // Map<String, Object> | 
final slotPartial = SlotPartial(); // SlotPartial | 

try {
    final result = api_instance.searchControllerPatchSlot(id, where, slotPartial);
    print(result);
} catch (e) {
    print('Exception when calling SearchControllerApi->searchControllerPatchSlot: $e\n');
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

# **searchControllerReplaceById**
> searchControllerReplaceById(id, search)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SearchControllerApi();
final id = id_example; // String | 
final search = Search(); // Search | 

try {
    api_instance.searchControllerReplaceById(id, search);
} catch (e) {
    print('Exception when calling SearchControllerApi->searchControllerReplaceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **search** | [**Search**](Search.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchControllerUpdateAll**
> Count searchControllerUpdateAll(where, searchPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SearchControllerApi();
final where = Object; // Map<String, Object> | 
final searchPartial = [List<SearchPartial>()]; // List<SearchPartial> | 

try {
    final result = api_instance.searchControllerUpdateAll(where, searchPartial);
    print(result);
} catch (e) {
    print('Exception when calling SearchControllerApi->searchControllerUpdateAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **searchPartial** | [**List<SearchPartial>**](SearchPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchControllerUpdateById**
> searchControllerUpdateById(id, searchPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SearchControllerApi();
final id = id_example; // String | 
final searchPartial = SearchPartial(); // SearchPartial | 

try {
    api_instance.searchControllerUpdateById(id, searchPartial);
} catch (e) {
    print('Exception when calling SearchControllerApi->searchControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **searchPartial** | [**SearchPartial**](SearchPartial.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


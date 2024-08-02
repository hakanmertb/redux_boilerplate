# my_api_client.api.SlotControllerApi

## Load the API package
```dart
import 'package:my_api_client/api.dart';
```

All URIs are relative to *http://[::1]:4001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**slotControllerCount**](SlotControllerApi.md#slotcontrollercount) | **GET** /slots/count | 
[**slotControllerCreate**](SlotControllerApi.md#slotcontrollercreate) | **POST** /slots | 
[**slotControllerDeleteById**](SlotControllerApi.md#slotcontrollerdeletebyid) | **DELETE** /slots/{id} | 
[**slotControllerFind**](SlotControllerApi.md#slotcontrollerfind) | **GET** /slots | 
[**slotControllerFindBook**](SlotControllerApi.md#slotcontrollerfindbook) | **GET** /slots/{id}/book | 
[**slotControllerFindById**](SlotControllerApi.md#slotcontrollerfindbyid) | **GET** /slots/{id} | 
[**slotControllerFindProvider**](SlotControllerApi.md#slotcontrollerfindprovider) | **GET** /slots/{id}/provider | 
[**slotControllerFindSearch**](SlotControllerApi.md#slotcontrollerfindsearch) | **GET** /slots/{id}/search | 
[**slotControllerReplaceById**](SlotControllerApi.md#slotcontrollerreplacebyid) | **PUT** /slots/{id} | 
[**slotControllerUpdateAll**](SlotControllerApi.md#slotcontrollerupdateall) | **PATCH** /slots | 
[**slotControllerUpdateById**](SlotControllerApi.md#slotcontrollerupdatebyid) | **PATCH** /slots/{id} | 


# **slotControllerCount**
> Count slotControllerCount(where)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = SlotControllerApi();
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.slotControllerCount(where);
    print(result);
} catch (e) {
    print('Exception when calling SlotControllerApi->slotControllerCount: $e\n');
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

# **slotControllerCreate**
> Slot slotControllerCreate(newSlot)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = SlotControllerApi();
final newSlot = NewSlot(); // NewSlot | 

try {
    final result = api_instance.slotControllerCreate(newSlot);
    print(result);
} catch (e) {
    print('Exception when calling SlotControllerApi->slotControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newSlot** | [**NewSlot**](NewSlot.md)|  | [optional] 

### Return type

[**Slot**](Slot.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **slotControllerDeleteById**
> slotControllerDeleteById(id)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = SlotControllerApi();
final id = id_example; // String | 

try {
    api_instance.slotControllerDeleteById(id);
} catch (e) {
    print('Exception when calling SlotControllerApi->slotControllerDeleteById: $e\n');
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

# **slotControllerFind**
> List<SlotWithRelations> slotControllerFind(filter)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = SlotControllerApi();
final filter = ; // SlotFilter | 

try {
    final result = api_instance.slotControllerFind(filter);
    print(result);
} catch (e) {
    print('Exception when calling SlotControllerApi->slotControllerFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**SlotFilter**](.md)|  | [optional] 

### Return type

[**List<SlotWithRelations>**](SlotWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **slotControllerFindBook**
> Book slotControllerFindBook(id)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = SlotControllerApi();
final id = id_example; // String | 

try {
    final result = api_instance.slotControllerFindBook(id);
    print(result);
} catch (e) {
    print('Exception when calling SlotControllerApi->slotControllerFindBook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Book**](Book.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **slotControllerFindById**
> SlotWithRelations slotControllerFindById(id, filter)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = SlotControllerApi();
final id = id_example; // String | 
final filter = ; // SlotFilter1 | 

try {
    final result = api_instance.slotControllerFindById(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling SlotControllerApi->slotControllerFindById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**SlotFilter1**](.md)|  | [optional] 

### Return type

[**SlotWithRelations**](SlotWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **slotControllerFindProvider**
> Provider slotControllerFindProvider(id)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = SlotControllerApi();
final id = id_example; // String | 

try {
    final result = api_instance.slotControllerFindProvider(id);
    print(result);
} catch (e) {
    print('Exception when calling SlotControllerApi->slotControllerFindProvider: $e\n');
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

# **slotControllerFindSearch**
> Search slotControllerFindSearch(id)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = SlotControllerApi();
final id = id_example; // String | 

try {
    final result = api_instance.slotControllerFindSearch(id);
    print(result);
} catch (e) {
    print('Exception when calling SlotControllerApi->slotControllerFindSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Search**](Search.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **slotControllerReplaceById**
> slotControllerReplaceById(id, slot)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = SlotControllerApi();
final id = id_example; // String | 
final slot = Slot(); // Slot | 

try {
    api_instance.slotControllerReplaceById(id, slot);
} catch (e) {
    print('Exception when calling SlotControllerApi->slotControllerReplaceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **slot** | [**Slot**](Slot.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **slotControllerUpdateAll**
> Count slotControllerUpdateAll(where, slotPartial)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = SlotControllerApi();
final where = Object; // Map<String, Object> | 
final slotPartial = [List<SlotPartial>()]; // List<SlotPartial> | 

try {
    final result = api_instance.slotControllerUpdateAll(where, slotPartial);
    print(result);
} catch (e) {
    print('Exception when calling SlotControllerApi->slotControllerUpdateAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **slotPartial** | [**List<SlotPartial>**](SlotPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **slotControllerUpdateById**
> slotControllerUpdateById(id, slotPartial)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = SlotControllerApi();
final id = id_example; // String | 
final slotPartial = SlotPartial(); // SlotPartial | 

try {
    api_instance.slotControllerUpdateById(id, slotPartial);
} catch (e) {
    print('Exception when calling SlotControllerApi->slotControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **slotPartial** | [**SlotPartial**](SlotPartial.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


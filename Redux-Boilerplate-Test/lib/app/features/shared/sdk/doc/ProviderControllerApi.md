# openapi.api.ProviderControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**providerControllerCount**](ProviderControllerApi.md#providercontrollercount) | **GET** /providers/count | 
[**providerControllerCreate**](ProviderControllerApi.md#providercontrollercreate) | **POST** /providers | 
[**providerControllerCreateReview**](ProviderControllerApi.md#providercontrollercreatereview) | **POST** /providers/{id}/review | 
[**providerControllerCreateSlot**](ProviderControllerApi.md#providercontrollercreateslot) | **POST** /providers/{id}/slot | 
[**providerControllerDeleteById**](ProviderControllerApi.md#providercontrollerdeletebyid) | **DELETE** /providers/{id} | 
[**providerControllerDeleteReview**](ProviderControllerApi.md#providercontrollerdeletereview) | **DELETE** /providers/{id}/review | 
[**providerControllerDeleteSlot**](ProviderControllerApi.md#providercontrollerdeleteslot) | **DELETE** /providers/{id}/slot | 
[**providerControllerFind**](ProviderControllerApi.md#providercontrollerfind) | **GET** /providers | 
[**providerControllerFindById**](ProviderControllerApi.md#providercontrollerfindbyid) | **GET** /providers/{id} | 
[**providerControllerFindReviews**](ProviderControllerApi.md#providercontrollerfindreviews) | **GET** /providers/{id}/review | 
[**providerControllerFindSlots**](ProviderControllerApi.md#providercontrollerfindslots) | **GET** /providers/{id}/slot | 
[**providerControllerPatchReview**](ProviderControllerApi.md#providercontrollerpatchreview) | **PATCH** /providers/{id}/review | 
[**providerControllerPatchSlot**](ProviderControllerApi.md#providercontrollerpatchslot) | **PATCH** /providers/{id}/slot | 
[**providerControllerReplaceById**](ProviderControllerApi.md#providercontrollerreplacebyid) | **PUT** /providers/{id} | 
[**providerControllerUpdateAll**](ProviderControllerApi.md#providercontrollerupdateall) | **PATCH** /providers | 
[**providerControllerUpdateById**](ProviderControllerApi.md#providercontrollerupdatebyid) | **PATCH** /providers/{id} | 


# **providerControllerCount**
> Count providerControllerCount(where)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ProviderControllerApi();
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.providerControllerCount(where);
    print(result);
} catch (e) {
    print('Exception when calling ProviderControllerApi->providerControllerCount: $e\n');
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

# **providerControllerCreate**
> Provider providerControllerCreate(newProvider)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ProviderControllerApi();
final newProvider = NewProvider(); // NewProvider | 

try {
    final result = api_instance.providerControllerCreate(newProvider);
    print(result);
} catch (e) {
    print('Exception when calling ProviderControllerApi->providerControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newProvider** | [**NewProvider**](NewProvider.md)|  | [optional] 

### Return type

[**Provider**](Provider.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **providerControllerCreateReview**
> Review providerControllerCreateReview(id, review)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ProviderControllerApi();
final id = id_example; // String | 
final review = Review(); // Review | 

try {
    final result = api_instance.providerControllerCreateReview(id, review);
    print(result);
} catch (e) {
    print('Exception when calling ProviderControllerApi->providerControllerCreateReview: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **review** | [**Review**](Review.md)|  | [optional] 

### Return type

[**Review**](Review.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **providerControllerCreateSlot**
> Slot providerControllerCreateSlot(id, slot)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ProviderControllerApi();
final id = id_example; // String | 
final slot = Slot(); // Slot | 

try {
    final result = api_instance.providerControllerCreateSlot(id, slot);
    print(result);
} catch (e) {
    print('Exception when calling ProviderControllerApi->providerControllerCreateSlot: $e\n');
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

# **providerControllerDeleteById**
> providerControllerDeleteById(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ProviderControllerApi();
final id = id_example; // String | 

try {
    api_instance.providerControllerDeleteById(id);
} catch (e) {
    print('Exception when calling ProviderControllerApi->providerControllerDeleteById: $e\n');
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

# **providerControllerDeleteReview**
> Count providerControllerDeleteReview(id, where)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ProviderControllerApi();
final id = id_example; // String | 
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.providerControllerDeleteReview(id, where);
    print(result);
} catch (e) {
    print('Exception when calling ProviderControllerApi->providerControllerDeleteReview: $e\n');
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

# **providerControllerDeleteSlot**
> Count providerControllerDeleteSlot(id, where)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ProviderControllerApi();
final id = id_example; // String | 
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.providerControllerDeleteSlot(id, where);
    print(result);
} catch (e) {
    print('Exception when calling ProviderControllerApi->providerControllerDeleteSlot: $e\n');
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

# **providerControllerFind**
> List<ProviderWithRelations> providerControllerFind(filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ProviderControllerApi();
final filter = ; // ProviderFilter1 | 

try {
    final result = api_instance.providerControllerFind(filter);
    print(result);
} catch (e) {
    print('Exception when calling ProviderControllerApi->providerControllerFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**ProviderFilter1**](.md)|  | [optional] 

### Return type

[**List<ProviderWithRelations>**](ProviderWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **providerControllerFindById**
> ProviderWithRelations providerControllerFindById(id, filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ProviderControllerApi();
final id = id_example; // String | 
final filter = ; // ProviderFilter | 

try {
    final result = api_instance.providerControllerFindById(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling ProviderControllerApi->providerControllerFindById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**ProviderFilter**](.md)|  | [optional] 

### Return type

[**ProviderWithRelations**](ProviderWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **providerControllerFindReviews**
> List<ReviewWithRelations> providerControllerFindReviews(id, filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ProviderControllerApi();
final id = id_example; // String | 
final filter = ; // ReviewFilter | 

try {
    final result = api_instance.providerControllerFindReviews(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling ProviderControllerApi->providerControllerFindReviews: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**ReviewFilter**](.md)|  | [optional] 

### Return type

[**List<ReviewWithRelations>**](ReviewWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **providerControllerFindSlots**
> List<SlotWithRelations> providerControllerFindSlots(id, filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ProviderControllerApi();
final id = id_example; // String | 
final filter = ; // SlotFilter | 

try {
    final result = api_instance.providerControllerFindSlots(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling ProviderControllerApi->providerControllerFindSlots: $e\n');
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

# **providerControllerPatchReview**
> Count providerControllerPatchReview(id, where, reviewPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ProviderControllerApi();
final id = id_example; // String | 
final where = Object; // Map<String, Object> | 
final reviewPartial = ReviewPartial(); // ReviewPartial | 

try {
    final result = api_instance.providerControllerPatchReview(id, where, reviewPartial);
    print(result);
} catch (e) {
    print('Exception when calling ProviderControllerApi->providerControllerPatchReview: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **reviewPartial** | [**ReviewPartial**](ReviewPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **providerControllerPatchSlot**
> Count providerControllerPatchSlot(id, where, slotPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ProviderControllerApi();
final id = id_example; // String | 
final where = Object; // Map<String, Object> | 
final slotPartial = SlotPartial(); // SlotPartial | 

try {
    final result = api_instance.providerControllerPatchSlot(id, where, slotPartial);
    print(result);
} catch (e) {
    print('Exception when calling ProviderControllerApi->providerControllerPatchSlot: $e\n');
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

# **providerControllerReplaceById**
> providerControllerReplaceById(id, provider)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ProviderControllerApi();
final id = id_example; // String | 
final provider = Provider(); // Provider | 

try {
    api_instance.providerControllerReplaceById(id, provider);
} catch (e) {
    print('Exception when calling ProviderControllerApi->providerControllerReplaceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **provider** | [**Provider**](Provider.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **providerControllerUpdateAll**
> Count providerControllerUpdateAll(where, providerPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ProviderControllerApi();
final where = Object; // Map<String, Object> | 
final providerPartial = [List<ProviderPartial>()]; // List<ProviderPartial> | 

try {
    final result = api_instance.providerControllerUpdateAll(where, providerPartial);
    print(result);
} catch (e) {
    print('Exception when calling ProviderControllerApi->providerControllerUpdateAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **providerPartial** | [**List<ProviderPartial>**](ProviderPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **providerControllerUpdateById**
> providerControllerUpdateById(id, providerPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ProviderControllerApi();
final id = id_example; // String | 
final providerPartial = ProviderPartial(); // ProviderPartial | 

try {
    api_instance.providerControllerUpdateById(id, providerPartial);
} catch (e) {
    print('Exception when calling ProviderControllerApi->providerControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **providerPartial** | [**ProviderPartial**](ProviderPartial.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


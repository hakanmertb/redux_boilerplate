# openapi.api.FaqControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**faqControllerCount**](FaqControllerApi.md#faqcontrollercount) | **GET** /faqs/count | 
[**faqControllerCreate**](FaqControllerApi.md#faqcontrollercreate) | **POST** /faqs | 
[**faqControllerDeleteById**](FaqControllerApi.md#faqcontrollerdeletebyid) | **DELETE** /faqs/{id} | 
[**faqControllerFind**](FaqControllerApi.md#faqcontrollerfind) | **GET** /faqs | 
[**faqControllerFindById**](FaqControllerApi.md#faqcontrollerfindbyid) | **GET** /faqs/{id} | 
[**faqControllerReplaceById**](FaqControllerApi.md#faqcontrollerreplacebyid) | **PUT** /faqs/{id} | 
[**faqControllerUpdateAll**](FaqControllerApi.md#faqcontrollerupdateall) | **PATCH** /faqs | 
[**faqControllerUpdateById**](FaqControllerApi.md#faqcontrollerupdatebyid) | **PATCH** /faqs/{id} | 


# **faqControllerCount**
> Count faqControllerCount(where)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = FaqControllerApi();
final where = Object; // Map<String, Object> | 

try {
    final result = api_instance.faqControllerCount(where);
    print(result);
} catch (e) {
    print('Exception when calling FaqControllerApi->faqControllerCount: $e\n');
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

# **faqControllerCreate**
> Faq faqControllerCreate(newFaq)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = FaqControllerApi();
final newFaq = NewFaq(); // NewFaq | 

try {
    final result = api_instance.faqControllerCreate(newFaq);
    print(result);
} catch (e) {
    print('Exception when calling FaqControllerApi->faqControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newFaq** | [**NewFaq**](NewFaq.md)|  | [optional] 

### Return type

[**Faq**](Faq.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **faqControllerDeleteById**
> faqControllerDeleteById(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = FaqControllerApi();
final id = id_example; // String | 

try {
    api_instance.faqControllerDeleteById(id);
} catch (e) {
    print('Exception when calling FaqControllerApi->faqControllerDeleteById: $e\n');
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

# **faqControllerFind**
> List<FaqWithRelations> faqControllerFind(filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = FaqControllerApi();
final filter = ; // FaqFilter1 | 

try {
    final result = api_instance.faqControllerFind(filter);
    print(result);
} catch (e) {
    print('Exception when calling FaqControllerApi->faqControllerFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**FaqFilter1**](.md)|  | [optional] 

### Return type

[**List<FaqWithRelations>**](FaqWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **faqControllerFindById**
> FaqWithRelations faqControllerFindById(id, filter)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = FaqControllerApi();
final id = id_example; // String | 
final filter = ; // FaqFilter | 

try {
    final result = api_instance.faqControllerFindById(id, filter);
    print(result);
} catch (e) {
    print('Exception when calling FaqControllerApi->faqControllerFindById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **filter** | [**FaqFilter**](.md)|  | [optional] 

### Return type

[**FaqWithRelations**](FaqWithRelations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **faqControllerReplaceById**
> faqControllerReplaceById(id, faq)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = FaqControllerApi();
final id = id_example; // String | 
final faq = Faq(); // Faq | 

try {
    api_instance.faqControllerReplaceById(id, faq);
} catch (e) {
    print('Exception when calling FaqControllerApi->faqControllerReplaceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **faq** | [**Faq**](Faq.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **faqControllerUpdateAll**
> Count faqControllerUpdateAll(where, faqPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = FaqControllerApi();
final where = Object; // Map<String, Object> | 
final faqPartial = [List<FaqPartial>()]; // List<FaqPartial> | 

try {
    final result = api_instance.faqControllerUpdateAll(where, faqPartial);
    print(result);
} catch (e) {
    print('Exception when calling FaqControllerApi->faqControllerUpdateAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**Map<String, Object>**](Object.md)|  | [optional] [default to const {}]
 **faqPartial** | [**List<FaqPartial>**](FaqPartial.md)|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **faqControllerUpdateById**
> faqControllerUpdateById(id, faqPartial)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = FaqControllerApi();
final id = id_example; // String | 
final faqPartial = FaqPartial(); // FaqPartial | 

try {
    api_instance.faqControllerUpdateById(id, faqPartial);
} catch (e) {
    print('Exception when calling FaqControllerApi->faqControllerUpdateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **faqPartial** | [**FaqPartial**](FaqPartial.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


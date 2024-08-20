# openapi.api.MessageTemplateManagementControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**messageTemplateManagementControllerFindMessageTemplateByKey**](MessageTemplateManagementControllerApi.md#messagetemplatemanagementcontrollerfindmessagetemplatebykey) | **GET** /message-templates/template/{key} | 


# **messageTemplateManagementControllerFindMessageTemplateByKey**
> messageTemplateManagementControllerFindMessageTemplateByKey(key)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = MessageTemplateManagementControllerApi();
final key = key_example; // String | 

try {
    api_instance.messageTemplateManagementControllerFindMessageTemplateByKey(key);
} catch (e) {
    print('Exception when calling MessageTemplateManagementControllerApi->messageTemplateManagementControllerFindMessageTemplateByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


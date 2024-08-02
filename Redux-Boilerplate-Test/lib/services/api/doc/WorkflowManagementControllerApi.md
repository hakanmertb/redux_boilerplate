# my_api_client.api.WorkflowManagementControllerApi

## Load the API package
```dart
import 'package:my_api_client/api.dart';
```

All URIs are relative to *http://[::1]:4001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**workflowManagementControllerRunEvent**](WorkflowManagementControllerApi.md#workflowmanagementcontrollerrunevent) | **POST** /workflow-management/workflow-events/run | 
[**workflowManagementControllerRunServiceSync**](WorkflowManagementControllerApi.md#workflowmanagementcontrollerrunservicesync) | **POST** /workflow-management/workflow-step-function-services/run-sync | 
[**workflowManagementControllerRunStepFunctionAsync**](WorkflowManagementControllerApi.md#workflowmanagementcontrollerrunstepfunctionasync) | **POST** /workflow-management/workflow-step-functions/run-async | 
[**workflowManagementControllerRunStepFunctionSync**](WorkflowManagementControllerApi.md#workflowmanagementcontrollerrunstepfunctionsync) | **POST** /workflow-management/workflow-step-functions/run-sync | 


# **workflowManagementControllerRunEvent**
> workflowManagementControllerRunEvent(runEventRequestDTO)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = WorkflowManagementControllerApi();
final runEventRequestDTO = RunEventRequestDTO(); // RunEventRequestDTO | 

try {
    api_instance.workflowManagementControllerRunEvent(runEventRequestDTO);
} catch (e) {
    print('Exception when calling WorkflowManagementControllerApi->workflowManagementControllerRunEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runEventRequestDTO** | [**RunEventRequestDTO**](RunEventRequestDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workflowManagementControllerRunServiceSync**
> Any workflowManagementControllerRunServiceSync(runServiceRequestDTO)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = WorkflowManagementControllerApi();
final runServiceRequestDTO = RunServiceRequestDTO(); // RunServiceRequestDTO | 

try {
    final result = api_instance.workflowManagementControllerRunServiceSync(runServiceRequestDTO);
    print(result);
} catch (e) {
    print('Exception when calling WorkflowManagementControllerApi->workflowManagementControllerRunServiceSync: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runServiceRequestDTO** | [**RunServiceRequestDTO**](RunServiceRequestDTO.md)|  | [optional] 

### Return type

[**Any**](Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workflowManagementControllerRunStepFunctionAsync**
> workflowManagementControllerRunStepFunctionAsync(runStepFunctionRequestDTO)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = WorkflowManagementControllerApi();
final runStepFunctionRequestDTO = RunStepFunctionRequestDTO(); // RunStepFunctionRequestDTO | 

try {
    api_instance.workflowManagementControllerRunStepFunctionAsync(runStepFunctionRequestDTO);
} catch (e) {
    print('Exception when calling WorkflowManagementControllerApi->workflowManagementControllerRunStepFunctionAsync: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runStepFunctionRequestDTO** | [**RunStepFunctionRequestDTO**](RunStepFunctionRequestDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workflowManagementControllerRunStepFunctionSync**
> Any workflowManagementControllerRunStepFunctionSync(runStepFunctionRequestDTO)



### Example
```dart
import 'package:my_api_client/api.dart';

final api_instance = WorkflowManagementControllerApi();
final runStepFunctionRequestDTO = RunStepFunctionRequestDTO(); // RunStepFunctionRequestDTO | 

try {
    final result = api_instance.workflowManagementControllerRunStepFunctionSync(runStepFunctionRequestDTO);
    print(result);
} catch (e) {
    print('Exception when calling WorkflowManagementControllerApi->workflowManagementControllerRunStepFunctionSync: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runStepFunctionRequestDTO** | [**RunStepFunctionRequestDTO**](RunStepFunctionRequestDTO.md)|  | [optional] 

### Return type

[**Any**](Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


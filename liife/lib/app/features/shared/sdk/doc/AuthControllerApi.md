# openapi.api.AuthControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://b713a217-f664-43a7-a6f6-fad732f4daa6.api.rappider.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authControllerGetUserByToken**](AuthControllerApi.md#authcontrollergetuserbytoken) | **GET** /auth/get-user-by-token | 
[**authControllerLogin**](AuthControllerApi.md#authcontrollerlogin) | **POST** /auth/login | 
[**authControllerLoginOrRegisterByDescopeRefreshToken**](AuthControllerApi.md#authcontrollerloginorregisterbydescoperefreshtoken) | **GET** /auth/descope/login-or-register/{refreshToken} | 
[**authControllerRegister**](AuthControllerApi.md#authcontrollerregister) | **POST** /auth/register | 


# **authControllerGetUserByToken**
> User authControllerGetUserByToken()



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AuthControllerApi();

try {
    final result = api_instance.authControllerGetUserByToken();
    print(result);
} catch (e) {
    print('Exception when calling AuthControllerApi->authControllerGetUserByToken: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerLogin**
> TokenDTO authControllerLogin(credentials)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AuthControllerApi();
final credentials = Credentials(); // Credentials | The input of login function

try {
    final result = api_instance.authControllerLogin(credentials);
    print(result);
} catch (e) {
    print('Exception when calling AuthControllerApi->authControllerLogin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentials** | [**Credentials**](Credentials.md)| The input of login function | 

### Return type

[**TokenDTO**](TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerLoginOrRegisterByDescopeRefreshToken**
> TokenDTO authControllerLoginOrRegisterByDescopeRefreshToken(refreshToken)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AuthControllerApi();
final refreshToken = refreshToken_example; // String | 

try {
    final result = api_instance.authControllerLoginOrRegisterByDescopeRefreshToken(refreshToken);
    print(result);
} catch (e) {
    print('Exception when calling AuthControllerApi->authControllerLoginOrRegisterByDescopeRefreshToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshToken** | **String**|  | 

### Return type

[**TokenDTO**](TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerRegister**
> TokenDTO authControllerRegister(registerDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AuthControllerApi();
final registerDTO = RegisterDTO(); // RegisterDTO | 

try {
    final result = api_instance.authControllerRegister(registerDTO);
    print(result);
} catch (e) {
    print('Exception when calling AuthControllerApi->authControllerRegister: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registerDTO** | [**RegisterDTO**](RegisterDTO.md)|  | [optional] 

### Return type

[**TokenDTO**](TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


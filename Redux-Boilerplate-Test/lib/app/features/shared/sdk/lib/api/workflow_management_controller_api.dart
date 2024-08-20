//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class WorkflowManagementControllerApi {
  WorkflowManagementControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /workflow-management/workflow-events/run' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RunEventRequestDTO] runEventRequestDTO:
  Future<Response> workflowManagementControllerRunEventWithHttpInfo({ RunEventRequestDTO? runEventRequestDTO, }) async {
    // ignore: prefer_const_declarations
    final path = r'/workflow-management/workflow-events/run';

    // ignore: prefer_final_locals
    Object? postBody = runEventRequestDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [RunEventRequestDTO] runEventRequestDTO:
  Future<void> workflowManagementControllerRunEvent({ RunEventRequestDTO? runEventRequestDTO, }) async {
    final response = await workflowManagementControllerRunEventWithHttpInfo( runEventRequestDTO: runEventRequestDTO, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /workflow-management/workflow-step-function-services/run-sync' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RunServiceRequestDTO] runServiceRequestDTO:
  Future<Response> workflowManagementControllerRunServiceSyncWithHttpInfo({ RunServiceRequestDTO? runServiceRequestDTO, }) async {
    // ignore: prefer_const_declarations
    final path = r'/workflow-management/workflow-step-function-services/run-sync';

    // ignore: prefer_final_locals
    Object? postBody = runServiceRequestDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [RunServiceRequestDTO] runServiceRequestDTO:
  Future<Any?> workflowManagementControllerRunServiceSync({ RunServiceRequestDTO? runServiceRequestDTO, }) async {
    final response = await workflowManagementControllerRunServiceSyncWithHttpInfo( runServiceRequestDTO: runServiceRequestDTO, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Any',) as Any;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /workflow-management/workflow-step-functions/run-async' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RunStepFunctionRequestDTO] runStepFunctionRequestDTO:
  Future<Response> workflowManagementControllerRunStepFunctionAsyncWithHttpInfo({ RunStepFunctionRequestDTO? runStepFunctionRequestDTO, }) async {
    // ignore: prefer_const_declarations
    final path = r'/workflow-management/workflow-step-functions/run-async';

    // ignore: prefer_final_locals
    Object? postBody = runStepFunctionRequestDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [RunStepFunctionRequestDTO] runStepFunctionRequestDTO:
  Future<void> workflowManagementControllerRunStepFunctionAsync({ RunStepFunctionRequestDTO? runStepFunctionRequestDTO, }) async {
    final response = await workflowManagementControllerRunStepFunctionAsyncWithHttpInfo( runStepFunctionRequestDTO: runStepFunctionRequestDTO, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /workflow-management/workflow-step-functions/run-sync' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RunStepFunctionRequestDTO] runStepFunctionRequestDTO:
  Future<Response> workflowManagementControllerRunStepFunctionSyncWithHttpInfo({ RunStepFunctionRequestDTO? runStepFunctionRequestDTO, }) async {
    // ignore: prefer_const_declarations
    final path = r'/workflow-management/workflow-step-functions/run-sync';

    // ignore: prefer_final_locals
    Object? postBody = runStepFunctionRequestDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [RunStepFunctionRequestDTO] runStepFunctionRequestDTO:
  Future<Any?> workflowManagementControllerRunStepFunctionSync({ RunStepFunctionRequestDTO? runStepFunctionRequestDTO, }) async {
    final response = await workflowManagementControllerRunStepFunctionSyncWithHttpInfo( runStepFunctionRequestDTO: runStepFunctionRequestDTO, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Any',) as Any;
    
    }
    return null;
  }
}

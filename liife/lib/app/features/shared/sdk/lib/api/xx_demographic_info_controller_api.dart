//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class XxDemographicInfoControllerApi {
  XxDemographicInfoControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /xx-demographic-infos/count' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Map<String, Object>] where:
  Future<Response> xxDemographicInfoControllerCountWithHttpInfo({ Map<String, Object>? where, }) async {
    // ignore: prefer_const_declarations
    final path = r'/xx-demographic-infos/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (where != null) {
      queryParams.addAll(_queryParams('', 'where', where));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [Map<String, Object>] where:
  Future<Count?> xxDemographicInfoControllerCount({ Map<String, Object>? where, }) async {
    final response = await xxDemographicInfoControllerCountWithHttpInfo( where: where, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Count',) as Count;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /xx-demographic-infos' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [NewDemographicInfo] newDemographicInfo:
  Future<Response> xxDemographicInfoControllerCreateWithHttpInfo({ NewDemographicInfo? newDemographicInfo, }) async {
    // ignore: prefer_const_declarations
    final path = r'/xx-demographic-infos';

    // ignore: prefer_final_locals
    Object? postBody = newDemographicInfo;

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
  /// * [NewDemographicInfo] newDemographicInfo:
  Future<XxDemographicInfo?> xxDemographicInfoControllerCreate({ NewDemographicInfo? newDemographicInfo, }) async {
    final response = await xxDemographicInfoControllerCreateWithHttpInfo( newDemographicInfo: newDemographicInfo, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'XxDemographicInfo',) as XxDemographicInfo;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /xx-demographic-infos/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> xxDemographicInfoControllerDeleteByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/xx-demographic-infos/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> xxDemographicInfoControllerDeleteById(String id,) async {
    final response = await xxDemographicInfoControllerDeleteByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /xx-demographic-infos' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [XxDemographicInfoFilter1] filter:
  Future<Response> xxDemographicInfoControllerFindWithHttpInfo({ XxDemographicInfoFilter1? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/xx-demographic-infos';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filter != null) {
      queryParams.addAll(_queryParams('', 'filter', filter));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [XxDemographicInfoFilter1] filter:
  Future<List<XxDemographicInfoWithRelations>?> xxDemographicInfoControllerFind({ XxDemographicInfoFilter1? filter, }) async {
    final response = await xxDemographicInfoControllerFindWithHttpInfo( filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<XxDemographicInfoWithRelations>') as List)
        .cast<XxDemographicInfoWithRelations>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /xx-demographic-infos/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [XxDemographicInfoFilter] filter:
  Future<Response> xxDemographicInfoControllerFindByIdWithHttpInfo(String id, { XxDemographicInfoFilter? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/xx-demographic-infos/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filter != null) {
      queryParams.addAll(_queryParams('', 'filter', filter));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [XxDemographicInfoFilter] filter:
  Future<XxDemographicInfoWithRelations?> xxDemographicInfoControllerFindById(String id, { XxDemographicInfoFilter? filter, }) async {
    final response = await xxDemographicInfoControllerFindByIdWithHttpInfo(id,  filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'XxDemographicInfoWithRelations',) as XxDemographicInfoWithRelations;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /xx-demographic-infos/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [XxDemographicInfo] xxDemographicInfo:
  Future<Response> xxDemographicInfoControllerReplaceByIdWithHttpInfo(String id, { XxDemographicInfo? xxDemographicInfo, }) async {
    // ignore: prefer_const_declarations
    final path = r'/xx-demographic-infos/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = xxDemographicInfo;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [XxDemographicInfo] xxDemographicInfo:
  Future<void> xxDemographicInfoControllerReplaceById(String id, { XxDemographicInfo? xxDemographicInfo, }) async {
    final response = await xxDemographicInfoControllerReplaceByIdWithHttpInfo(id,  xxDemographicInfo: xxDemographicInfo, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /xx-demographic-infos' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Map<String, Object>] where:
  ///
  /// * [List<XxDemographicInfoPartial>] xxDemographicInfoPartial:
  Future<Response> xxDemographicInfoControllerUpdateAllWithHttpInfo({ Map<String, Object>? where, List<XxDemographicInfoPartial>? xxDemographicInfoPartial, }) async {
    // ignore: prefer_const_declarations
    final path = r'/xx-demographic-infos';

    // ignore: prefer_final_locals
    Object? postBody = xxDemographicInfoPartial;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (where != null) {
      queryParams.addAll(_queryParams('', 'where', where));
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [Map<String, Object>] where:
  ///
  /// * [List<XxDemographicInfoPartial>] xxDemographicInfoPartial:
  Future<Count?> xxDemographicInfoControllerUpdateAll({ Map<String, Object>? where, List<XxDemographicInfoPartial>? xxDemographicInfoPartial, }) async {
    final response = await xxDemographicInfoControllerUpdateAllWithHttpInfo( where: where, xxDemographicInfoPartial: xxDemographicInfoPartial, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Count',) as Count;
    
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /xx-demographic-infos/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [XxDemographicInfoPartial] xxDemographicInfoPartial:
  Future<Response> xxDemographicInfoControllerUpdateByIdWithHttpInfo(String id, { XxDemographicInfoPartial? xxDemographicInfoPartial, }) async {
    // ignore: prefer_const_declarations
    final path = r'/xx-demographic-infos/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = xxDemographicInfoPartial;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [XxDemographicInfoPartial] xxDemographicInfoPartial:
  Future<void> xxDemographicInfoControllerUpdateById(String id, { XxDemographicInfoPartial? xxDemographicInfoPartial, }) async {
    final response = await xxDemographicInfoControllerUpdateByIdWithHttpInfo(id,  xxDemographicInfoPartial: xxDemographicInfoPartial, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}

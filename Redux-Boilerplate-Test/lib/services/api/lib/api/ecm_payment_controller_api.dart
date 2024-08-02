//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EcmPaymentControllerApi {
  EcmPaymentControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /ecm-payments/count' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Map<String, Object>] where:
  Future<Response> ecmPaymentControllerCountWithHttpInfo({ Map<String, Object>? where, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-payments/count';

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
  Future<Count?> ecmPaymentControllerCount({ Map<String, Object>? where, }) async {
    final response = await ecmPaymentControllerCountWithHttpInfo( where: where, );
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

  /// Performs an HTTP 'POST /ecm-payments' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [NewEcmPayment] newEcmPayment:
  Future<Response> ecmPaymentControllerCreateWithHttpInfo({ NewEcmPayment? newEcmPayment, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-payments';

    // ignore: prefer_final_locals
    Object? postBody = newEcmPayment;

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
  /// * [NewEcmPayment] newEcmPayment:
  Future<EcmPayment?> ecmPaymentControllerCreate({ NewEcmPayment? newEcmPayment, }) async {
    final response = await ecmPaymentControllerCreateWithHttpInfo( newEcmPayment: newEcmPayment, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EcmPayment',) as EcmPayment;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /ecm-payments/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> ecmPaymentControllerDeleteByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-payments/{id}'
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
  Future<void> ecmPaymentControllerDeleteById(String id,) async {
    final response = await ecmPaymentControllerDeleteByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /ecm-payments' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [EcmPaymentFilter1] filter:
  Future<Response> ecmPaymentControllerFindWithHttpInfo({ EcmPaymentFilter1? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-payments';

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
  /// * [EcmPaymentFilter1] filter:
  Future<List<EcmPaymentWithRelations>?> ecmPaymentControllerFind({ EcmPaymentFilter1? filter, }) async {
    final response = await ecmPaymentControllerFindWithHttpInfo( filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EcmPaymentWithRelations>') as List)
        .cast<EcmPaymentWithRelations>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /ecm-payments/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EcmPaymentFilter] filter:
  Future<Response> ecmPaymentControllerFindByIdWithHttpInfo(String id, { EcmPaymentFilter? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-payments/{id}'
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
  /// * [EcmPaymentFilter] filter:
  Future<EcmPaymentWithRelations?> ecmPaymentControllerFindById(String id, { EcmPaymentFilter? filter, }) async {
    final response = await ecmPaymentControllerFindByIdWithHttpInfo(id,  filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EcmPaymentWithRelations',) as EcmPaymentWithRelations;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /ecm-payments/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EcmPayment] ecmPayment:
  Future<Response> ecmPaymentControllerReplaceByIdWithHttpInfo(String id, { EcmPayment? ecmPayment, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-payments/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = ecmPayment;

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
  /// * [EcmPayment] ecmPayment:
  Future<void> ecmPaymentControllerReplaceById(String id, { EcmPayment? ecmPayment, }) async {
    final response = await ecmPaymentControllerReplaceByIdWithHttpInfo(id,  ecmPayment: ecmPayment, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /ecm-payments' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Map<String, Object>] where:
  ///
  /// * [List<EcmPaymentPartial>] ecmPaymentPartial:
  Future<Response> ecmPaymentControllerUpdateAllWithHttpInfo({ Map<String, Object>? where, List<EcmPaymentPartial>? ecmPaymentPartial, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-payments';

    // ignore: prefer_final_locals
    Object? postBody = ecmPaymentPartial;

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
  /// * [List<EcmPaymentPartial>] ecmPaymentPartial:
  Future<Count?> ecmPaymentControllerUpdateAll({ Map<String, Object>? where, List<EcmPaymentPartial>? ecmPaymentPartial, }) async {
    final response = await ecmPaymentControllerUpdateAllWithHttpInfo( where: where, ecmPaymentPartial: ecmPaymentPartial, );
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

  /// Performs an HTTP 'PATCH /ecm-payments/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EcmPaymentPartial] ecmPaymentPartial:
  Future<Response> ecmPaymentControllerUpdateByIdWithHttpInfo(String id, { EcmPaymentPartial? ecmPaymentPartial, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-payments/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = ecmPaymentPartial;

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
  /// * [EcmPaymentPartial] ecmPaymentPartial:
  Future<void> ecmPaymentControllerUpdateById(String id, { EcmPaymentPartial? ecmPaymentPartial, }) async {
    final response = await ecmPaymentControllerUpdateByIdWithHttpInfo(id,  ecmPaymentPartial: ecmPaymentPartial, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}

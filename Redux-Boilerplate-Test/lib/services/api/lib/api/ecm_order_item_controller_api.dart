//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EcmOrderItemControllerApi {
  EcmOrderItemControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /ecm-order-items/count' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Map<String, Object>] where:
  Future<Response> ecmOrderItemControllerCountWithHttpInfo({ Map<String, Object>? where, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-order-items/count';

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
  Future<Count?> ecmOrderItemControllerCount({ Map<String, Object>? where, }) async {
    final response = await ecmOrderItemControllerCountWithHttpInfo( where: where, );
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

  /// Performs an HTTP 'POST /ecm-order-items' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [NewEcmOrderItem] newEcmOrderItem:
  Future<Response> ecmOrderItemControllerCreateWithHttpInfo({ NewEcmOrderItem? newEcmOrderItem, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-order-items';

    // ignore: prefer_final_locals
    Object? postBody = newEcmOrderItem;

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
  /// * [NewEcmOrderItem] newEcmOrderItem:
  Future<EcmOrderItem?> ecmOrderItemControllerCreate({ NewEcmOrderItem? newEcmOrderItem, }) async {
    final response = await ecmOrderItemControllerCreateWithHttpInfo( newEcmOrderItem: newEcmOrderItem, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EcmOrderItem',) as EcmOrderItem;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /ecm-order-items/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> ecmOrderItemControllerDeleteByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-order-items/{id}'
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
  Future<void> ecmOrderItemControllerDeleteById(String id,) async {
    final response = await ecmOrderItemControllerDeleteByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /ecm-order-items' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [EcmOrderItemFilter1] filter:
  Future<Response> ecmOrderItemControllerFindWithHttpInfo({ EcmOrderItemFilter1? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-order-items';

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
  /// * [EcmOrderItemFilter1] filter:
  Future<List<EcmOrderItemWithRelations>?> ecmOrderItemControllerFind({ EcmOrderItemFilter1? filter, }) async {
    final response = await ecmOrderItemControllerFindWithHttpInfo( filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EcmOrderItemWithRelations>') as List)
        .cast<EcmOrderItemWithRelations>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /ecm-order-items/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EcmOrderItemFilter] filter:
  Future<Response> ecmOrderItemControllerFindByIdWithHttpInfo(String id, { EcmOrderItemFilter? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-order-items/{id}'
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
  /// * [EcmOrderItemFilter] filter:
  Future<EcmOrderItemWithRelations?> ecmOrderItemControllerFindById(String id, { EcmOrderItemFilter? filter, }) async {
    final response = await ecmOrderItemControllerFindByIdWithHttpInfo(id,  filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EcmOrderItemWithRelations',) as EcmOrderItemWithRelations;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /ecm-order-items/{id}/ecm-order' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> ecmOrderItemControllerFindEcmOrderWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-order-items/{id}/ecm-order'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  Future<EcmOrder?> ecmOrderItemControllerFindEcmOrder(String id,) async {
    final response = await ecmOrderItemControllerFindEcmOrderWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EcmOrder',) as EcmOrder;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /ecm-order-items/{id}/ecm-product' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> ecmOrderItemControllerFindEcmProductWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-order-items/{id}/ecm-product'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  Future<EcmProduct?> ecmOrderItemControllerFindEcmProduct(String id,) async {
    final response = await ecmOrderItemControllerFindEcmProductWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EcmProduct',) as EcmProduct;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /ecm-order-items/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EcmOrderItem] ecmOrderItem:
  Future<Response> ecmOrderItemControllerReplaceByIdWithHttpInfo(String id, { EcmOrderItem? ecmOrderItem, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-order-items/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = ecmOrderItem;

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
  /// * [EcmOrderItem] ecmOrderItem:
  Future<void> ecmOrderItemControllerReplaceById(String id, { EcmOrderItem? ecmOrderItem, }) async {
    final response = await ecmOrderItemControllerReplaceByIdWithHttpInfo(id,  ecmOrderItem: ecmOrderItem, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /ecm-order-items' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Map<String, Object>] where:
  ///
  /// * [List<EcmOrderItemPartial>] ecmOrderItemPartial:
  Future<Response> ecmOrderItemControllerUpdateAllWithHttpInfo({ Map<String, Object>? where, List<EcmOrderItemPartial>? ecmOrderItemPartial, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-order-items';

    // ignore: prefer_final_locals
    Object? postBody = ecmOrderItemPartial;

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
  /// * [List<EcmOrderItemPartial>] ecmOrderItemPartial:
  Future<Count?> ecmOrderItemControllerUpdateAll({ Map<String, Object>? where, List<EcmOrderItemPartial>? ecmOrderItemPartial, }) async {
    final response = await ecmOrderItemControllerUpdateAllWithHttpInfo( where: where, ecmOrderItemPartial: ecmOrderItemPartial, );
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

  /// Performs an HTTP 'PATCH /ecm-order-items/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EcmOrderItemPartial] ecmOrderItemPartial:
  Future<Response> ecmOrderItemControllerUpdateByIdWithHttpInfo(String id, { EcmOrderItemPartial? ecmOrderItemPartial, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-order-items/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = ecmOrderItemPartial;

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
  /// * [EcmOrderItemPartial] ecmOrderItemPartial:
  Future<void> ecmOrderItemControllerUpdateById(String id, { EcmOrderItemPartial? ecmOrderItemPartial, }) async {
    final response = await ecmOrderItemControllerUpdateByIdWithHttpInfo(id,  ecmOrderItemPartial: ecmOrderItemPartial, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}

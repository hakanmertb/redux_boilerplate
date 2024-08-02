//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EcmOrderControllerApi {
  EcmOrderControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /ecm-orders/count' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Map<String, Object>] where:
  Future<Response> ecmOrderControllerCountWithHttpInfo({ Map<String, Object>? where, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-orders/count';

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
  Future<Count?> ecmOrderControllerCount({ Map<String, Object>? where, }) async {
    final response = await ecmOrderControllerCountWithHttpInfo( where: where, );
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

  /// Performs an HTTP 'POST /ecm-orders' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [NewEcmOrder] newEcmOrder:
  Future<Response> ecmOrderControllerCreateWithHttpInfo({ NewEcmOrder? newEcmOrder, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-orders';

    // ignore: prefer_final_locals
    Object? postBody = newEcmOrder;

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
  /// * [NewEcmOrder] newEcmOrder:
  Future<EcmOrder?> ecmOrderControllerCreate({ NewEcmOrder? newEcmOrder, }) async {
    final response = await ecmOrderControllerCreateWithHttpInfo( newEcmOrder: newEcmOrder, );
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

  /// Performs an HTTP 'POST /ecm-orders/{id}/ecm-order-item' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EcmOrderItem] ecmOrderItem:
  Future<Response> ecmOrderControllerCreateEcmOrderItemWithHttpInfo(String id, { EcmOrderItem? ecmOrderItem, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-orders/{id}/ecm-order-item'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = ecmOrderItem;

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
  /// * [String] id (required):
  ///
  /// * [EcmOrderItem] ecmOrderItem:
  Future<EcmOrderItem?> ecmOrderControllerCreateEcmOrderItem(String id, { EcmOrderItem? ecmOrderItem, }) async {
    final response = await ecmOrderControllerCreateEcmOrderItemWithHttpInfo(id,  ecmOrderItem: ecmOrderItem, );
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

  /// Performs an HTTP 'DELETE /ecm-orders/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> ecmOrderControllerDeleteByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-orders/{id}'
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
  Future<void> ecmOrderControllerDeleteById(String id,) async {
    final response = await ecmOrderControllerDeleteByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /ecm-orders/{id}/ecm-order-item' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] where:
  Future<Response> ecmOrderControllerDeleteEcmOrderItemWithHttpInfo(String id, { Map<String, Object>? where, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-orders/{id}/ecm-order-item'
      .replaceAll('{id}', id);

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
  ///
  /// * [Map<String, Object>] where:
  Future<Count?> ecmOrderControllerDeleteEcmOrderItem(String id, { Map<String, Object>? where, }) async {
    final response = await ecmOrderControllerDeleteEcmOrderItemWithHttpInfo(id,  where: where, );
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

  /// Performs an HTTP 'GET /ecm-orders' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [EcmOrderFilter1] filter:
  Future<Response> ecmOrderControllerFindWithHttpInfo({ EcmOrderFilter1? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-orders';

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
  /// * [EcmOrderFilter1] filter:
  Future<List<EcmOrderWithRelations>?> ecmOrderControllerFind({ EcmOrderFilter1? filter, }) async {
    final response = await ecmOrderControllerFindWithHttpInfo( filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EcmOrderWithRelations>') as List)
        .cast<EcmOrderWithRelations>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /ecm-orders/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EcmOrderFilter] filter:
  Future<Response> ecmOrderControllerFindByIdWithHttpInfo(String id, { EcmOrderFilter? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-orders/{id}'
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
  /// * [EcmOrderFilter] filter:
  Future<EcmOrderWithRelations?> ecmOrderControllerFindById(String id, { EcmOrderFilter? filter, }) async {
    final response = await ecmOrderControllerFindByIdWithHttpInfo(id,  filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EcmOrderWithRelations',) as EcmOrderWithRelations;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /ecm-orders/{id}/ecm-order-item' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EcmOrderItemFilter1] filter:
  Future<Response> ecmOrderControllerFindEcmOrderItemsWithHttpInfo(String id, { EcmOrderItemFilter1? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-orders/{id}/ecm-order-item'
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
  /// * [EcmOrderItemFilter1] filter:
  Future<List<EcmOrderItemWithRelations>?> ecmOrderControllerFindEcmOrderItems(String id, { EcmOrderItemFilter1? filter, }) async {
    final response = await ecmOrderControllerFindEcmOrderItemsWithHttpInfo(id,  filter: filter, );
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

  /// Performs an HTTP 'GET /ecm-orders/{id}/ecm-shopping-cart' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> ecmOrderControllerFindEcmShoppingCartWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-orders/{id}/ecm-shopping-cart'
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
  Future<EcmShoppingCart?> ecmOrderControllerFindEcmShoppingCart(String id,) async {
    final response = await ecmOrderControllerFindEcmShoppingCartWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EcmShoppingCart',) as EcmShoppingCart;
    
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /ecm-orders/{id}/ecm-order-item' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] where:
  ///
  /// * [EcmOrderItemPartial] ecmOrderItemPartial:
  Future<Response> ecmOrderControllerPatchEcmOrderItemWithHttpInfo(String id, { Map<String, Object>? where, EcmOrderItemPartial? ecmOrderItemPartial, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-orders/{id}/ecm-order-item'
      .replaceAll('{id}', id);

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
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] where:
  ///
  /// * [EcmOrderItemPartial] ecmOrderItemPartial:
  Future<Count?> ecmOrderControllerPatchEcmOrderItem(String id, { Map<String, Object>? where, EcmOrderItemPartial? ecmOrderItemPartial, }) async {
    final response = await ecmOrderControllerPatchEcmOrderItemWithHttpInfo(id,  where: where, ecmOrderItemPartial: ecmOrderItemPartial, );
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

  /// Performs an HTTP 'PUT /ecm-orders/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EcmOrder] ecmOrder:
  Future<Response> ecmOrderControllerReplaceByIdWithHttpInfo(String id, { EcmOrder? ecmOrder, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-orders/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = ecmOrder;

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
  /// * [EcmOrder] ecmOrder:
  Future<void> ecmOrderControllerReplaceById(String id, { EcmOrder? ecmOrder, }) async {
    final response = await ecmOrderControllerReplaceByIdWithHttpInfo(id,  ecmOrder: ecmOrder, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /ecm-orders' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Map<String, Object>] where:
  ///
  /// * [List<EcmOrderPartial>] ecmOrderPartial:
  Future<Response> ecmOrderControllerUpdateAllWithHttpInfo({ Map<String, Object>? where, List<EcmOrderPartial>? ecmOrderPartial, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-orders';

    // ignore: prefer_final_locals
    Object? postBody = ecmOrderPartial;

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
  /// * [List<EcmOrderPartial>] ecmOrderPartial:
  Future<Count?> ecmOrderControllerUpdateAll({ Map<String, Object>? where, List<EcmOrderPartial>? ecmOrderPartial, }) async {
    final response = await ecmOrderControllerUpdateAllWithHttpInfo( where: where, ecmOrderPartial: ecmOrderPartial, );
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

  /// Performs an HTTP 'PATCH /ecm-orders/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EcmOrderPartial] ecmOrderPartial:
  Future<Response> ecmOrderControllerUpdateByIdWithHttpInfo(String id, { EcmOrderPartial? ecmOrderPartial, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-orders/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = ecmOrderPartial;

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
  /// * [EcmOrderPartial] ecmOrderPartial:
  Future<void> ecmOrderControllerUpdateById(String id, { EcmOrderPartial? ecmOrderPartial, }) async {
    final response = await ecmOrderControllerUpdateByIdWithHttpInfo(id,  ecmOrderPartial: ecmOrderPartial, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}

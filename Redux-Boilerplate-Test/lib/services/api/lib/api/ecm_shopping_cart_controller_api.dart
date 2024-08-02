//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EcmShoppingCartControllerApi {
  EcmShoppingCartControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /ecm-shopping-carts/count' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Map<String, Object>] where:
  Future<Response> ecmShoppingCartControllerCountWithHttpInfo({ Map<String, Object>? where, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-shopping-carts/count';

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
  Future<Count?> ecmShoppingCartControllerCount({ Map<String, Object>? where, }) async {
    final response = await ecmShoppingCartControllerCountWithHttpInfo( where: where, );
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

  /// Performs an HTTP 'POST /ecm-shopping-carts' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [NewEcmShoppingCart] newEcmShoppingCart:
  Future<Response> ecmShoppingCartControllerCreateWithHttpInfo({ NewEcmShoppingCart? newEcmShoppingCart, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-shopping-carts';

    // ignore: prefer_final_locals
    Object? postBody = newEcmShoppingCart;

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
  /// * [NewEcmShoppingCart] newEcmShoppingCart:
  Future<EcmShoppingCart?> ecmShoppingCartControllerCreate({ NewEcmShoppingCart? newEcmShoppingCart, }) async {
    final response = await ecmShoppingCartControllerCreateWithHttpInfo( newEcmShoppingCart: newEcmShoppingCart, );
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

  /// Performs an HTTP 'POST /ecm-shopping-carts/{id}/ecm-shopping-cart-item' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EcmShoppingCartItem] ecmShoppingCartItem:
  Future<Response> ecmShoppingCartControllerCreateEcmShoppingCartItemWithHttpInfo(String id, { EcmShoppingCartItem? ecmShoppingCartItem, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-shopping-carts/{id}/ecm-shopping-cart-item'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = ecmShoppingCartItem;

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
  /// * [EcmShoppingCartItem] ecmShoppingCartItem:
  Future<EcmShoppingCartItem?> ecmShoppingCartControllerCreateEcmShoppingCartItem(String id, { EcmShoppingCartItem? ecmShoppingCartItem, }) async {
    final response = await ecmShoppingCartControllerCreateEcmShoppingCartItemWithHttpInfo(id,  ecmShoppingCartItem: ecmShoppingCartItem, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EcmShoppingCartItem',) as EcmShoppingCartItem;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /ecm-shopping-carts/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> ecmShoppingCartControllerDeleteByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-shopping-carts/{id}'
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
  Future<void> ecmShoppingCartControllerDeleteById(String id,) async {
    final response = await ecmShoppingCartControllerDeleteByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /ecm-shopping-carts/{id}/ecm-shopping-cart-item' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] where:
  Future<Response> ecmShoppingCartControllerDeleteEcmShoppingCartItemWithHttpInfo(String id, { Map<String, Object>? where, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-shopping-carts/{id}/ecm-shopping-cart-item'
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
  Future<Count?> ecmShoppingCartControllerDeleteEcmShoppingCartItem(String id, { Map<String, Object>? where, }) async {
    final response = await ecmShoppingCartControllerDeleteEcmShoppingCartItemWithHttpInfo(id,  where: where, );
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

  /// Performs an HTTP 'GET /ecm-shopping-carts' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [EcmShoppingCartFilter1] filter:
  Future<Response> ecmShoppingCartControllerFindWithHttpInfo({ EcmShoppingCartFilter1? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-shopping-carts';

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
  /// * [EcmShoppingCartFilter1] filter:
  Future<List<EcmShoppingCartWithRelations>?> ecmShoppingCartControllerFind({ EcmShoppingCartFilter1? filter, }) async {
    final response = await ecmShoppingCartControllerFindWithHttpInfo( filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EcmShoppingCartWithRelations>') as List)
        .cast<EcmShoppingCartWithRelations>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /ecm-shopping-carts/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EcmShoppingCartFilter] filter:
  Future<Response> ecmShoppingCartControllerFindByIdWithHttpInfo(String id, { EcmShoppingCartFilter? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-shopping-carts/{id}'
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
  /// * [EcmShoppingCartFilter] filter:
  Future<EcmShoppingCartWithRelations?> ecmShoppingCartControllerFindById(String id, { EcmShoppingCartFilter? filter, }) async {
    final response = await ecmShoppingCartControllerFindByIdWithHttpInfo(id,  filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EcmShoppingCartWithRelations',) as EcmShoppingCartWithRelations;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /ecm-shopping-carts/{id}/ecm-shopping-cart-item' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EcmShoppingCartItemFilter1] filter:
  Future<Response> ecmShoppingCartControllerFindEcmShoppingCartItemsWithHttpInfo(String id, { EcmShoppingCartItemFilter1? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-shopping-carts/{id}/ecm-shopping-cart-item'
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
  /// * [EcmShoppingCartItemFilter1] filter:
  Future<List<EcmShoppingCartItemWithRelations>?> ecmShoppingCartControllerFindEcmShoppingCartItems(String id, { EcmShoppingCartItemFilter1? filter, }) async {
    final response = await ecmShoppingCartControllerFindEcmShoppingCartItemsWithHttpInfo(id,  filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EcmShoppingCartItemWithRelations>') as List)
        .cast<EcmShoppingCartItemWithRelations>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PATCH /ecm-shopping-carts/{id}/ecm-shopping-cart-item' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] where:
  ///
  /// * [EcmShoppingCartItemPartial] ecmShoppingCartItemPartial:
  Future<Response> ecmShoppingCartControllerPatchEcmShoppingCartItemWithHttpInfo(String id, { Map<String, Object>? where, EcmShoppingCartItemPartial? ecmShoppingCartItemPartial, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-shopping-carts/{id}/ecm-shopping-cart-item'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = ecmShoppingCartItemPartial;

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
  /// * [EcmShoppingCartItemPartial] ecmShoppingCartItemPartial:
  Future<Count?> ecmShoppingCartControllerPatchEcmShoppingCartItem(String id, { Map<String, Object>? where, EcmShoppingCartItemPartial? ecmShoppingCartItemPartial, }) async {
    final response = await ecmShoppingCartControllerPatchEcmShoppingCartItemWithHttpInfo(id,  where: where, ecmShoppingCartItemPartial: ecmShoppingCartItemPartial, );
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

  /// Performs an HTTP 'PUT /ecm-shopping-carts/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EcmShoppingCart] ecmShoppingCart:
  Future<Response> ecmShoppingCartControllerReplaceByIdWithHttpInfo(String id, { EcmShoppingCart? ecmShoppingCart, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-shopping-carts/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = ecmShoppingCart;

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
  /// * [EcmShoppingCart] ecmShoppingCart:
  Future<void> ecmShoppingCartControllerReplaceById(String id, { EcmShoppingCart? ecmShoppingCart, }) async {
    final response = await ecmShoppingCartControllerReplaceByIdWithHttpInfo(id,  ecmShoppingCart: ecmShoppingCart, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /ecm-shopping-carts' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Map<String, Object>] where:
  ///
  /// * [List<EcmShoppingCartPartial>] ecmShoppingCartPartial:
  Future<Response> ecmShoppingCartControllerUpdateAllWithHttpInfo({ Map<String, Object>? where, List<EcmShoppingCartPartial>? ecmShoppingCartPartial, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-shopping-carts';

    // ignore: prefer_final_locals
    Object? postBody = ecmShoppingCartPartial;

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
  /// * [List<EcmShoppingCartPartial>] ecmShoppingCartPartial:
  Future<Count?> ecmShoppingCartControllerUpdateAll({ Map<String, Object>? where, List<EcmShoppingCartPartial>? ecmShoppingCartPartial, }) async {
    final response = await ecmShoppingCartControllerUpdateAllWithHttpInfo( where: where, ecmShoppingCartPartial: ecmShoppingCartPartial, );
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

  /// Performs an HTTP 'PATCH /ecm-shopping-carts/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EcmShoppingCartPartial] ecmShoppingCartPartial:
  Future<Response> ecmShoppingCartControllerUpdateByIdWithHttpInfo(String id, { EcmShoppingCartPartial? ecmShoppingCartPartial, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-shopping-carts/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = ecmShoppingCartPartial;

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
  /// * [EcmShoppingCartPartial] ecmShoppingCartPartial:
  Future<void> ecmShoppingCartControllerUpdateById(String id, { EcmShoppingCartPartial? ecmShoppingCartPartial, }) async {
    final response = await ecmShoppingCartControllerUpdateByIdWithHttpInfo(id,  ecmShoppingCartPartial: ecmShoppingCartPartial, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}

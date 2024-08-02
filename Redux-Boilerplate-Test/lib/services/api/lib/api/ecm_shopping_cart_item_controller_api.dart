//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EcmShoppingCartItemControllerApi {
  EcmShoppingCartItemControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /ecm-shopping-cart-items/count' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Map<String, Object>] where:
  Future<Response> ecmShoppingCartItemControllerCountWithHttpInfo({ Map<String, Object>? where, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-shopping-cart-items/count';

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
  Future<Count?> ecmShoppingCartItemControllerCount({ Map<String, Object>? where, }) async {
    final response = await ecmShoppingCartItemControllerCountWithHttpInfo( where: where, );
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

  /// Performs an HTTP 'POST /ecm-shopping-cart-items' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [NewEcmShoppingCartItem] newEcmShoppingCartItem:
  Future<Response> ecmShoppingCartItemControllerCreateWithHttpInfo({ NewEcmShoppingCartItem? newEcmShoppingCartItem, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-shopping-cart-items';

    // ignore: prefer_final_locals
    Object? postBody = newEcmShoppingCartItem;

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
  /// * [NewEcmShoppingCartItem] newEcmShoppingCartItem:
  Future<EcmShoppingCartItem?> ecmShoppingCartItemControllerCreate({ NewEcmShoppingCartItem? newEcmShoppingCartItem, }) async {
    final response = await ecmShoppingCartItemControllerCreateWithHttpInfo( newEcmShoppingCartItem: newEcmShoppingCartItem, );
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

  /// Performs an HTTP 'DELETE /ecm-shopping-cart-items/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> ecmShoppingCartItemControllerDeleteByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-shopping-cart-items/{id}'
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
  Future<void> ecmShoppingCartItemControllerDeleteById(String id,) async {
    final response = await ecmShoppingCartItemControllerDeleteByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /ecm-shopping-cart-items' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [EcmShoppingCartItemFilter1] filter:
  Future<Response> ecmShoppingCartItemControllerFindWithHttpInfo({ EcmShoppingCartItemFilter1? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-shopping-cart-items';

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
  /// * [EcmShoppingCartItemFilter1] filter:
  Future<List<EcmShoppingCartItemWithRelations>?> ecmShoppingCartItemControllerFind({ EcmShoppingCartItemFilter1? filter, }) async {
    final response = await ecmShoppingCartItemControllerFindWithHttpInfo( filter: filter, );
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

  /// Performs an HTTP 'GET /ecm-shopping-cart-items/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EcmShoppingCartItemFilter] filter:
  Future<Response> ecmShoppingCartItemControllerFindByIdWithHttpInfo(String id, { EcmShoppingCartItemFilter? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-shopping-cart-items/{id}'
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
  /// * [EcmShoppingCartItemFilter] filter:
  Future<EcmShoppingCartItemWithRelations?> ecmShoppingCartItemControllerFindById(String id, { EcmShoppingCartItemFilter? filter, }) async {
    final response = await ecmShoppingCartItemControllerFindByIdWithHttpInfo(id,  filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EcmShoppingCartItemWithRelations',) as EcmShoppingCartItemWithRelations;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /ecm-shopping-cart-items/{id}/ecm-product' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> ecmShoppingCartItemControllerFindEcmProductWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-shopping-cart-items/{id}/ecm-product'
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
  Future<EcmProduct?> ecmShoppingCartItemControllerFindEcmProduct(String id,) async {
    final response = await ecmShoppingCartItemControllerFindEcmProductWithHttpInfo(id,);
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

  /// Performs an HTTP 'GET /ecm-shopping-cart-items/{id}/ecm-shopping-cart' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> ecmShoppingCartItemControllerFindEcmShoppingCartWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-shopping-cart-items/{id}/ecm-shopping-cart'
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
  Future<EcmShoppingCart?> ecmShoppingCartItemControllerFindEcmShoppingCart(String id,) async {
    final response = await ecmShoppingCartItemControllerFindEcmShoppingCartWithHttpInfo(id,);
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

  /// Performs an HTTP 'PUT /ecm-shopping-cart-items/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EcmShoppingCartItem] ecmShoppingCartItem:
  Future<Response> ecmShoppingCartItemControllerReplaceByIdWithHttpInfo(String id, { EcmShoppingCartItem? ecmShoppingCartItem, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-shopping-cart-items/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = ecmShoppingCartItem;

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
  /// * [EcmShoppingCartItem] ecmShoppingCartItem:
  Future<void> ecmShoppingCartItemControllerReplaceById(String id, { EcmShoppingCartItem? ecmShoppingCartItem, }) async {
    final response = await ecmShoppingCartItemControllerReplaceByIdWithHttpInfo(id,  ecmShoppingCartItem: ecmShoppingCartItem, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /ecm-shopping-cart-items' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Map<String, Object>] where:
  ///
  /// * [List<EcmShoppingCartItemPartial>] ecmShoppingCartItemPartial:
  Future<Response> ecmShoppingCartItemControllerUpdateAllWithHttpInfo({ Map<String, Object>? where, List<EcmShoppingCartItemPartial>? ecmShoppingCartItemPartial, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-shopping-cart-items';

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
  /// * [Map<String, Object>] where:
  ///
  /// * [List<EcmShoppingCartItemPartial>] ecmShoppingCartItemPartial:
  Future<Count?> ecmShoppingCartItemControllerUpdateAll({ Map<String, Object>? where, List<EcmShoppingCartItemPartial>? ecmShoppingCartItemPartial, }) async {
    final response = await ecmShoppingCartItemControllerUpdateAllWithHttpInfo( where: where, ecmShoppingCartItemPartial: ecmShoppingCartItemPartial, );
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

  /// Performs an HTTP 'PATCH /ecm-shopping-cart-items/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EcmShoppingCartItemPartial] ecmShoppingCartItemPartial:
  Future<Response> ecmShoppingCartItemControllerUpdateByIdWithHttpInfo(String id, { EcmShoppingCartItemPartial? ecmShoppingCartItemPartial, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ecm-shopping-cart-items/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = ecmShoppingCartItemPartial;

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
  /// * [EcmShoppingCartItemPartial] ecmShoppingCartItemPartial:
  Future<void> ecmShoppingCartItemControllerUpdateById(String id, { EcmShoppingCartItemPartial? ecmShoppingCartItemPartial, }) async {
    final response = await ecmShoppingCartItemControllerUpdateByIdWithHttpInfo(id,  ecmShoppingCartItemPartial: ecmShoppingCartItemPartial, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}

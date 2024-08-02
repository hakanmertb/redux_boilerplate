//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SlotControllerApi {
  SlotControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /slots/count' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Map<String, Object>] where:
  Future<Response> slotControllerCountWithHttpInfo({ Map<String, Object>? where, }) async {
    // ignore: prefer_const_declarations
    final path = r'/slots/count';

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
  Future<Count?> slotControllerCount({ Map<String, Object>? where, }) async {
    final response = await slotControllerCountWithHttpInfo( where: where, );
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

  /// Performs an HTTP 'POST /slots' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [NewSlot] newSlot:
  Future<Response> slotControllerCreateWithHttpInfo({ NewSlot? newSlot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/slots';

    // ignore: prefer_final_locals
    Object? postBody = newSlot;

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
  /// * [NewSlot] newSlot:
  Future<Slot?> slotControllerCreate({ NewSlot? newSlot, }) async {
    final response = await slotControllerCreateWithHttpInfo( newSlot: newSlot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Slot',) as Slot;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /slots/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> slotControllerDeleteByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/slots/{id}'
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
  Future<void> slotControllerDeleteById(String id,) async {
    final response = await slotControllerDeleteByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /slots' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [SlotFilter] filter:
  Future<Response> slotControllerFindWithHttpInfo({ SlotFilter? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/slots';

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
  /// * [SlotFilter] filter:
  Future<List<SlotWithRelations>?> slotControllerFind({ SlotFilter? filter, }) async {
    final response = await slotControllerFindWithHttpInfo( filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SlotWithRelations>') as List)
        .cast<SlotWithRelations>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /slots/{id}/book' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> slotControllerFindBookWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/slots/{id}/book'
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
  Future<Book?> slotControllerFindBook(String id,) async {
    final response = await slotControllerFindBookWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Book',) as Book;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /slots/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [SlotFilter1] filter:
  Future<Response> slotControllerFindByIdWithHttpInfo(String id, { SlotFilter1? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/slots/{id}'
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
  /// * [SlotFilter1] filter:
  Future<SlotWithRelations?> slotControllerFindById(String id, { SlotFilter1? filter, }) async {
    final response = await slotControllerFindByIdWithHttpInfo(id,  filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SlotWithRelations',) as SlotWithRelations;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /slots/{id}/provider' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> slotControllerFindProviderWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/slots/{id}/provider'
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
  Future<Provider?> slotControllerFindProvider(String id,) async {
    final response = await slotControllerFindProviderWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Provider',) as Provider;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /slots/{id}/search' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> slotControllerFindSearchWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/slots/{id}/search'
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
  Future<Search?> slotControllerFindSearch(String id,) async {
    final response = await slotControllerFindSearchWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Search',) as Search;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /slots/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Slot] slot:
  Future<Response> slotControllerReplaceByIdWithHttpInfo(String id, { Slot? slot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/slots/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = slot;

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
  /// * [Slot] slot:
  Future<void> slotControllerReplaceById(String id, { Slot? slot, }) async {
    final response = await slotControllerReplaceByIdWithHttpInfo(id,  slot: slot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /slots' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Map<String, Object>] where:
  ///
  /// * [List<SlotPartial>] slotPartial:
  Future<Response> slotControllerUpdateAllWithHttpInfo({ Map<String, Object>? where, List<SlotPartial>? slotPartial, }) async {
    // ignore: prefer_const_declarations
    final path = r'/slots';

    // ignore: prefer_final_locals
    Object? postBody = slotPartial;

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
  /// * [List<SlotPartial>] slotPartial:
  Future<Count?> slotControllerUpdateAll({ Map<String, Object>? where, List<SlotPartial>? slotPartial, }) async {
    final response = await slotControllerUpdateAllWithHttpInfo( where: where, slotPartial: slotPartial, );
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

  /// Performs an HTTP 'PATCH /slots/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [SlotPartial] slotPartial:
  Future<Response> slotControllerUpdateByIdWithHttpInfo(String id, { SlotPartial? slotPartial, }) async {
    // ignore: prefer_const_declarations
    final path = r'/slots/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = slotPartial;

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
  /// * [SlotPartial] slotPartial:
  Future<void> slotControllerUpdateById(String id, { SlotPartial? slotPartial, }) async {
    final response = await slotControllerUpdateByIdWithHttpInfo(id,  slotPartial: slotPartial, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}

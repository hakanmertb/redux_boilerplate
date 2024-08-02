//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ProviderControllerApi {
  ProviderControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /providers/count' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Map<String, Object>] where:
  Future<Response> providerControllerCountWithHttpInfo({ Map<String, Object>? where, }) async {
    // ignore: prefer_const_declarations
    final path = r'/providers/count';

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
  Future<Count?> providerControllerCount({ Map<String, Object>? where, }) async {
    final response = await providerControllerCountWithHttpInfo( where: where, );
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

  /// Performs an HTTP 'POST /providers' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [NewProvider] newProvider:
  Future<Response> providerControllerCreateWithHttpInfo({ NewProvider? newProvider, }) async {
    // ignore: prefer_const_declarations
    final path = r'/providers';

    // ignore: prefer_final_locals
    Object? postBody = newProvider;

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
  /// * [NewProvider] newProvider:
  Future<Provider?> providerControllerCreate({ NewProvider? newProvider, }) async {
    final response = await providerControllerCreateWithHttpInfo( newProvider: newProvider, );
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

  /// Performs an HTTP 'POST /providers/{id}/review' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Review] review:
  Future<Response> providerControllerCreateReviewWithHttpInfo(String id, { Review? review, }) async {
    // ignore: prefer_const_declarations
    final path = r'/providers/{id}/review'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = review;

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
  /// * [Review] review:
  Future<Review?> providerControllerCreateReview(String id, { Review? review, }) async {
    final response = await providerControllerCreateReviewWithHttpInfo(id,  review: review, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Review',) as Review;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /providers/{id}/slot' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Slot] slot:
  Future<Response> providerControllerCreateSlotWithHttpInfo(String id, { Slot? slot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/providers/{id}/slot'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = slot;

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
  /// * [Slot] slot:
  Future<Slot?> providerControllerCreateSlot(String id, { Slot? slot, }) async {
    final response = await providerControllerCreateSlotWithHttpInfo(id,  slot: slot, );
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

  /// Performs an HTTP 'DELETE /providers/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> providerControllerDeleteByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/providers/{id}'
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
  Future<void> providerControllerDeleteById(String id,) async {
    final response = await providerControllerDeleteByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /providers/{id}/review' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] where:
  Future<Response> providerControllerDeleteReviewWithHttpInfo(String id, { Map<String, Object>? where, }) async {
    // ignore: prefer_const_declarations
    final path = r'/providers/{id}/review'
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
  Future<Count?> providerControllerDeleteReview(String id, { Map<String, Object>? where, }) async {
    final response = await providerControllerDeleteReviewWithHttpInfo(id,  where: where, );
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

  /// Performs an HTTP 'DELETE /providers/{id}/slot' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] where:
  Future<Response> providerControllerDeleteSlotWithHttpInfo(String id, { Map<String, Object>? where, }) async {
    // ignore: prefer_const_declarations
    final path = r'/providers/{id}/slot'
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
  Future<Count?> providerControllerDeleteSlot(String id, { Map<String, Object>? where, }) async {
    final response = await providerControllerDeleteSlotWithHttpInfo(id,  where: where, );
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

  /// Performs an HTTP 'GET /providers' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [ProviderFilter1] filter:
  Future<Response> providerControllerFindWithHttpInfo({ ProviderFilter1? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/providers';

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
  /// * [ProviderFilter1] filter:
  Future<List<ProviderWithRelations>?> providerControllerFind({ ProviderFilter1? filter, }) async {
    final response = await providerControllerFindWithHttpInfo( filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProviderWithRelations>') as List)
        .cast<ProviderWithRelations>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /providers/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [ProviderFilter] filter:
  Future<Response> providerControllerFindByIdWithHttpInfo(String id, { ProviderFilter? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/providers/{id}'
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
  /// * [ProviderFilter] filter:
  Future<ProviderWithRelations?> providerControllerFindById(String id, { ProviderFilter? filter, }) async {
    final response = await providerControllerFindByIdWithHttpInfo(id,  filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProviderWithRelations',) as ProviderWithRelations;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /providers/{id}/review' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [ReviewFilter] filter:
  Future<Response> providerControllerFindReviewsWithHttpInfo(String id, { ReviewFilter? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/providers/{id}/review'
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
  /// * [ReviewFilter] filter:
  Future<List<ReviewWithRelations>?> providerControllerFindReviews(String id, { ReviewFilter? filter, }) async {
    final response = await providerControllerFindReviewsWithHttpInfo(id,  filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ReviewWithRelations>') as List)
        .cast<ReviewWithRelations>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /providers/{id}/slot' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [SlotFilter] filter:
  Future<Response> providerControllerFindSlotsWithHttpInfo(String id, { SlotFilter? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/providers/{id}/slot'
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
  /// * [SlotFilter] filter:
  Future<List<SlotWithRelations>?> providerControllerFindSlots(String id, { SlotFilter? filter, }) async {
    final response = await providerControllerFindSlotsWithHttpInfo(id,  filter: filter, );
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

  /// Performs an HTTP 'PATCH /providers/{id}/review' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] where:
  ///
  /// * [ReviewPartial] reviewPartial:
  Future<Response> providerControllerPatchReviewWithHttpInfo(String id, { Map<String, Object>? where, ReviewPartial? reviewPartial, }) async {
    // ignore: prefer_const_declarations
    final path = r'/providers/{id}/review'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = reviewPartial;

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
  /// * [ReviewPartial] reviewPartial:
  Future<Count?> providerControllerPatchReview(String id, { Map<String, Object>? where, ReviewPartial? reviewPartial, }) async {
    final response = await providerControllerPatchReviewWithHttpInfo(id,  where: where, reviewPartial: reviewPartial, );
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

  /// Performs an HTTP 'PATCH /providers/{id}/slot' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] where:
  ///
  /// * [SlotPartial] slotPartial:
  Future<Response> providerControllerPatchSlotWithHttpInfo(String id, { Map<String, Object>? where, SlotPartial? slotPartial, }) async {
    // ignore: prefer_const_declarations
    final path = r'/providers/{id}/slot'
      .replaceAll('{id}', id);

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
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] where:
  ///
  /// * [SlotPartial] slotPartial:
  Future<Count?> providerControllerPatchSlot(String id, { Map<String, Object>? where, SlotPartial? slotPartial, }) async {
    final response = await providerControllerPatchSlotWithHttpInfo(id,  where: where, slotPartial: slotPartial, );
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

  /// Performs an HTTP 'PUT /providers/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Provider] provider:
  Future<Response> providerControllerReplaceByIdWithHttpInfo(String id, { Provider? provider, }) async {
    // ignore: prefer_const_declarations
    final path = r'/providers/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = provider;

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
  /// * [Provider] provider:
  Future<void> providerControllerReplaceById(String id, { Provider? provider, }) async {
    final response = await providerControllerReplaceByIdWithHttpInfo(id,  provider: provider, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /providers' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Map<String, Object>] where:
  ///
  /// * [List<ProviderPartial>] providerPartial:
  Future<Response> providerControllerUpdateAllWithHttpInfo({ Map<String, Object>? where, List<ProviderPartial>? providerPartial, }) async {
    // ignore: prefer_const_declarations
    final path = r'/providers';

    // ignore: prefer_final_locals
    Object? postBody = providerPartial;

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
  /// * [List<ProviderPartial>] providerPartial:
  Future<Count?> providerControllerUpdateAll({ Map<String, Object>? where, List<ProviderPartial>? providerPartial, }) async {
    final response = await providerControllerUpdateAllWithHttpInfo( where: where, providerPartial: providerPartial, );
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

  /// Performs an HTTP 'PATCH /providers/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [ProviderPartial] providerPartial:
  Future<Response> providerControllerUpdateByIdWithHttpInfo(String id, { ProviderPartial? providerPartial, }) async {
    // ignore: prefer_const_declarations
    final path = r'/providers/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = providerPartial;

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
  /// * [ProviderPartial] providerPartial:
  Future<void> providerControllerUpdateById(String id, { ProviderPartial? providerPartial, }) async {
    final response = await providerControllerUpdateByIdWithHttpInfo(id,  providerPartial: providerPartial, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UserControllerApi {
  UserControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /users/{id}/book' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Book] book:
  Future<Response> userControllerCreateBookWithHttpInfo(String id, { Book? book, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{id}/book'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = book;

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
  /// * [Book] book:
  Future<Book?> userControllerCreateBook(String id, { Book? book, }) async {
    final response = await userControllerCreateBookWithHttpInfo(id,  book: book, );
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

  /// Performs an HTTP 'DELETE /users/{id}/book' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] where:
  Future<Response> userControllerDeleteBookWithHttpInfo(String id, { Map<String, Object>? where, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{id}/book'
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
  Future<Count?> userControllerDeleteBook(String id, { Map<String, Object>? where, }) async {
    final response = await userControllerDeleteBookWithHttpInfo(id,  where: where, );
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

  /// Performs an HTTP 'GET /users/{id}/book' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [BookFilter1] filter:
  Future<Response> userControllerFindBooksWithHttpInfo(String id, { BookFilter1? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{id}/book'
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
  /// * [BookFilter1] filter:
  Future<List<BookWithRelations>?> userControllerFindBooks(String id, { BookFilter1? filter, }) async {
    final response = await userControllerFindBooksWithHttpInfo(id,  filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<BookWithRelations>') as List)
        .cast<BookWithRelations>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PATCH /users/{id}/book' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] where:
  ///
  /// * [BookPartial] bookPartial:
  Future<Response> userControllerPatchBookWithHttpInfo(String id, { Map<String, Object>? where, BookPartial? bookPartial, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{id}/book'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = bookPartial;

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
  /// * [BookPartial] bookPartial:
  Future<Count?> userControllerPatchBook(String id, { Map<String, Object>? where, BookPartial? bookPartial, }) async {
    final response = await userControllerPatchBookWithHttpInfo(id,  where: where, bookPartial: bookPartial, );
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
}

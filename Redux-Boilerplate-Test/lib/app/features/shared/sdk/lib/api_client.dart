//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'http://localhost', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'Blog':
          return Blog.fromJson(value);
        case 'BlogFields':
          return BlogFields.fromJson(value);
        case 'BlogFieldsOneOf':
          return BlogFieldsOneOf.fromJson(value);
        case 'BlogFilter':
          return BlogFilter.fromJson(value);
        case 'BlogFilter1':
          return BlogFilter1.fromJson(value);
        case 'BlogFilterOrder':
          return BlogFilterOrder.fromJson(value);
        case 'BlogPartial':
          return BlogPartial.fromJson(value);
        case 'BlogWithRelations':
          return BlogWithRelations.fromJson(value);
        case 'Book':
          return Book.fromJson(value);
        case 'BookFields':
          return BookFields.fromJson(value);
        case 'BookFieldsOneOf':
          return BookFieldsOneOf.fromJson(value);
        case 'BookFilter':
          return BookFilter.fromJson(value);
        case 'BookFilter1':
          return BookFilter1.fromJson(value);
        case 'BookIncludeFilterInner':
          return BookIncludeFilterInner.fromJson(value);
        case 'BookIncludeFilterItems':
          return BookIncludeFilterItems.fromJson(value);
        case 'BookPartial':
          return BookPartial.fromJson(value);
        case 'BookScopeFilter':
          return BookScopeFilter.fromJson(value);
        case 'BookWithRelations':
          return BookWithRelations.fromJson(value);
        case 'Contact':
          return Contact.fromJson(value);
        case 'ContactFields':
          return ContactFields.fromJson(value);
        case 'ContactFieldsOneOf':
          return ContactFieldsOneOf.fromJson(value);
        case 'ContactFilter':
          return ContactFilter.fromJson(value);
        case 'ContactFilter1':
          return ContactFilter1.fromJson(value);
        case 'ContactIncludeFilterInner':
          return ContactIncludeFilterInner.fromJson(value);
        case 'ContactIncludeFilterItems':
          return ContactIncludeFilterItems.fromJson(value);
        case 'ContactPartial':
          return ContactPartial.fromJson(value);
        case 'ContactScopeFilter':
          return ContactScopeFilter.fromJson(value);
        case 'ContactWithRelations':
          return ContactWithRelations.fromJson(value);
        case 'Count':
          return Count.fromJson(value);
        case 'Credentials':
          return Credentials.fromJson(value);
        case 'EcmAddress':
          return EcmAddress.fromJson(value);
        case 'EcmAddressFields':
          return EcmAddressFields.fromJson(value);
        case 'EcmAddressFieldsOneOf':
          return EcmAddressFieldsOneOf.fromJson(value);
        case 'EcmAddressFilter':
          return EcmAddressFilter.fromJson(value);
        case 'EcmAddressFilter1':
          return EcmAddressFilter1.fromJson(value);
        case 'EcmAddressPartial':
          return EcmAddressPartial.fromJson(value);
        case 'EcmAddressWithRelations':
          return EcmAddressWithRelations.fromJson(value);
        case 'EcmDiscount':
          return EcmDiscount.fromJson(value);
        case 'EcmDiscountFields':
          return EcmDiscountFields.fromJson(value);
        case 'EcmDiscountFieldsOneOf':
          return EcmDiscountFieldsOneOf.fromJson(value);
        case 'EcmDiscountFilter':
          return EcmDiscountFilter.fromJson(value);
        case 'EcmDiscountFilter1':
          return EcmDiscountFilter1.fromJson(value);
        case 'EcmDiscountPartial':
          return EcmDiscountPartial.fromJson(value);
        case 'EcmDiscountWithRelations':
          return EcmDiscountWithRelations.fromJson(value);
        case 'EcmOrder':
          return EcmOrder.fromJson(value);
        case 'EcmOrderFields':
          return EcmOrderFields.fromJson(value);
        case 'EcmOrderFieldsOneOf':
          return EcmOrderFieldsOneOf.fromJson(value);
        case 'EcmOrderFilter':
          return EcmOrderFilter.fromJson(value);
        case 'EcmOrderFilter1':
          return EcmOrderFilter1.fromJson(value);
        case 'EcmOrderIncludeFilterInner':
          return EcmOrderIncludeFilterInner.fromJson(value);
        case 'EcmOrderIncludeFilterItems':
          return EcmOrderIncludeFilterItems.fromJson(value);
        case 'EcmOrderItem':
          return EcmOrderItem.fromJson(value);
        case 'EcmOrderItemFields':
          return EcmOrderItemFields.fromJson(value);
        case 'EcmOrderItemFieldsOneOf':
          return EcmOrderItemFieldsOneOf.fromJson(value);
        case 'EcmOrderItemFilter':
          return EcmOrderItemFilter.fromJson(value);
        case 'EcmOrderItemFilter1':
          return EcmOrderItemFilter1.fromJson(value);
        case 'EcmOrderItemIncludeFilterInner':
          return EcmOrderItemIncludeFilterInner.fromJson(value);
        case 'EcmOrderItemIncludeFilterItems':
          return EcmOrderItemIncludeFilterItems.fromJson(value);
        case 'EcmOrderItemPartial':
          return EcmOrderItemPartial.fromJson(value);
        case 'EcmOrderItemScopeFilter':
          return EcmOrderItemScopeFilter.fromJson(value);
        case 'EcmOrderItemWithRelations':
          return EcmOrderItemWithRelations.fromJson(value);
        case 'EcmOrderPartial':
          return EcmOrderPartial.fromJson(value);
        case 'EcmOrderScopeFilter':
          return EcmOrderScopeFilter.fromJson(value);
        case 'EcmOrderWithRelations':
          return EcmOrderWithRelations.fromJson(value);
        case 'EcmPayment':
          return EcmPayment.fromJson(value);
        case 'EcmPaymentFields':
          return EcmPaymentFields.fromJson(value);
        case 'EcmPaymentFieldsOneOf':
          return EcmPaymentFieldsOneOf.fromJson(value);
        case 'EcmPaymentFilter':
          return EcmPaymentFilter.fromJson(value);
        case 'EcmPaymentFilter1':
          return EcmPaymentFilter1.fromJson(value);
        case 'EcmPaymentPartial':
          return EcmPaymentPartial.fromJson(value);
        case 'EcmPaymentWithRelations':
          return EcmPaymentWithRelations.fromJson(value);
        case 'EcmProduct':
          return EcmProduct.fromJson(value);
        case 'EcmProductFields':
          return EcmProductFields.fromJson(value);
        case 'EcmProductFieldsOneOf':
          return EcmProductFieldsOneOf.fromJson(value);
        case 'EcmProductFilter':
          return EcmProductFilter.fromJson(value);
        case 'EcmProductFilter1':
          return EcmProductFilter1.fromJson(value);
        case 'EcmProductPartial':
          return EcmProductPartial.fromJson(value);
        case 'EcmProductWithRelations':
          return EcmProductWithRelations.fromJson(value);
        case 'EcmShoppingCart':
          return EcmShoppingCart.fromJson(value);
        case 'EcmShoppingCartFields':
          return EcmShoppingCartFields.fromJson(value);
        case 'EcmShoppingCartFieldsOneOf':
          return EcmShoppingCartFieldsOneOf.fromJson(value);
        case 'EcmShoppingCartFilter':
          return EcmShoppingCartFilter.fromJson(value);
        case 'EcmShoppingCartFilter1':
          return EcmShoppingCartFilter1.fromJson(value);
        case 'EcmShoppingCartIncludeFilterInner':
          return EcmShoppingCartIncludeFilterInner.fromJson(value);
        case 'EcmShoppingCartIncludeFilterItems':
          return EcmShoppingCartIncludeFilterItems.fromJson(value);
        case 'EcmShoppingCartItem':
          return EcmShoppingCartItem.fromJson(value);
        case 'EcmShoppingCartItemFields':
          return EcmShoppingCartItemFields.fromJson(value);
        case 'EcmShoppingCartItemFieldsOneOf':
          return EcmShoppingCartItemFieldsOneOf.fromJson(value);
        case 'EcmShoppingCartItemFilter':
          return EcmShoppingCartItemFilter.fromJson(value);
        case 'EcmShoppingCartItemFilter1':
          return EcmShoppingCartItemFilter1.fromJson(value);
        case 'EcmShoppingCartItemIncludeFilterInner':
          return EcmShoppingCartItemIncludeFilterInner.fromJson(value);
        case 'EcmShoppingCartItemIncludeFilterItems':
          return EcmShoppingCartItemIncludeFilterItems.fromJson(value);
        case 'EcmShoppingCartItemPartial':
          return EcmShoppingCartItemPartial.fromJson(value);
        case 'EcmShoppingCartItemScopeFilter':
          return EcmShoppingCartItemScopeFilter.fromJson(value);
        case 'EcmShoppingCartItemWithRelations':
          return EcmShoppingCartItemWithRelations.fromJson(value);
        case 'EcmShoppingCartPartial':
          return EcmShoppingCartPartial.fromJson(value);
        case 'EcmShoppingCartScopeFilter':
          return EcmShoppingCartScopeFilter.fromJson(value);
        case 'EcmShoppingCartWithRelations':
          return EcmShoppingCartWithRelations.fromJson(value);
        case 'EcmTransaction':
          return EcmTransaction.fromJson(value);
        case 'EcmTransactionFields':
          return EcmTransactionFields.fromJson(value);
        case 'EcmTransactionFieldsOneOf':
          return EcmTransactionFieldsOneOf.fromJson(value);
        case 'EcmTransactionFilter':
          return EcmTransactionFilter.fromJson(value);
        case 'EcmTransactionFilter1':
          return EcmTransactionFilter1.fromJson(value);
        case 'EcmTransactionIncludeFilterInner':
          return EcmTransactionIncludeFilterInner.fromJson(value);
        case 'EcmTransactionIncludeFilterItems':
          return EcmTransactionIncludeFilterItems.fromJson(value);
        case 'EcmTransactionPartial':
          return EcmTransactionPartial.fromJson(value);
        case 'EcmTransactionScopeFilter':
          return EcmTransactionScopeFilter.fromJson(value);
        case 'EcmTransactionWithRelations':
          return EcmTransactionWithRelations.fromJson(value);
        case 'Faq':
          return Faq.fromJson(value);
        case 'FaqFields':
          return FaqFields.fromJson(value);
        case 'FaqFieldsOneOf':
          return FaqFieldsOneOf.fromJson(value);
        case 'FaqFilter':
          return FaqFilter.fromJson(value);
        case 'FaqFilter1':
          return FaqFilter1.fromJson(value);
        case 'FaqPartial':
          return FaqPartial.fromJson(value);
        case 'FaqWithRelations':
          return FaqWithRelations.fromJson(value);
        case 'NewBlog':
          return NewBlog.fromJson(value);
        case 'NewBook':
          return NewBook.fromJson(value);
        case 'NewContact':
          return NewContact.fromJson(value);
        case 'NewEcmAddress':
          return NewEcmAddress.fromJson(value);
        case 'NewEcmDiscount':
          return NewEcmDiscount.fromJson(value);
        case 'NewEcmOrder':
          return NewEcmOrder.fromJson(value);
        case 'NewEcmOrderItem':
          return NewEcmOrderItem.fromJson(value);
        case 'NewEcmPayment':
          return NewEcmPayment.fromJson(value);
        case 'NewEcmProduct':
          return NewEcmProduct.fromJson(value);
        case 'NewEcmShoppingCart':
          return NewEcmShoppingCart.fromJson(value);
        case 'NewEcmShoppingCartItem':
          return NewEcmShoppingCartItem.fromJson(value);
        case 'NewEcmTransaction':
          return NewEcmTransaction.fromJson(value);
        case 'NewFaq':
          return NewFaq.fromJson(value);
        case 'NewParent':
          return NewParent.fromJson(value);
        case 'NewProduct':
          return NewProduct.fromJson(value);
        case 'NewProvider':
          return NewProvider.fromJson(value);
        case 'NewReview':
          return NewReview.fromJson(value);
        case 'NewSearch':
          return NewSearch.fromJson(value);
        case 'NewSlot':
          return NewSlot.fromJson(value);
        case 'Parent':
          return Parent.fromJson(value);
        case 'ParentFields':
          return ParentFields.fromJson(value);
        case 'ParentFieldsOneOf':
          return ParentFieldsOneOf.fromJson(value);
        case 'ParentFilter':
          return ParentFilter.fromJson(value);
        case 'ParentFilter1':
          return ParentFilter1.fromJson(value);
        case 'ParentPartial':
          return ParentPartial.fromJson(value);
        case 'ParentWithRelations':
          return ParentWithRelations.fromJson(value);
        case 'PingResponse':
          return PingResponse.fromJson(value);
        case 'PingResponseHeaders':
          return PingResponseHeaders.fromJson(value);
        case 'Product':
          return Product.fromJson(value);
        case 'ProductFields':
          return ProductFields.fromJson(value);
        case 'ProductFieldsOneOf':
          return ProductFieldsOneOf.fromJson(value);
        case 'ProductFilter':
          return ProductFilter.fromJson(value);
        case 'ProductFilter1':
          return ProductFilter1.fromJson(value);
        case 'ProductPartial':
          return ProductPartial.fromJson(value);
        case 'ProductWithRelations':
          return ProductWithRelations.fromJson(value);
        case 'Provider':
          return Provider.fromJson(value);
        case 'ProviderFields':
          return ProviderFields.fromJson(value);
        case 'ProviderFieldsOneOf':
          return ProviderFieldsOneOf.fromJson(value);
        case 'ProviderFilter':
          return ProviderFilter.fromJson(value);
        case 'ProviderFilter1':
          return ProviderFilter1.fromJson(value);
        case 'ProviderIncludeFilterInner':
          return ProviderIncludeFilterInner.fromJson(value);
        case 'ProviderIncludeFilterItems':
          return ProviderIncludeFilterItems.fromJson(value);
        case 'ProviderPartial':
          return ProviderPartial.fromJson(value);
        case 'ProviderScopeFilter':
          return ProviderScopeFilter.fromJson(value);
        case 'ProviderWithRelations':
          return ProviderWithRelations.fromJson(value);
        case 'RegisterDTO':
          return RegisterDTO.fromJson(value);
        case 'Review':
          return Review.fromJson(value);
        case 'ReviewFields':
          return ReviewFields.fromJson(value);
        case 'ReviewFieldsOneOf':
          return ReviewFieldsOneOf.fromJson(value);
        case 'ReviewFilter':
          return ReviewFilter.fromJson(value);
        case 'ReviewFilter1':
          return ReviewFilter1.fromJson(value);
        case 'ReviewIncludeFilterInner':
          return ReviewIncludeFilterInner.fromJson(value);
        case 'ReviewIncludeFilterItems':
          return ReviewIncludeFilterItems.fromJson(value);
        case 'ReviewPartial':
          return ReviewPartial.fromJson(value);
        case 'ReviewScopeFilter':
          return ReviewScopeFilter.fromJson(value);
        case 'ReviewWithRelations':
          return ReviewWithRelations.fromJson(value);
        case 'RunEventRequestDTO':
          return RunEventRequestDTO.fromJson(value);
        case 'RunServiceRequestDTO':
          return RunServiceRequestDTO.fromJson(value);
        case 'RunStepFunctionRequestDTO':
          return RunStepFunctionRequestDTO.fromJson(value);
        case 'Search':
          return Search.fromJson(value);
        case 'SearchFields':
          return SearchFields.fromJson(value);
        case 'SearchFieldsOneOf':
          return SearchFieldsOneOf.fromJson(value);
        case 'SearchFilter':
          return SearchFilter.fromJson(value);
        case 'SearchFilter1':
          return SearchFilter1.fromJson(value);
        case 'SearchIncludeFilterInner':
          return SearchIncludeFilterInner.fromJson(value);
        case 'SearchIncludeFilterItems':
          return SearchIncludeFilterItems.fromJson(value);
        case 'SearchPartial':
          return SearchPartial.fromJson(value);
        case 'SearchScopeFilter':
          return SearchScopeFilter.fromJson(value);
        case 'SearchWithRelations':
          return SearchWithRelations.fromJson(value);
        case 'Slot':
          return Slot.fromJson(value);
        case 'SlotFields':
          return SlotFields.fromJson(value);
        case 'SlotFieldsOneOf':
          return SlotFieldsOneOf.fromJson(value);
        case 'SlotFilter':
          return SlotFilter.fromJson(value);
        case 'SlotFilter1':
          return SlotFilter1.fromJson(value);
        case 'SlotIncludeFilterInner':
          return SlotIncludeFilterInner.fromJson(value);
        case 'SlotIncludeFilterItems':
          return SlotIncludeFilterItems.fromJson(value);
        case 'SlotPartial':
          return SlotPartial.fromJson(value);
        case 'SlotScopeFilter':
          return SlotScopeFilter.fromJson(value);
        case 'SlotScopeFilterFields':
          return SlotScopeFilterFields.fromJson(value);
        case 'SlotWithRelations':
          return SlotWithRelations.fromJson(value);
        case 'TokenDTO':
          return TokenDTO.fromJson(value);
        case 'User':
          return User.fromJson(value);
        case 'UserWithRelations':
          return UserWithRelations.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);

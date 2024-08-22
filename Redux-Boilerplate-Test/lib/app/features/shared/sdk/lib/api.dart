//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';



part 'api/auth_controller_api.dart';
part 'api/blog_controller_api.dart';
part 'api/book_controller_api.dart';
part 'api/contact_controller_api.dart';
part 'api/ecm_address_controller_api.dart';
part 'api/ecm_discount_controller_api.dart';
part 'api/ecm_order_controller_api.dart';
part 'api/ecm_order_item_controller_api.dart';
part 'api/ecm_payment_controller_api.dart';
part 'api/ecm_product_controller_api.dart';
part 'api/ecm_shopping_cart_controller_api.dart';
part 'api/ecm_shopping_cart_item_controller_api.dart';
part 'api/ecm_transaction_controller_api.dart';
part 'api/faq_controller_api.dart';
part 'api/message_template_management_controller_api.dart';
part 'api/parent_controller_api.dart';
part 'api/ping_controller_api.dart';
part 'api/product_controller_api.dart';
part 'api/provider_controller_api.dart';
part 'api/review_controller_api.dart';
part 'api/search_controller_api.dart';
part 'api/slot_controller_api.dart';
part 'api/user_controller_api.dart';
part 'api/workflow_management_controller_api.dart';

part 'model/blog.dart';
part 'model/blog_fields.dart';
part 'model/blog_fields_one_of.dart';
part 'model/blog_filter.dart';
part 'model/blog_filter1.dart';
part 'model/blog_filter_order.dart';
part 'model/blog_partial.dart';
part 'model/blog_with_relations.dart';
part 'model/book.dart';
part 'model/book_fields.dart';
part 'model/book_fields_one_of.dart';
part 'model/book_filter.dart';
part 'model/book_filter1.dart';
part 'model/book_include_filter_inner.dart';
part 'model/book_include_filter_items.dart';
part 'model/book_partial.dart';
part 'model/book_scope_filter.dart';
part 'model/book_with_relations.dart';
part 'model/contact.dart';
part 'model/contact_fields.dart';
part 'model/contact_fields_one_of.dart';
part 'model/contact_filter.dart';
part 'model/contact_filter1.dart';
part 'model/contact_include_filter_inner.dart';
part 'model/contact_include_filter_items.dart';
part 'model/contact_partial.dart';
part 'model/contact_scope_filter.dart';
part 'model/contact_with_relations.dart';
part 'model/count.dart';
part 'model/credentials.dart';
part 'model/ecm_address.dart';
part 'model/ecm_address_fields.dart';
part 'model/ecm_address_fields_one_of.dart';
part 'model/ecm_address_filter.dart';
part 'model/ecm_address_filter1.dart';
part 'model/ecm_address_partial.dart';
part 'model/ecm_address_with_relations.dart';
part 'model/ecm_discount.dart';
part 'model/ecm_discount_fields.dart';
part 'model/ecm_discount_fields_one_of.dart';
part 'model/ecm_discount_filter.dart';
part 'model/ecm_discount_filter1.dart';
part 'model/ecm_discount_partial.dart';
part 'model/ecm_discount_with_relations.dart';
part 'model/ecm_order.dart';
part 'model/ecm_order_fields.dart';
part 'model/ecm_order_fields_one_of.dart';
part 'model/ecm_order_filter.dart';
part 'model/ecm_order_filter1.dart';
part 'model/ecm_order_include_filter_inner.dart';
part 'model/ecm_order_include_filter_items.dart';
part 'model/ecm_order_item.dart';
part 'model/ecm_order_item_fields.dart';
part 'model/ecm_order_item_fields_one_of.dart';
part 'model/ecm_order_item_filter.dart';
part 'model/ecm_order_item_filter1.dart';
part 'model/ecm_order_item_include_filter_inner.dart';
part 'model/ecm_order_item_include_filter_items.dart';
part 'model/ecm_order_item_partial.dart';
part 'model/ecm_order_item_scope_filter.dart';
part 'model/ecm_order_item_with_relations.dart';
part 'model/ecm_order_partial.dart';
part 'model/ecm_order_scope_filter.dart';
part 'model/ecm_order_with_relations.dart';
part 'model/ecm_payment.dart';
part 'model/ecm_payment_fields.dart';
part 'model/ecm_payment_fields_one_of.dart';
part 'model/ecm_payment_filter.dart';
part 'model/ecm_payment_filter1.dart';
part 'model/ecm_payment_partial.dart';
part 'model/ecm_payment_with_relations.dart';
part 'model/ecm_product.dart';
part 'model/ecm_product_fields.dart';
part 'model/ecm_product_fields_one_of.dart';
part 'model/ecm_product_filter.dart';
part 'model/ecm_product_filter1.dart';
part 'model/ecm_product_partial.dart';
part 'model/ecm_product_with_relations.dart';
part 'model/ecm_shopping_cart.dart';
part 'model/ecm_shopping_cart_fields.dart';
part 'model/ecm_shopping_cart_fields_one_of.dart';
part 'model/ecm_shopping_cart_filter.dart';
part 'model/ecm_shopping_cart_filter1.dart';
part 'model/ecm_shopping_cart_include_filter_inner.dart';
part 'model/ecm_shopping_cart_include_filter_items.dart';
part 'model/ecm_shopping_cart_item.dart';
part 'model/ecm_shopping_cart_item_fields.dart';
part 'model/ecm_shopping_cart_item_fields_one_of.dart';
part 'model/ecm_shopping_cart_item_filter.dart';
part 'model/ecm_shopping_cart_item_filter1.dart';
part 'model/ecm_shopping_cart_item_include_filter_inner.dart';
part 'model/ecm_shopping_cart_item_include_filter_items.dart';
part 'model/ecm_shopping_cart_item_partial.dart';
part 'model/ecm_shopping_cart_item_scope_filter.dart';
part 'model/ecm_shopping_cart_item_with_relations.dart';
part 'model/ecm_shopping_cart_partial.dart';
part 'model/ecm_shopping_cart_scope_filter.dart';
part 'model/ecm_shopping_cart_with_relations.dart';
part 'model/ecm_transaction.dart';
part 'model/ecm_transaction_fields.dart';
part 'model/ecm_transaction_fields_one_of.dart';
part 'model/ecm_transaction_filter.dart';
part 'model/ecm_transaction_filter1.dart';
part 'model/ecm_transaction_include_filter_inner.dart';
part 'model/ecm_transaction_include_filter_items.dart';
part 'model/ecm_transaction_partial.dart';
part 'model/ecm_transaction_scope_filter.dart';
part 'model/ecm_transaction_with_relations.dart';
part 'model/faq.dart';
part 'model/faq_fields.dart';
part 'model/faq_fields_one_of.dart';
part 'model/faq_filter.dart';
part 'model/faq_filter1.dart';
part 'model/faq_partial.dart';
part 'model/faq_with_relations.dart';
part 'model/new_blog.dart';
part 'model/new_book.dart';
part 'model/new_contact.dart';
part 'model/new_ecm_address.dart';
part 'model/new_ecm_discount.dart';
part 'model/new_ecm_order.dart';
part 'model/new_ecm_order_item.dart';
part 'model/new_ecm_payment.dart';
part 'model/new_ecm_product.dart';
part 'model/new_ecm_shopping_cart.dart';
part 'model/new_ecm_shopping_cart_item.dart';
part 'model/new_ecm_transaction.dart';
part 'model/new_faq.dart';
part 'model/new_parent.dart';
part 'model/new_product.dart';
part 'model/new_provider.dart';
part 'model/new_review.dart';
part 'model/new_search.dart';
part 'model/new_slot.dart';
part 'model/parent.dart';
part 'model/parent_fields.dart';
part 'model/parent_fields_one_of.dart';
part 'model/parent_filter.dart';
part 'model/parent_filter1.dart';
part 'model/parent_partial.dart';
part 'model/parent_with_relations.dart';
part 'model/ping_response.dart';
part 'model/ping_response_headers.dart';
part 'model/product.dart';
part 'model/product_fields.dart';
part 'model/product_fields_one_of.dart';
part 'model/product_filter.dart';
part 'model/product_filter1.dart';
part 'model/product_partial.dart';
part 'model/product_with_relations.dart';
part 'model/provider.dart';
part 'model/provider_fields.dart';
part 'model/provider_fields_one_of.dart';
part 'model/provider_filter.dart';
part 'model/provider_filter1.dart';
part 'model/provider_include_filter_inner.dart';
part 'model/provider_include_filter_items.dart';
part 'model/provider_partial.dart';
part 'model/provider_scope_filter.dart';
part 'model/provider_with_relations.dart';
part 'model/register_dto.dart';
part 'model/review.dart';
part 'model/review_fields.dart';
part 'model/review_fields_one_of.dart';
part 'model/review_filter.dart';
part 'model/review_filter1.dart';
part 'model/review_include_filter_inner.dart';
part 'model/review_include_filter_items.dart';
part 'model/review_partial.dart';
part 'model/review_scope_filter.dart';
part 'model/review_with_relations.dart';
part 'model/run_event_request_dto.dart';
part 'model/run_service_request_dto.dart';
part 'model/run_step_function_request_dto.dart';
part 'model/search.dart';
part 'model/search_fields.dart';
part 'model/search_fields_one_of.dart';
part 'model/search_filter.dart';
part 'model/search_filter1.dart';
part 'model/search_include_filter_inner.dart';
part 'model/search_include_filter_items.dart';
part 'model/search_partial.dart';
part 'model/search_scope_filter.dart';
part 'model/search_with_relations.dart';
part 'model/slot.dart';
part 'model/slot_fields.dart';
part 'model/slot_fields_one_of.dart';
part 'model/slot_filter.dart';
part 'model/slot_filter1.dart';
part 'model/slot_include_filter_inner.dart';
part 'model/slot_include_filter_items.dart';
part 'model/slot_partial.dart';
part 'model/slot_scope_filter.dart';
part 'model/slot_scope_filter_fields.dart';
part 'model/slot_with_relations.dart';
part 'model/token_dto.dart';
part 'model/user.dart';
part 'model/user_with_relations.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';

typedef Any = dynamic;
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
import 'dart:developer';
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

part 'api/application_controller_api.dart';
part 'api/auth_controller_api.dart';
part 'api/message_template_management_controller_api.dart';
part 'api/ping_controller_api.dart';
part 'api/workflow_management_controller_api.dart';
part 'api/xx_demographic_info_controller_api.dart';

part 'model/application.dart';
part 'model/application_fields.dart';
part 'model/application_fields_one_of.dart';
part 'model/application_filter.dart';
part 'model/application_filter1.dart';
part 'model/application_include_filter_inner.dart';
part 'model/application_include_filter_items.dart';
part 'model/application_partial.dart';
part 'model/application_scope_filter.dart';
part 'model/application_scope_filter_fields.dart';
part 'model/application_scope_filter_order.dart';
part 'model/application_with_relations.dart';
part 'model/count.dart';
part 'model/credentials.dart';
part 'model/new_application.dart';
part 'model/new_demographic_info.dart';
part 'model/ping_response.dart';
part 'model/ping_response_headers.dart';
part 'model/register_dto.dart';
part 'model/run_event_request_dto.dart';
part 'model/run_service_request_dto.dart';
part 'model/run_step_function_request_dto.dart';
part 'model/token_dto.dart';
part 'model/user.dart';
part 'model/user_with_relations.dart';
part 'model/xx_demographic_info.dart';
part 'model/xx_demographic_info_fields.dart';
part 'model/xx_demographic_info_fields_one_of.dart';
part 'model/xx_demographic_info_filter.dart';
part 'model/xx_demographic_info_filter1.dart';
part 'model/xx_demographic_info_partial.dart';
part 'model/xx_demographic_info_with_relations.dart';

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

bool _isEpochMarker(String? pattern) =>
    pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';

typedef Any = dynamic;

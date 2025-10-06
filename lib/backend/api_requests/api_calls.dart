import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';
import "package:utility_functions_library_8g4bud/backend/schema/structs/index.dart"
    as utility_functions_library_8g4bud_data_schema;
import 'package:utility_functions_library_8g4bud/app_constants.dart'
    as utility_functions_library_8g4bud_app_constant;
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_commons/api_requests/api_manager.dart';

import 'package:ff_commons/api_requests/api_paging_params.dart';

export 'package:ff_commons/api_requests/api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Password Recovery Group Code

class PasswordRecoveryGroup {
  static String getBaseUrl({
    String? baseurl,
  }) {
    baseurl ??= FFDevEnvironmentValues().baseurl;
    return 'https://${baseurl}.supabase.co/functions/v1/password_reset';
  }

  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static SendCodeCall sendCodeCall = SendCodeCall();
  static VerifyCodeCall verifyCodeCall = VerifyCodeCall();
  static ChangePasswordCall changePasswordCall = ChangePasswordCall();
}

class SendCodeCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? baseurl,
  }) async {
    baseurl ??= FFDevEnvironmentValues().baseurl;
    final baseUrl = PasswordRecoveryGroup.getBaseUrl(
      baseurl: baseurl,
    );

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendCode',
      apiUrl: '${baseUrl}/send_code',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VerifyCodeCall {
  Future<ApiCallResponse> call({
    String? email = '',
    int? code,
    String? baseurl,
  }) async {
    baseurl ??= FFDevEnvironmentValues().baseurl;
    final baseUrl = PasswordRecoveryGroup.getBaseUrl(
      baseurl: baseurl,
    );

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "code": "${code}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'verifyCode',
      apiUrl: '${baseUrl}/verify_code',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChangePasswordCall {
  Future<ApiCallResponse> call({
    String? email = '',
    int? code,
    String? password = '',
    String? baseurl,
  }) async {
    baseurl ??= FFDevEnvironmentValues().baseurl;
    final baseUrl = PasswordRecoveryGroup.getBaseUrl(
      baseurl: baseurl,
    );

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "code": "${code}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'changePassword',
      apiUrl: '${baseUrl}/change_password',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Password Recovery Group Code

/// Start Usuarios Group Code

class UsuariosGroup {
  static String getBaseUrl({
    String? baseurl,
    String? apikey,
  }) {
    baseurl ??= FFDevEnvironmentValues().baseurl;
    apikey ??= FFDevEnvironmentValues().apikey;
    return 'https://${baseurl}.supabase.co';
  }

  static Map<String, String> headers = {
    'Authorization': 'Bearer [apikey]',
    'apikey': '[apikey]',
    'Content-Type': 'application/json',
  };
  static UsuarioLogadoCall usuarioLogadoCall = UsuarioLogadoCall();
  static ListaDeUsuariosCall listaDeUsuariosCall = ListaDeUsuariosCall();
  static ListaDeMotoristasCall listaDeMotoristasCall = ListaDeMotoristasCall();
}

class UsuarioLogadoCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseurl,
    String? apikey,
  }) async {
    baseurl ??= FFDevEnvironmentValues().baseurl;
    apikey ??= FFDevEnvironmentValues().apikey;
    final baseUrl = UsuariosGroup.getBaseUrl(
      baseurl: baseurl,
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Usuario Logado',
      apiUrl: '${baseUrl}/rest/v1/users?select=*&id=eq.${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apikey}',
        'apikey': '${apikey}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListaDeUsuariosCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseurl,
    String? apikey,
  }) async {
    baseurl ??= FFDevEnvironmentValues().baseurl;
    apikey ??= FFDevEnvironmentValues().apikey;
    final baseUrl = UsuariosGroup.getBaseUrl(
      baseurl: baseurl,
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Lista de Usuarios',
      apiUrl: '${baseUrl}/rest/v1/users',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apikey}',
        'apikey': '${apikey}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListaDeMotoristasCall {
  Future<ApiCallResponse> call({
    String? baseurl,
    String? apikey,
  }) async {
    baseurl ??= FFDevEnvironmentValues().baseurl;
    apikey ??= FFDevEnvironmentValues().apikey;
    final baseUrl = UsuariosGroup.getBaseUrl(
      baseurl: baseurl,
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Lista de Motoristas',
      apiUrl: '${baseUrl}/functions/v1/drivers',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apikey}',
        'apikey': '${apikey}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Usuarios Group Code

/// Start Corridas Group Code

class CorridasGroup {
  static String getBaseUrl({
    String? baseurl,
    String? apikey,
  }) {
    baseurl ??= FFDevEnvironmentValues().baseurl;
    apikey ??= FFDevEnvironmentValues().apikey;
    return 'https://${baseurl}.supabase.co';
  }

  static Map<String, String> headers = {
    'Authorization': 'Bearer [apikey]',
    'apikey': '[apikey]',
    'Content-Type': 'application/json',
  };
  static CorridasComMotoristaCall corridasComMotoristaCall =
      CorridasComMotoristaCall();
  static CorridasCall corridasCall = CorridasCall();
  static ObterCorridaRealtimeCall obterCorridaRealtimeCall =
      ObterCorridaRealtimeCall();
  static ChamarMotoristasCall chamarMotoristasCall = ChamarMotoristasCall();
}

class CorridasComMotoristaCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseurl,
    String? apikey,
  }) async {
    baseurl ??= FFDevEnvironmentValues().baseurl;
    apikey ??= FFDevEnvironmentValues().apikey;
    final baseUrl = CorridasGroup.getBaseUrl(
      baseurl: baseurl,
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Corridas com Motorista',
      apiUrl: '${baseUrl}/functions/v1/rides',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apikey}',
        'apikey': '${apikey}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CorridasCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseurl,
    String? apikey,
  }) async {
    baseurl ??= FFDevEnvironmentValues().baseurl;
    apikey ??= FFDevEnvironmentValues().apikey;
    final baseUrl = CorridasGroup.getBaseUrl(
      baseurl: baseurl,
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Corridas',
      apiUrl: '${baseUrl}/rest/v1/rides',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apikey}',
        'apikey': '${apikey}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ObterCorridaRealtimeCall {
  Future<ApiCallResponse> call({
    String? rideId = '',
    String? baseurl,
    String? apikey,
  }) async {
    baseurl ??= FFDevEnvironmentValues().baseurl;
    apikey ??= FFDevEnvironmentValues().apikey;
    final baseUrl = CorridasGroup.getBaseUrl(
      baseurl: baseurl,
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "ride_id": "${escapeStringForJson(rideId)}",
  "limit": 1
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Obter Corrida Realtime',
      apiUrl: '${baseUrl}/functions/v1/get-rides',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apikey}',
        'apikey': '${apikey}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChamarMotoristasCall {
  Future<ApiCallResponse> call({
    String? ride = '',
    String? originLat = '',
    String? originLng = '',
    String? destinyLat = '',
    String? destinyLng = '',
    String? baseurl,
    String? apikey,
  }) async {
    baseurl ??= FFDevEnvironmentValues().baseurl;
    apikey ??= FFDevEnvironmentValues().apikey;
    final baseUrl = CorridasGroup.getBaseUrl(
      baseurl: baseurl,
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "ride_id": "${escapeStringForJson(ride)}",
  "origin_lat": "${escapeStringForJson(originLat)}",
  "origin_lng": "${escapeStringForJson(originLng)}",
  "destination_lat": "${escapeStringForJson(destinyLat)}",
  "destination_lng": "${escapeStringForJson(destinyLng)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Chamar motoristas',
      apiUrl: '${baseUrl}/functions/v1/notify-drivers',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apikey}',
        'apikey': '${apikey}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Corridas Group Code

/// Start Admin Dashboard Group Code

class AdminDashboardGroup {
  static String getBaseUrl({
    String? baseurl,
    String? apikey,
  }) {
    baseurl ??= FFDevEnvironmentValues().baseurl;
    apikey ??= FFDevEnvironmentValues().apikey;
    return 'https://${baseurl}.supabase.co';
  }

  static Map<String, String> headers = {
    'Authorization': 'Bearer [apikey]',
    'apikey': '[apikey]',
    'Content-Type': 'application/json',
  };
  static EstatisticasCall estatisticasCall = EstatisticasCall();
}

class EstatisticasCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseurl,
    String? apikey,
  }) async {
    baseurl ??= FFDevEnvironmentValues().baseurl;
    apikey ??= FFDevEnvironmentValues().apikey;
    final baseUrl = AdminDashboardGroup.getBaseUrl(
      baseurl: baseurl,
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Estatisticas',
      apiUrl: '${baseUrl}/functions/v1/stats',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apikey}',
        'apikey': '${apikey}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Admin Dashboard Group Code

/// Start Google API Group Code

class GoogleAPIGroup {
  static String getBaseUrl({
    String? baseurl,
    String? apikey,
  }) {
    baseurl ??= FFDevEnvironmentValues().baseurl;
    apikey ??= FFDevEnvironmentValues().anon;
    return 'https://${baseurl}.supabase.co/';
  }

  static Map<String, String> headers = {};
  static AddressSearchCall addressSearchCall = AddressSearchCall();
  static CreateRiderCall createRiderCall = CreateRiderCall();
  static PesquisaReversaDeEndereoCall pesquisaReversaDeEndereoCall =
      PesquisaReversaDeEndereoCall();
  static EnderecosFrequentesCall enderecosFrequentesCall =
      EnderecosFrequentesCall();
}

class AddressSearchCall {
  Future<ApiCallResponse> call({
    String? queryAddress = '',
    double? lat,
    double? lng,
    String? baseurl,
    String? apikey,
  }) async {
    baseurl ??= FFDevEnvironmentValues().baseurl;
    apikey ??= FFDevEnvironmentValues().anon;
    final baseUrl = GoogleAPIGroup.getBaseUrl(
      baseurl: baseurl,
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "query": "${escapeStringForJson(queryAddress)}",
  "location": {
    "lat": ${lat},
    "lng": ${lng}
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AddressSearch',
      apiUrl: '${baseUrl}functions/v1/address-search',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${apikey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateRiderCall {
  Future<ApiCallResponse> call({
    String? addressOrigin = '',
    String? addressDestination = '',
    String? paymentMethod = 'money',
    String? userId = '',
    String? baseurl,
    String? apikey,
  }) async {
    baseurl ??= FFDevEnvironmentValues().baseurl;
    apikey ??= FFDevEnvironmentValues().anon;
    final baseUrl = GoogleAPIGroup.getBaseUrl(
      baseurl: baseurl,
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "addressOrigin": "${escapeStringForJson(addressOrigin)}",
  "addressDestination": "${escapeStringForJson(addressDestination)}",
  "payment_method": "${escapeStringForJson(paymentMethod)}",
  "user_id": "${escapeStringForJson(userId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateRider',
      apiUrl: '${baseUrl}functions/v1/create-ride',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${apikey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PesquisaReversaDeEndereoCall {
  Future<ApiCallResponse> call({
    String? lat = '',
    String? lng = '',
    String? baseurl,
    String? apikey,
  }) async {
    baseurl ??= FFDevEnvironmentValues().baseurl;
    apikey ??= FFDevEnvironmentValues().anon;
    final baseUrl = GoogleAPIGroup.getBaseUrl(
      baseurl: baseurl,
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "lat": "${escapeStringForJson(lat)}",
  "lng": "${escapeStringForJson(lng)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Pesquisa Reversa de Endereo',
      apiUrl: '${baseUrl}functions/v1/reverse-geocode',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${apikey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EnderecosFrequentesCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? baseurl,
    String? apikey,
  }) async {
    baseurl ??= FFDevEnvironmentValues().baseurl;
    apikey ??= FFDevEnvironmentValues().anon;
    final baseUrl = GoogleAPIGroup.getBaseUrl(
      baseurl: baseurl,
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "user_id": "${escapeStringForJson(userId)}",
  "limit": 10
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Enderecos frequentes',
      apiUrl: '${baseUrl}functions/v1/top-addresses',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${apikey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Google API Group Code

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}

import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:convert';
import "package:utility_functions_library_8g4bud/backend/schema/structs/index.dart"
    as utility_functions_library_8g4bud_data_schema;
import 'package:utility_functions_library_8g4bud/app_constants.dart'
    as utility_functions_library_8g4bud_app_constant;
import 'package:ff_commons/api_requests/api_manager.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

Future atualizarDashAdmin(BuildContext context) async {
  ApiCallResponse? dashboard;
  ApiCallResponse? corridas;

  dashboard = await AdminDashboardGroup.estatisticasCall.call();

  if ((dashboard?.succeeded ?? true)) {
    FFAppState().DTEstatisticas =
        DTEstatisticasStruct.maybeFromMap((dashboard?.jsonBody ?? ''))!;
    FFAppState().update(() {});
  }
  corridas = await CorridasGroup.corridasComMotoristaCall.call();

  if ((corridas?.succeeded ?? true)) {
    FFAppState().DTRides = ((corridas?.jsonBody ?? '')
            .toList()
            .map<DTRidesStruct?>(DTRidesStruct.maybeFromMap)
            .toList() as Iterable<DTRidesStruct?>)
        .withoutNulls
        .toList()
        .cast<DTRidesStruct>();
    FFAppState().update(() {});
  }
}

Future<String?> updateRideRequest(BuildContext context) async {
  ApiCallResponse? apiResulty8u;

  apiResulty8u = await CorridasGroup.obterCorridaRealtimeCall.call(
    rideId: FFAppState().DTRideRequest.ride.id,
  );

  FFAppState().DTRideRequest =
      DTRideRequestStruct.maybeFromMap((apiResulty8u?.jsonBody ?? ''))!;
  FFAppState().update(() {});
  return FFAppState().DTRideRequest.ride.status;
}

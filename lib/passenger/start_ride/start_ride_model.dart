import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/header_mobil_min_widget.dart';
import '/components/loader_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import "package:utility_functions_library_8g4bud/backend/schema/structs/index.dart"
    as utility_functions_library_8g4bud_data_schema;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:utility_functions_library_8g4bud/app_constants.dart'
    as utility_functions_library_8g4bud_app_constant;
import 'start_ride_widget.dart' show StartRideWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StartRideModel extends FlutterFlowModel<StartRideWidget> {
  ///  Local state fields for this page.

  String? originAddress;

  String? destinationAddress;

  ResultsStruct? originSelected;
  void updateOriginSelectedStruct(Function(ResultsStruct) updateFn) {
    updateFn(originSelected ??= ResultsStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Pesquisa Reversa de Endereo)] action in startRide widget.
  ApiCallResponse? apiResults28;
  // Model for headerMobilMin component.
  late HeaderMobilMinModel headerMobilMinModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Stores action output result for [Backend Call - API (AddressSearch)] action in TextField widget.
  ApiCallResponse? apiResulttbw;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (AddressSearch)] action in TextField widget.
  ApiCallResponse? apiResulttbwCopy;
  // Stores action output result for [Backend Call - API (CreateRider)] action in Row widget.
  ApiCallResponse? rideRequest;

  @override
  void initState(BuildContext context) {
    headerMobilMinModel = createModel(context, () => HeaderMobilMinModel());
  }

  @override
  void dispose() {
    headerMobilMinModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }

  /// Action blocks.
  Future updateRide(BuildContext context) async {
    List<RidesRow>? updatedRide;

    updatedRide = await RidesTable().queryRows(
      queryFn: (q) => q.eqOrNull(
        'id',
        FFAppState().DTRideRequest.ride.id,
      ),
    );
    FFAppState().updateDTRideRequestStruct(
      (e) => e
        ..updateRide(
          (e) => e
            ..originAddress = updatedRide?.firstOrNull?.originAddress
            ..destinationAddress = updatedRide?.firstOrNull?.destinationAddress
            ..estimatedDistanceKm =
                updatedRide?.firstOrNull?.estimatedDistanceKm
            ..estimatedDurationMin =
                updatedRide?.firstOrNull?.estimatedDurationMin?.toString()
            ..updateOriginLatlng(
              (e) => e
                ..latitude = updatedRide?.firstOrNull?.originLatitude
                ..longitude = updatedRide?.firstOrNull?.originLongitude,
            )
            ..updateDestinationLatlng(
              (e) => e
                ..latitude = updatedRide?.firstOrNull?.destinationLatitude
                ..longitude = updatedRide?.firstOrNull?.destinationLongitude,
            )
            ..routePolyline = updatedRide?.firstOrNull?.routePolyline
            ..fareAmount = updatedRide?.firstOrNull?.fareAmount
            ..platformFee = updatedRide?.firstOrNull?.platformFee
            ..paymentMethod = updatedRide?.firstOrNull?.paymentMethod
            ..status = updatedRide?.firstOrNull?.status
            ..createdAt = updatedRide?.firstOrNull?.updatedAt?.toString(),
        ),
    );
    FFAppState().update(() {});
  }
}

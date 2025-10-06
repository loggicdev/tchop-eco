import '/auth/request_location/request_location_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:math';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'details_ride_widget.dart' show DetailsRideWidget;
import 'package:utility_functions_library_8g4bud/app_constants.dart'
    as utility_functions_library_8g4bud_app_constant;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailsRideModel extends FlutterFlowModel<DetailsRideWidget> {
  ///  Local state fields for this page.

  String rideStage = 'details';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - subscribeRide] action in detailsRide widget.
  dynamic? rideUpdate;
  // Stores action output result for [Backend Call - API (Chamar motoristas)] action in Row widget.
  ApiCallResponse? apiResultzwg;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

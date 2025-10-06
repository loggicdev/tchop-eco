import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:utility_functions_library_8g4bud/app_constants.dart'
    as utility_functions_library_8g4bud_app_constant;
import 'recovery_email_confirm_widget.dart' show RecoveryEmailConfirmWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RecoveryEmailConfirmModel
    extends FlutterFlowModel<RecoveryEmailConfirmWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (sendCode)] action in Button widget.
  ApiCallResponse? sendCode;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

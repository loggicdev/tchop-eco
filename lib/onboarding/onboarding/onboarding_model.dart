import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/onboarding/onb_step1/onb_step1_widget.dart';
import '/onboarding/onb_step2/onb_step2_widget.dart';
import '/onboarding/onb_step3/onb_step3_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'onboarding_widget.dart' show OnboardingWidget;
import 'package:utility_functions_library_8g4bud/app_constants.dart'
    as utility_functions_library_8g4bud_app_constant;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnboardingModel extends FlutterFlowModel<OnboardingWidget> {
  ///  Local state fields for this page.

  int step = 1;

  ///  State fields for stateful widgets in this page.

  // Model for onb_step1 component.
  late OnbStep1Model onbStep1Model;
  // Model for onb_step2 component.
  late OnbStep2Model onbStep2Model;
  // Model for onb_step3 component.
  late OnbStep3Model onbStep3Model;

  @override
  void initState(BuildContext context) {
    onbStep1Model = createModel(context, () => OnbStep1Model());
    onbStep2Model = createModel(context, () => OnbStep2Model());
    onbStep3Model = createModel(context, () => OnbStep3Model());
  }

  @override
  void dispose() {
    onbStep1Model.dispose();
    onbStep2Model.dispose();
    onbStep3Model.dispose();
  }
}

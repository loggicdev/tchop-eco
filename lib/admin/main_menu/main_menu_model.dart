import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'main_menu_widget.dart' show MainMenuWidget;
import 'package:utility_functions_library_8g4bud/app_constants.dart'
    as utility_functions_library_8g4bud_app_constant;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainMenuModel extends FlutterFlowModel<MainMenuWidget> {
  ///  Local state fields for this component.

  String menu = '';

  ///  State fields for stateful widgets in this component.

  // State field(s) for dash widget.
  bool dashHovered = false;
  // State field(s) for users widget.
  bool usersHovered = false;
  // State field(s) for drivers widget.
  bool driversHovered = false;
  // State field(s) for map widget.
  bool mapHovered = false;
  // State field(s) for vehicles widget.
  bool vehiclesHovered = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

import '/admin/divider/divider_widget.dart';
import '/admin/main_menu/main_menu_widget.dart';
import '/admin/top_bar/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'map_widget.dart' show MapWidget;
import 'package:utility_functions_library_8g4bud/app_constants.dart'
    as utility_functions_library_8g4bud_app_constant;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MapModel extends FlutterFlowModel<MapWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for topBar component.
  late TopBarModel topBarModel;
  // Model for main_menu component.
  late MainMenuModel mainMenuModel;
  // Model for divider component.
  late DividerModel dividerModel;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {
    topBarModel = createModel(context, () => TopBarModel());
    mainMenuModel = createModel(context, () => MainMenuModel());
    dividerModel = createModel(context, () => DividerModel());
  }

  @override
  void dispose() {
    topBarModel.dispose();
    mainMenuModel.dispose();
    dividerModel.dispose();
  }
}

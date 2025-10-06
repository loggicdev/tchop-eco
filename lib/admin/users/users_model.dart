import '/admin/divider/divider_widget.dart';
import '/admin/main_menu/main_menu_widget.dart';
import '/admin/status_users/status_users_widget.dart';
import '/admin/top_bar/top_bar_widget.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:utility_functions_library_8g4bud/app_constants.dart'
    as utility_functions_library_8g4bud_app_constant;
import 'users_widget.dart' show UsersWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UsersModel extends FlutterFlowModel<UsersWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for topBar component.
  late TopBarModel topBarModel;
  // Model for main_menu component.
  late MainMenuModel mainMenuModel;
  // Model for divider component.
  late DividerModel dividerModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ZzRidesStruct>();

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
    textFieldFocusNode?.dispose();
    textController?.dispose();

    paginatedDataTableController.dispose();
  }
}

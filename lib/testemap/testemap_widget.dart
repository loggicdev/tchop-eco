import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:utility_functions_library_8g4bud/app_constants.dart'
    as utility_functions_library_8g4bud_app_constant;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'testemap_model.dart';
export 'testemap_model.dart';

class TestemapWidget extends StatefulWidget {
  const TestemapWidget({super.key});

  static String routeName = 'testemap';
  static String routePath = '/testemap';

  @override
  State<TestemapWidget> createState() => _TestemapWidgetState();
}

class _TestemapWidgetState extends State<TestemapWidget> {
  late TestemapModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestemapModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).accent2,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 54.0,
            icon: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.white,
              size: 24.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.poppins(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 20.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 650.0,
                child: custom_widgets.RiderSelectionMap(
                  width: double.infinity,
                  height: 650.0,
                  userMarkerIcon:
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/txop-eco-fv8vna/assets/6q2yxkctr81x/Location.png',
                  rideMarkerIcon:
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/txop-eco-fv8vna/assets/oc77hkgf6dgc/tuktuk.png',
                  driverMarkerIcon:
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/txop-eco-fv8vna/assets/oc77hkgf6dgc/tuktuk.png',
                  lineColor: FlutterFlowTheme.of(context).primary,
                  lineWidth: 7.0,
                  enableRealTimeUpdates: true,
                  showDriverLocation: true,
                  userLocation: FFAppState().latlngrider,
                  rideLocation: FFAppState().latlng,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

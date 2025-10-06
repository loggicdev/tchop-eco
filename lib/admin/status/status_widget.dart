import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:utility_functions_library_8g4bud/app_constants.dart'
    as utility_functions_library_8g4bud_app_constant;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'status_model.dart';
export 'status_model.dart';

class StatusWidget extends StatefulWidget {
  const StatusWidget({
    super.key,
    this.status,
  });

  final String? status;

  @override
  State<StatusWidget> createState() => _StatusWidgetState();
}

class _StatusWidgetState extends State<StatusWidget> {
  late StatusModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.0,
      height: 26.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Color(0xFFCCCCD0),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 7.0,
            height: 7.0,
            decoration: BoxDecoration(
              color: () {
                if (widget!.status == 'completed') {
                  return Color(0xFF17B26A);
                } else if (widget!.status == 'cancelled') {
                  return Color(0xFFD6300F);
                } else if (widget!.status == 'pending') {
                  return Color(0xFFDFDC1B);
                } else {
                  return FlutterFlowTheme.of(context).primaryText;
                }
              }(),
              borderRadius: BorderRadius.circular(180.0),
            ),
          ),
          Flexible(
            child: Text(
              valueOrDefault<String>(
                () {
                  if (widget!.status == 'completed') {
                    return 'Finalizada';
                  } else if (widget!.status == 'cancelled') {
                    return 'Cancelada';
                  } else if (widget!.status == 'pending') {
                    return 'Pendente';
                  } else {
                    return '-';
                  }
                }(),
                '-',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    color: Color(0xFF344054),
                    fontSize: 12.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                  ),
            ),
          ),
        ].divide(SizedBox(width: 6.0)),
      ),
    );
  }
}

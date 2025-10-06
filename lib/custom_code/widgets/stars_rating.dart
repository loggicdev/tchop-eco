// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import "package:utility_functions_library_8g4bud/backend/schema/structs/index.dart"
    as utility_functions_library_8g4bud_data_schema;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom widgets
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'dart:math' as math;

class StarsRating extends StatefulWidget {
  const StarsRating({
    super.key,
    this.width,
    this.height,
    this.initialRating = 0.0,
    this.starCount = 5,
    this.starSize = 20.0,
    this.starColor,
    this.starOffColor,
    this.allowHalfRating = true,
    this.readOnly = false,
    this.showValueLabel = false,
  });

  final double? width;
  final double? height;
  final double initialRating;
  final int starCount;
  final double starSize;
  final Color? starColor;
  final Color? starOffColor;
  final bool allowHalfRating;
  final bool readOnly;
  final bool showValueLabel;

  @override
  State<StarsRating> createState() => _StarsRatingState();
}

class _StarsRatingState extends State<StarsRating> {
  late double _currentRating;

  @override
  void initState() {
    super.initState();
    _currentRating = widget.initialRating;
  }

  @override
  Widget build(BuildContext context) {
    // Calcular o tamanho máximo disponível para cada estrela
    final availableWidth =
        widget.width ?? MediaQuery.of(context).size.width * 0.8;
    final maxStarSize =
        math.min(widget.starSize, (availableWidth / widget.starCount) - 2);

    return Container(
      width: widget.width,
      height: widget.height,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(widget.starCount, (index) {
          final isActive = index < _currentRating.floor() ||
              (index == _currentRating.floor() && _currentRating % 1 > 0);
          final isHalfStar =
              index == _currentRating.floor() && _currentRating % 1 > 0;

          return GestureDetector(
            onTap: widget.readOnly
                ? null
                : () {
                    setState(() {
                      _currentRating = index + 1.0;
                    });
                  },
            child: Icon(
              isHalfStar
                  ? Icons.star_half
                  : (isActive ? Icons.star : Icons.star_border),
              color: isActive || isHalfStar
                  ? (widget.starColor ?? FlutterFlowTheme.of(context).warning)
                  : (widget.starOffColor ??
                      FlutterFlowTheme.of(context).alternate),
              size: maxStarSize,
            ),
          );
        }),
      ),
    );
  }
}

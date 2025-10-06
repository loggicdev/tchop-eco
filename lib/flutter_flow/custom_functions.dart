import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:ff_commons/flutter_flow/lat_lng.dart';
import 'package:ff_commons/flutter_flow/place.dart';
import 'package:ff_commons/flutter_flow/uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';
import "package:utility_functions_library_8g4bud/backend/schema/structs/index.dart"
    as utility_functions_library_8g4bud_data_schema;
import 'package:utility_functions_library_8g4bud/flutter_flow/custom_functions.dart'
    as utility_functions_library_8g4bud_functions;

String hideEmail(String email) {
  if (email == null || email.isEmpty || !email.contains('@')) {
    return email;
  }

  final parts = email.split('@');
  final localPart = parts[0];
  final domainPart = parts[1];

  if (localPart.isEmpty) {
    return email;
  }

  final firstChar = localPart[0];
  final asterisks = '*' * (localPart.length - 1);

  return '$firstChar$asterisks@$domainPart';
}

List<double>? splitLatLng(LatLng? currentLocation) {
  // split a latlng into a double list
  if (currentLocation == null) return null; // Return null if the input is null
  return [
    currentLocation.latitude,
    currentLocation.longitude
  ]; // Return a list with latitude and longitude
}

LatLng stringToLatLng(
  String? lat,
  String? lng,
) {
  // receive two strings lat and lng and return a latlng
  if (lat == null || lng == null) {
    throw ArgumentError('Both latitude and longitude must be provided.');
  }

  final double latitude = double.tryParse(lat) ??
      (throw FormatException('Invalid latitude format'));
  final double longitude = double.tryParse(lng) ??
      (throw FormatException('Invalid longitude format'));

  return LatLng(latitude, longitude);
}

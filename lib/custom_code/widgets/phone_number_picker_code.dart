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

import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumberPickerCode extends StatefulWidget {
  const PhoneNumberPickerCode({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<PhoneNumberPickerCode> createState() => _PhoneNumberPickerCodeState();
}

class _PhoneNumberPickerCodeState extends State<PhoneNumberPickerCode> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 210.0,
      child: IntlPhoneField(
        decoration: const InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
            borderSide: BorderSide(
              color: Color(0xFFB8BABD),
              width: 1.0,
              style: BorderStyle.solid,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
            borderSide: BorderSide(
              color: Color(0xFFB8BABD),
              width: 1.0,
              style: BorderStyle.solid,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
            borderSide: BorderSide(
              color: Color(0xFFB8BABD),
              width: 2.0,
              style: BorderStyle.solid,
            ),
          ),
        ),
        initialCountryCode: 'MZ',
        dropdownIcon: const Icon(
          Icons.arrow_drop_down,
          color: Color(0xFF757575),
        ),
        languageCode: "pt",
        onChanged: (phone) {
          FFAppState().update(() {
            FFAppState().phone = phone.completeNumber;
          });
          print(phone.completeNumber);
        },
        onCountryChanged: (country) {
          print('Country changed to: ' + country.name);
        },
      ),
    );
  }
}

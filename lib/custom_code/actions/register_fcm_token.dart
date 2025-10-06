// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import "package:utility_functions_library_8g4bud/backend/schema/structs/index.dart"
    as utility_functions_library_8g4bud_data_schema;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '../../auth/supabase_auth/auth_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'dart:io';

Future<void> registerFcmToken() async {
  try {
    if (currentUserUid == null || currentUserUid!.isEmpty) return;

    final fcmToken = await FirebaseMessaging.instance.getToken();
    if (fcmToken == null) return;

    final platform = Platform.isAndroid ? 'android' : 'ios';

    await Supabase.instance.client
        .from('push_devices')
        .update({'is_active': false})
        .eq('user_id', currentUserUid!)
        .neq('device_token', fcmToken);

    final existing = await Supabase.instance.client
        .from('push_devices')
        .select('id')
        .eq('user_id', currentUserUid!)
        .eq('device_token', fcmToken)
        .maybeSingle();

    if (existing != null) {
      await Supabase.instance.client
          .from('push_devices')
          .update({'device_type': platform, 'is_active': true}).eq(
              'id', existing['id']);
    } else {
      await Supabase.instance.client.from('push_devices').insert({
        'user_id': currentUserUid!,
        'device_token': fcmToken,
        'device_type': platform,
        'is_active': true,
      });
    }
  } catch (e) {
    print('Erro FCM: $e');
  }
}

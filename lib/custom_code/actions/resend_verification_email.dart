// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

Future<String?> resendVerificationEmail(String email) async {
  try {
    final supabase = SupaFlow.client;

    await supabase.auth.resend(
      type: OtpType.signup,
      email: email,
    );

    return null;
  } on AuthException catch (e) {
    return e.message;
  } on AuthException catch (e) {
    return "Error: ${e.message}";
  } catch (e) {
    return "Unexpected error: $e";
  }
}

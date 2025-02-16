// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_sign_in/google_sign_in.dart';

Future<String?> signinWithGoogle() async {
  try {
    // Must be your Web Client ID
    final GoogleSignIn googleSignIn = GoogleSignIn(
      serverClientId:
          '593702549940-o05dp44paranv7l365esg6021lpgob4j.apps.googleusercontent.com',
      scopes: [
        'email',
        'profile',
        'openid',
        'https://mail.google.com/',
        'https://www.googleapis.com/auth/calendar',
      ],
    );

    // Optionally sign out first to force fresh login
    await googleSignIn.signOut();

    final account = await googleSignIn.signIn();
    if (account == null) {
      throw Exception('User canceled the sign-in flow');
    }

    final GoogleSignInAuthentication auth = await account.authentication;

    // This is what you need to exchange for access/refresh tokens.
    final serverAuthCode = auth.serverAuthCode;

    if (serverAuthCode == null) {
      print('serverAuthCode is null');
      return null;
    }

    return serverAuthCode;
  } catch (e) {
    print('Error during Google Sign-In: $e');
    rethrow;
  }
}

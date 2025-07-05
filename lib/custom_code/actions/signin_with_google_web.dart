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

Future<String?> signinWithGoogleWeb() async {
  try {
    final GoogleSignIn googleSignIn = GoogleSignIn(
      clientId:
          "593702549940-o05dp44paranv7l365esg6021lpgob4j.apps.googleusercontent.com",
      scopes: <String>[
        'https://mail.google.com/', // Full Gmail access
        'https://www.googleapis.com/auth/calendar', // Full Calendar access
      ],
    );

    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    if (googleSignInAccount == null) {
      return null; // User canceled the sign-in
    }

    // This retrieves the authentication code directly.
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;
    return googleSignInAuthentication
        .idToken; // Returns the authentication code (idToken)
  } catch (error) {
    print('Error signing in with Google: $error');
    return null;
  }
}

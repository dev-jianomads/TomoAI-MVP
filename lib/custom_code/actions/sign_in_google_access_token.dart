// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_sign_in/google_sign_in.dart';

Future<String?> signInGoogleAccessToken() async {
  try {
    final GoogleSignIn googleSignIn = GoogleSignIn(
      clientId:
          '593702549940-o05dp44paranv7l365esg6021lpgob4j.apps.googleusercontent.com', // Ensure this clientId matches your platform configuration.
      scopes: <String>['https://www.googleapis.com/auth/gmail.readonly'],
    );

    // Check if already signed in
    if (await googleSignIn.isSignedIn()) {
      final currentAccount = googleSignIn.currentUser;
      final currentAuth = await currentAccount?.authentication;
      return currentAuth?.accessToken;
    }

    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    if (googleSignInAccount == null) {
      // User canceled the sign-in
      print('Google Sign-In was canceled by the user.');
      return null;
    }

    final GoogleSignInAuthentication? googleSignInAuthentication =
        await googleSignInAccount.authentication;
    return googleSignInAuthentication?.accessToken;
  } catch (e) {
    print('Error signing in with Google (AccessToken): $e');
    return null;
  }
}

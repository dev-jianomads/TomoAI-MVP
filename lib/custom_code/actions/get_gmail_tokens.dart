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

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> getGmailTokens(String authorizationCode) async {
  const clientId =
      '593702549940-o05dp44paranv7l365esg6021lpgob4j.apps.googleusercontent.com';
  const clientSecret = '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';
  const redirectUri = 'https://tomoaimvp-app-3sa6fr.flutterflow.app/access';

  final response = await http.post(
    Uri.parse('https://oauth2.googleapis.com/token'),
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
    },
    body: {
      'grant_type': 'authorization_code',
      'code': authorizationCode,
      'client_id': clientId,
      'client_secret': clientSecret,
      'redirect_uri': redirectUri,
    },
  );

  if (response.statusCode == 200) {
    final data = json.decode(response.body);

    // Save tokens to FFAppState
    FFAppState().update(() {
      FFAppState().accessToken = data['access_token'];
      FFAppState().refreshToken = data['refresh_token'];
    });
  } else {
    throw Exception('Failed to retrieve Gmail tokens: ${response.body}');
  }
}

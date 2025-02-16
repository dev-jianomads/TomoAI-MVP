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

Future<void> getGmailTokensIos(String? authorizationCode) async {
  // Use your Web client ID (the same one used in the sign-in step)
  const clientId =
      '593702549940-o05dp44paranv7l365esg6021lpgob4j.apps.googleusercontent.com';

  try {
    // 1. Handle case where authorizationCode is null
    if (authorizationCode == null) {
      print('Authorization code is null; cannot fetch tokens.');
      // Option 1: Return silently
      return;

      // Option 2: Throw an exception to signal an error:
      // throw Exception('Authorization code is null; cannot fetch tokens.');
    }

    // 2. Make the request to exchange the code for tokens
    final response = await http.post(
      Uri.parse('https://oauth2.googleapis.com/token'),
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: {
        'grant_type': 'authorization_code',
        'code': authorizationCode,
        'client_id': clientId,
        // For mobile apps, a client secret and redirect_uri are typically not required
      },
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      // Save tokens (e.g., to FFAppState or another storage mechanism)
      FFAppState().update(() {
        FFAppState().accessToken = data['access_token'];
        FFAppState().refreshToken = data['refresh_token'];
      });
    } else {
      print('Error: ${response.statusCode}');
      print('Response Body: ${response.body}');
      throw Exception('Failed to retrieve Gmail tokens: ${response.body}');
    }
  } catch (error) {
    print('Error occurred while fetching tokens: $error');
    throw Exception('Error fetching Gmail tokens: $error');
  }
}

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

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> getTokens(String authCode) async {
  if (authCode == null || authCode.isEmpty) {
    throw Exception('Authorization code is missing');
  }

  // Your Google client ID and secret
  const String clientId =
      '593702549940-o05dp44paranv7l365esg6021lpgob4j.apps.googleusercontent.com';
  const String clientSecret = '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';

  // Token endpoint
  const String tokenUrl = 'https://oauth2.googleapis.com/token';

  // Prepare the request body
  final Map<String, String> body = {
    'code': authCode,
    'client_id': clientId,
    'client_secret': clientSecret,
    'redirect_uri':
        'https://tomoaimvp-app-3sa6fr.flutterflow.app/access', // Ensure this matches what you registered in Google Cloud
    'grant_type': 'authorization_code',
  };

  try {
    // Make the HTTP POST request
    final http.Response response = await http.post(
      Uri.parse(tokenUrl),
      headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      body: body,
    );

    // Check the response status
    if (response.statusCode != 200) {
      // Log the error message for debugging
      final errorResponse = json.decode(response.body);
      print('Error fetching tokens: ${response.body}');
      throw Exception(
          'Failed to fetch tokens: ${errorResponse['error_description']}');
    }

    // Parse the response
    final Map<String, dynamic> responseData = json.decode(response.body);

    // Save tokens directly to FlutterFlow app state
    FFAppState().accessToken = responseData['access_token'];
    FFAppState().refreshToken = responseData['refresh_token'];
  } catch (e) {
    // Log the exception for debugging
    print('Exception occurred: $e');
    throw Exception('An error occurred while fetching tokens: $e');
  }
}

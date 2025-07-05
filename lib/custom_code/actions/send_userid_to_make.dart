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

Future sendUseridToMake(String? userId) async {
  if (userId == null || userId.isEmpty) {
    throw Exception('UserId cannot be null or empty');
  }

  // New API endpoint URL with user id in the path
  String url = 'https://utils-server-22rm.onrender.com/extract_tasks/$userId';

  // JSON data to send (ensuring both key and value are within double quotes)
  String data = jsonEncode({
    "user_id": "$userId",
  });

  // Send POST request to API endpoint
  var response = await http.post(
    Uri.parse(url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: data,
  );

  // Check if request was successful
  if (response.statusCode == 200) {
    // Parse response JSON if needed
    print('Request successful: ${response.body}');
    return jsonDecode(response.body);
  } else {
    // Request failed
    print('Request failed with status: ${response.statusCode}');
    print('Response body: ${response.body}');
    throw Exception('Failed to send user id to Make API');
  }
}

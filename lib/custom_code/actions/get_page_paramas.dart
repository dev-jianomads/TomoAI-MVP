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

import 'dart:html';

Future<void> getPageParamas(
  String? param1,
  String? param2,
) async {
  // null safety
  param1 ??= ''; // semi colon
  param2 ??= ''; // semi colon

  // get the current URL
  String currentUrl = window.location.href; // semi colon

  // Parse the URL

  Uri uri = Uri.parse(currentUrl);

  // get individual parameter values
  FFAppState().authCode = uri.queryParameters[param1] ?? ''; // semicolon
  FFAppState().score = uri.queryParameters[param2] ?? ''; // semcolon
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

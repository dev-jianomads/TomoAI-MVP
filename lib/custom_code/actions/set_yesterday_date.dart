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

Future<DateTime?> setYesterdayDate(DateTime? dateSelected) async {
  // Check if dateSelected is not null
  if (dateSelected == null) {
    throw Exception("dateSelected cannot be null");
  }

  // Subtract 1 day from dateSelected
  DateTime yesterday = dateSelected.subtract(Duration(days: 1));

  // Return the computed yesterday date
  return yesterday;
}

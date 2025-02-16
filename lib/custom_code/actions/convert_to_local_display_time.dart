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

import 'package:intl/intl.dart'; // Import for date formatting

Future<List<String>> convertToLocalDisplayTime(
    List<String>? timeSlotList) async {
  // Return an empty list if the input list is null or empty
  if (timeSlotList == null || timeSlotList.isEmpty) {
    return [];
  }

  // Convert each timeSlot to formatted local time string
  return timeSlotList.map((timeSlot) {
    try {
      // Convert the ISO string to local DateTime
      DateTime dateTime = DateTime.parse(timeSlot).toLocal();
      // Format the DateTime to 'hh:mm a' (12-hour format with AM/PM)
      return DateFormat('hh:mm a').format(dateTime);
    } catch (e) {
      // Handle parsing errors gracefully
      debugPrint('Invalid timeSlot format: $timeSlot - $e');
      return 'Invalid time'; // Fallback value in case of an error
    }
  }).toList();
}

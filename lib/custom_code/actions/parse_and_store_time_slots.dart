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

Future<List<TimeSlotsStruct>> parseAndStoreTimeSlots(
    List<dynamic>? data) async {
  // Null safety check
  data ??= <dynamic>[];

  // List to hold parsed TimeSlotsStruct objects
  List<TimeSlotsStruct> timeSlots = <TimeSlotsStruct>[];

  for (dynamic timeSlotData in data) {
    // Extract data from the dynamic object, ensuring null safety
    final String? rawDatetime = timeSlotData['raw_datetime']?.toString();
    final int? duration = timeSlotData['duration'] != null
        ? int.tryParse(timeSlotData['duration'].toString())
        : null;
    final String? displayTime = timeSlotData['display_time']?.toString();
    final String? displayDate = timeSlotData['display_date']?.toString();
    final String? displayDatetime =
        timeSlotData['display_datetime']?.toString();

    // Create a TimeSlotsStruct instance
    final TimeSlotsStruct timeSlot = TimeSlotsStruct(
      rawDatetime: rawDatetime,
      duration: duration,
      displayTime: displayTime,
      displayDate: displayDate,
      displayDatetime: displayDatetime,
    );

    // Add the instance to the list
    timeSlots.add(timeSlot);
  }

  // Return the list of time slots
  return timeSlots;
}

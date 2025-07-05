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

import '/backend/supabase/supabase.dart'; // <-- Where SupaFlow is defined
import 'dart:convert'; // If you need JSON decoding anywhere

Future fetchSenderEmail(String emailId) async {
  // 1) Use your custom class from supabase.dart
  final supabase = SupaFlow.client;

  try {
    // 2) Query the "emails" table, matching on "email_id"
    final rowData = await supabase
        .from('emails')
        .select('sender_email')
        .eq('email_id', emailId)
        .maybeSingle();

    // 3) If no row found, stop and log
    if (rowData == null) {
      debugPrint('No record found for emailId: $emailId');
      return;
    }

    // 4) Extract the sender_email
    final senderEmail = rowData['sender_email'];
    if (senderEmail == null) {
      debugPrint('No "sender_email" field for emailId: $emailId');
      return;
    }

    // 5) Store this in a String App State variable "senderEmail"
    // Make sure you have created that in the FlutterFlow App State panel.
    FFAppState().update(() {
      FFAppState().senderEmail = senderEmail;
    });

    debugPrint('Successfully stored senderEmail for emailId $emailId');
  } catch (e) {
    // 6) Handle errors (e.g., network or DB exceptions)
    debugPrint('Error fetching senderEmail: $e');
  }
}

import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/auth/firebase_auth/auth_util.dart';

String? demoFunction() {
  return ("Hello World from Cursor AI");
}

List<dynamic> listMessagesToListJSON(List<MessagesRecord>? messages) {
  messages ??= [];

  // Reverse the list
  final reversedMessages = messages.reversed.toList();

  final List<Map<String, dynamic>> jsonList = reversedMessages.map((message) {
    return {
      'role': message.role?.toString().split('.').last,
      'content': message.content,
    };
  }).toList();

  return jsonList;
}

String? convertToJson(String? inputString) {
  List<String> convertToList(String email) {
    return [email];
  }
}

String? convertToTitleCase(String? lowerCaseText) {
  if (lowerCaseText == null || lowerCaseText.isEmpty) {
    return '';
  }

  List<String> words = lowerCaseText.split(' ');
  for (int i = 0; i < words.length; i++) {
    String word = words[i];
    if (word.isNotEmpty) {
      words[i] = word[0].toUpperCase() + word.substring(1).toLowerCase();
    }
  }

  return words.join(' ');
}

int? getListCount(List<String>? countList) {
  int getListCount(List<String> tasks) {
    return tasks.length;
  }
}

String? asString(String? v) {
  if (v == null) return '';
  return v.toString();
}

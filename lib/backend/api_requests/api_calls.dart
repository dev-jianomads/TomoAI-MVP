import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Google Gmail Group Code

class GoogleGmailGroup {
  static String getBaseUrl() => 'www.googleapis.com';
  static Map<String, String> headers = {};
  static GetEmailIDsCall getEmailIDsCall = GetEmailIDsCall();
  static GetEmailsContentCall getEmailsContentCall = GetEmailsContentCall();
}

class GetEmailIDsCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? datetime = '',
  }) async {
    final baseUrl = GoogleGmailGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Email IDs',
      apiUrl:
          '$baseUrl/gmail/v1/users/me/messages?q=category:primary after:$datetime&maxResults=10',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $accessToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetEmailsContentCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? id = '',
  }) async {
    final baseUrl = GoogleGmailGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Emails Content',
      apiUrl: '$baseUrl/gmail/v1/users/me/messages/$id?format=full',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $accessToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Google Gmail Group Code

class GetAccessAndRefreshTokensCall {
  static Future<ApiCallResponse> call({
    String? authCode = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Access and Refresh tokens',
      apiUrl: 'https://oauth2.googleapis.com/token',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'code': authCode,
        'client_id':
            "593702549940-o05dp44paranv7l365esg6021lpgob4j.apps.googleusercontent.com",
        'client_secret': "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",
        'redirect_url': "https://tomoaimvp-app-3sa6fr.flutterflow.app/access",
        'grant_type': "authorization_code",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAccessFromRefreshTokenCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Access from Refresh token',
      apiUrl: 'https://oauth2.googleapis.com/token',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'client_id':
            "593702549940-o05dp44paranv7l365esg6021lpgob4j.apps.googleusercontent.com",
        'client_secret': "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",
        'grant_type': "refresh_token",
        'refresh_token': refreshToken,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

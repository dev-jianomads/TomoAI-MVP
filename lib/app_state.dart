import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _walkthroughComplete =
          prefs.getBool('ff_walkthroughComplete') ?? _walkthroughComplete;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _walkthroughComplete = false;
  bool get walkthroughComplete => _walkthroughComplete;
  set walkthroughComplete(bool value) {
    _walkthroughComplete = value;
    prefs.setBool('ff_walkthroughComplete', value);
  }

  String _authCode = ' ';
  String get authCode => _authCode;
  set authCode(String value) {
    _authCode = value;
  }

  String _score = ' ';
  String get score => _score;
  set score(String value) {
    _score = value;
  }

  String _refreshToken = '';
  String get refreshToken => _refreshToken;
  set refreshToken(String value) {
    _refreshToken = value;
  }

  String _accessToken = '';
  String get accessToken => _accessToken;
  set accessToken(String value) {
    _accessToken = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
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
    _safeInit(() {
      _digest = prefs.getBool('ff_digest') ?? _digest;
    });
    _safeInit(() {
      _digestNextShow = prefs.containsKey('ff_digestNextShow')
          ? DateTime.fromMillisecondsSinceEpoch(
              prefs.getInt('ff_digestNextShow')!)
          : _digestNextShow;
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

  int _expiresIn = 0;
  int get expiresIn => _expiresIn;
  set expiresIn(int value) {
    _expiresIn = value;
  }

  bool _digest = false;
  bool get digest => _digest;
  set digest(bool value) {
    _digest = value;
    prefs.setBool('ff_digest', value);
  }

  List<String> _TimeZoneId = [];
  List<String> get TimeZoneId => _TimeZoneId;
  set TimeZoneId(List<String> value) {
    _TimeZoneId = value;
  }

  void addToTimeZoneId(String value) {
    TimeZoneId.add(value);
  }

  void removeFromTimeZoneId(String value) {
    TimeZoneId.remove(value);
  }

  void removeAtIndexFromTimeZoneId(int index) {
    TimeZoneId.removeAt(index);
  }

  void updateTimeZoneIdAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    TimeZoneId[index] = updateFn(_TimeZoneId[index]);
  }

  void insertAtIndexInTimeZoneId(int index, String value) {
    TimeZoneId.insert(index, value);
  }

  DateTime? _digestNextShow;
  DateTime? get digestNextShow => _digestNextShow;
  set digestNextShow(DateTime? value) {
    _digestNextShow = value;
    value != null
        ? prefs.setInt('ff_digestNextShow', value.millisecondsSinceEpoch)
        : prefs.remove('ff_digestNextShow');
  }

  List<String> _feedbackDetail = [];
  List<String> get feedbackDetail => _feedbackDetail;
  set feedbackDetail(List<String> value) {
    _feedbackDetail = value;
  }

  void addToFeedbackDetail(String value) {
    feedbackDetail.add(value);
  }

  void removeFromFeedbackDetail(String value) {
    feedbackDetail.remove(value);
  }

  void removeAtIndexFromFeedbackDetail(int index) {
    feedbackDetail.removeAt(index);
  }

  void updateFeedbackDetailAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    feedbackDetail[index] = updateFn(_feedbackDetail[index]);
  }

  void insertAtIndexInFeedbackDetail(int index, String value) {
    feedbackDetail.insert(index, value);
  }

  bool _darkModeSetting = false;
  bool get darkModeSetting => _darkModeSetting;
  set darkModeSetting(bool value) {
    _darkModeSetting = value;
  }

  final _categoryQuery2Manager = FutureRequestManager<List<CategoryRecord>>();
  Future<List<CategoryRecord>> categoryQuery2({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<CategoryRecord>> Function() requestFn,
  }) =>
      _categoryQuery2Manager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCategoryQuery2Cache() => _categoryQuery2Manager.clear();
  void clearCategoryQuery2CacheKey(String? uniqueKey) =>
      _categoryQuery2Manager.clearRequest(uniqueKey);

  final _categoryQuery3Manager = FutureRequestManager<List<CategoryRecord>>();
  Future<List<CategoryRecord>> categoryQuery3({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<CategoryRecord>> Function() requestFn,
  }) =>
      _categoryQuery3Manager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCategoryQuery3Cache() => _categoryQuery3Manager.clear();
  void clearCategoryQuery3CacheKey(String? uniqueKey) =>
      _categoryQuery3Manager.clearRequest(uniqueKey);
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

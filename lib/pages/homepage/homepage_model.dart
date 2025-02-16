import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'homepage_widget.dart' show HomepageWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  ///  Local state fields for this page.

  DateTime? yesterdayDate;

  String taskId = 'taskId';

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? homepageWalkthroughController;
  // Stores action output result for [Backend Call - Query Rows] action in Homepage widget.
  List<UsersRow>? queryUserId;
  // Stores action output result for [Custom Action - setYesterdayDate] action in Homepage widget.
  DateTime? yesterday;
  // Stores action output result for [Custom Action - setTomorrowDate] action in Homepage widget.
  DateTime? tomorrow;
  Completer<List<TasksRow>>? requestCompleter;
  // Stores action output result for [Custom Action - getTimeZoneIdentifiers] action in Homepage widget.
  List<String>? listTimeZones;
  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController;
  bool firestoreRequestCompleted = false;
  String? firestoreRequestLastUniqueKey;

  @override
  void initState(BuildContext context) {
    swipeableStackController = CardSwiperController();
  }

  @override
  void dispose() {
    homepageWalkthroughController?.finish();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForFirestoreRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = firestoreRequestCompleted;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}

import '/backend/supabase/supabase.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'homepage_widget.dart' show HomepageWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? homepageWalkthroughController;
  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController;
  // Model for NavBar component.
  late NavBarModel navBarModel;
  // State field(s) for NameField widget.
  FocusNode? nameFieldFocusNode;
  TextEditingController? nameFieldTextController;
  String? Function(BuildContext, String?)? nameFieldTextControllerValidator;
  Completer<List<UsersRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {
    swipeableStackController = CardSwiperController();
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    homepageWalkthroughController?.finish();
    navBarModel.dispose();
    nameFieldFocusNode?.dispose();
    nameFieldTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}

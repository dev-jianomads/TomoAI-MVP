import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'dart:async';
import 'digest_view_widget.dart' show DigestViewWidget;
import 'package:flutter/material.dart';

class DigestViewModel extends FlutterFlowModel<DigestViewWidget> {
  ///  Local state fields for this page.

  bool sortAtoZ = true;

  DateTime? dateSelected;

  DateTime? yesterdayDate;

  String choice = 'all';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - setYesterdayDate] action in DigestView widget.
  DateTime? yesterday;
  Completer<List<DigestsRow>>? requestCompleter;
  // State field(s) for FocusChoiceChips widget.
  FormFieldController<List<String>>? focusChoiceChipsValueController;
  String? get focusChoiceChipsValue =>
      focusChoiceChipsValueController?.value?.firstOrNull;
  set focusChoiceChipsValue(String? val) =>
      focusChoiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

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
}

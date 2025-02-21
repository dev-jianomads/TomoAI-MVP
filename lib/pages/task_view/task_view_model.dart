import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import '/index.dart';
import 'task_view_widget.dart' show TaskViewWidget;
import 'package:flutter/material.dart';

class TaskViewModel extends FlutterFlowModel<TaskViewWidget> {
  ///  Local state fields for this page.

  bool sortAtoZ = true;

  DateTime? dateSelected;

  DateTime? yesterdayDate;

  String choice = 'all';

  String? taskId = 'taskId';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - setYesterdayDate] action in TaskView widget.
  DateTime? yesterday;
  DateTime? datePicked;
  // Stores action output result for [Custom Action - setYesterdayDate] action in DatePickerIcon widget.
  DateTime? yesterday2;
  // State field(s) for EmailChoiceChips widget.
  FormFieldController<List<String>>? emailChoiceChipsValueController;
  String? get emailChoiceChipsValue =>
      emailChoiceChipsValueController?.value?.firstOrNull;
  set emailChoiceChipsValue(String? val) =>
      emailChoiceChipsValueController?.value = val != null ? [val] : [];
  Completer<List<TasksRow>>? requestCompleter;

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

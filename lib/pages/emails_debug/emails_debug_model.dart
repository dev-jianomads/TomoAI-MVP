import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'emails_debug_widget.dart' show EmailsDebugWidget;
import 'package:flutter/material.dart';

class EmailsDebugModel extends FlutterFlowModel<EmailsDebugWidget> {
  ///  Local state fields for this page.

  bool sortAtoZ = true;

  DateTime? dateSelected;

  DateTime? yesterdayDate;

  String choice = 'all';

  String? taskId = 'taskId';

  String? taskTitle;

  ///  State fields for stateful widgets in this page.

  // State field(s) for CheckboxGroup2 widget.
  FormFieldController<List<String>>? checkboxGroup2ValueController;
  List<String>? get checkboxGroup2Values =>
      checkboxGroup2ValueController?.value;
  set checkboxGroup2Values(List<String>? v) =>
      checkboxGroup2ValueController?.value = v;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

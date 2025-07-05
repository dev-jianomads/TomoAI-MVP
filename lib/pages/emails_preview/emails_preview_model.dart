import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'emails_preview_widget.dart' show EmailsPreviewWidget;
import 'package:flutter/material.dart';

class EmailsPreviewModel extends FlutterFlowModel<EmailsPreviewWidget> {
  ///  Local state fields for this page.

  bool sortAtoZ = true;

  DateTime? dateSelected;

  DateTime? yesterdayDate;

  String choice = 'all';

  String? taskId = 'taskId';

  String? taskTitle;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

import '/flutter_flow/flutter_flow_util.dart';
import 'blacklist_view_widget.dart' show BlacklistViewWidget;
import 'package:flutter/material.dart';

class BlacklistViewModel extends FlutterFlowModel<BlacklistViewWidget> {
  ///  Local state fields for this page.

  bool sortAtoZ = true;

  DateTime? dateSelected;

  DateTime? yesterdayDate;

  String choice = 'all';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

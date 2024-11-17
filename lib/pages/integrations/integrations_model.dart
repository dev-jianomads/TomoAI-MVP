import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'integrations_widget.dart' show IntegrationsWidget;
import 'package:flutter/material.dart';

class IntegrationsModel extends FlutterFlowModel<IntegrationsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get Email IDs)] action in integrations widget.
  ApiCallResponse? emailIds;
  // Stores action output result for [Backend Call - API (Get Access from Refresh token)] action in integrations widget.
  ApiCallResponse? accessToken;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

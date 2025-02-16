import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress2 widget.
  FocusNode? emailAddress2FocusNode;
  TextEditingController? emailAddress2TextController;
  String? Function(BuildContext, String?)? emailAddress2TextControllerValidator;
  // State field(s) for signinpassword widget.
  FocusNode? signinpasswordFocusNode;
  TextEditingController? signinpasswordTextController;
  late bool signinpasswordVisibility;
  String? Function(BuildContext, String?)?
      signinpasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    signinpasswordVisibility = false;
  }

  @override
  void dispose() {
    emailAddress2FocusNode?.dispose();
    emailAddress2TextController?.dispose();

    signinpasswordFocusNode?.dispose();
    signinpasswordTextController?.dispose();
  }
}

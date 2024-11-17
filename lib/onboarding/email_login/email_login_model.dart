import '/flutter_flow/flutter_flow_util.dart';
import 'email_login_widget.dart' show EmailLoginWidget;
import 'package:flutter/material.dart';

class EmailLoginModel extends FlutterFlowModel<EmailLoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  // State field(s) for emailAddress1 widget.
  FocusNode? emailAddress1FocusNode;
  TextEditingController? emailAddress1TextController;
  String? Function(BuildContext, String?)? emailAddress1TextControllerValidator;
  // State field(s) for signuppassword widget.
  FocusNode? signuppasswordFocusNode;
  TextEditingController? signuppasswordTextController;
  late bool signuppasswordVisibility;
  String? Function(BuildContext, String?)?
      signuppasswordTextControllerValidator;
  // State field(s) for signupconfirmpassword widget.
  FocusNode? signupconfirmpasswordFocusNode;
  TextEditingController? signupconfirmpasswordTextController;
  late bool signupconfirmpasswordVisibility;
  String? Function(BuildContext, String?)?
      signupconfirmpasswordTextControllerValidator;
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
    signuppasswordVisibility = false;
    signupconfirmpasswordVisibility = false;
    signinpasswordVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    emailAddress1FocusNode?.dispose();
    emailAddress1TextController?.dispose();

    signuppasswordFocusNode?.dispose();
    signuppasswordTextController?.dispose();

    signupconfirmpasswordFocusNode?.dispose();
    signupconfirmpasswordTextController?.dispose();

    emailAddress2FocusNode?.dispose();
    emailAddress2TextController?.dispose();

    signinpasswordFocusNode?.dispose();
    signinpasswordTextController?.dispose();
  }
}

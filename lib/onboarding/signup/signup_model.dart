import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'signup_widget.dart' show SignupWidget;
import 'package:flutter/material.dart';

class SignupModel extends FlutterFlowModel<SignupWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for displayName widget.
  FocusNode? displayNameFocusNode;
  TextEditingController? displayNameTextController;
  String? Function(BuildContext, String?)? displayNameTextControllerValidator;
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
  // Stores action output result for [Custom Action - getTimezone] action in SignupButton widget.
  String? usertimezone1;
  // Stores action output result for [Custom Action - getTimezone] action in FirebaseSignupWithGoogle widget.
  String? usertimezone2;

  @override
  void initState(BuildContext context) {
    signuppasswordVisibility = false;
    signupconfirmpasswordVisibility = false;
  }

  @override
  void dispose() {
    displayNameFocusNode?.dispose();
    displayNameTextController?.dispose();

    emailAddress1FocusNode?.dispose();
    emailAddress1TextController?.dispose();

    signuppasswordFocusNode?.dispose();
    signuppasswordTextController?.dispose();

    signupconfirmpasswordFocusNode?.dispose();
    signupconfirmpasswordTextController?.dispose();
  }
}

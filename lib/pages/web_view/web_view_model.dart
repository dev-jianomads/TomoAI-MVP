import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'web_view_widget.dart' show WebViewWidget;
import 'package:flutter/material.dart';

class WebViewModel extends FlutterFlowModel<WebViewWidget> {
  ///  Local state fields for this page.

  bool sortAtoZ = true;

  DateTime? dateSelected;

  DateTime? yesterdayDate;

  String choice = 'all';

  String? taskId = 'taskId';

  bool draftResponse = false;

  bool emailSent = false;

  bool inviteSent = false;

  List<String> emailList = [];
  void addToEmailList(String item) => emailList.add(item);
  void removeFromEmailList(String item) => emailList.remove(item);
  void removeAtIndexFromEmailList(int index) => emailList.removeAt(index);
  void insertAtIndexInEmailList(int index, String item) =>
      emailList.insert(index, item);
  void updateEmailListAtIndex(int index, Function(String) updateFn) =>
      emailList[index] = updateFn(emailList[index]);

  bool addEmailState = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - setYesterdayDate] action in WebView widget.
  DateTime? yesterday;
  // Stores action output result for [Backend Call - Query Rows] action in WebView widget.
  List<TasksRow>? userTasks;
  // Stores action output result for [Custom Action - makeAgentHtml] action in WebView widget.
  String? initialoutputHTML;
  // State field(s) for WebCategoryChoiceChips widget.
  FormFieldController<List<String>>? webCategoryChoiceChipsValueController;
  String? get webCategoryChoiceChipsValue =>
      webCategoryChoiceChipsValueController?.value?.firstOrNull;
  set webCategoryChoiceChipsValue(String? val) =>
      webCategoryChoiceChipsValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Backend Call - API (Question Generator)] action in Row widget.
  ApiCallResponse? apiQuestionList;
  // Stores action output result for [Custom Action - makeAgentHtml] action in Row widget.
  String? outputAgentHtml;
  // Stores action output result for [Backend Call - Query Rows] action in Row widget.
  List<TasksRow>? selectedTask;
  // State field(s) for EditTextField widget.
  FocusNode? editTextFieldFocusNode;
  TextEditingController? editTextFieldTextController;
  String? Function(BuildContext, String?)? editTextFieldTextControllerValidator;
  // State field(s) for SendToField widget.
  FocusNode? sendToFieldFocusNode;
  TextEditingController? sendToFieldTextController;
  String? Function(BuildContext, String?)? sendToFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (Make send email)] action in IconButton widget.
  ApiCallResponse? apiResulth2e;
  // Stores action output result for [Backend Call - API (Make send email)] action in IconButton widget.
  ApiCallResponse? apiResulth3e;
  // State field(s) for AddToField widget.
  FocusNode? addToFieldFocusNode;
  TextEditingController? addToFieldTextController;
  String? Function(BuildContext, String?)? addToFieldTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for PromptField widget.
  FocusNode? promptFieldFocusNode;
  TextEditingController? promptFieldTextController;
  String? Function(BuildContext, String?)? promptFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (User Prompt)] action in IconButton widget.
  ApiCallResponse? promptApiResult;
  // Stores action output result for [Backend Call - API (User Prompt)] action in Row widget.
  ApiCallResponse? apiResulthat;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    editTextFieldFocusNode?.dispose();
    editTextFieldTextController?.dispose();

    sendToFieldFocusNode?.dispose();
    sendToFieldTextController?.dispose();

    addToFieldFocusNode?.dispose();
    addToFieldTextController?.dispose();

    promptFieldFocusNode?.dispose();
    promptFieldTextController?.dispose();
  }
}

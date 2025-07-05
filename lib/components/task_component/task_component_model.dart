import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'task_component_widget.dart' show TaskComponentWidget;
import 'package:flutter/material.dart';

class TaskComponentModel extends FlutterFlowModel<TaskComponentWidget> {
  ///  Local state fields for this component.

  bool? draftResponse = false;

  bool showSummary = false;

  bool showTimeslots = false;

  bool emailSent = false;

  bool inviteSent = false;

  List<String> timeSlotsString = [];
  void addToTimeSlotsString(String item) => timeSlotsString.add(item);
  void removeFromTimeSlotsString(String item) => timeSlotsString.remove(item);
  void removeAtIndexFromTimeSlotsString(int index) =>
      timeSlotsString.removeAt(index);
  void insertAtIndexInTimeSlotsString(int index, String item) =>
      timeSlotsString.insert(index, item);
  void updateTimeSlotsStringAtIndex(int index, Function(String) updateFn) =>
      timeSlotsString[index] = updateFn(timeSlotsString[index]);

  List<TimeSlotsStruct> timeSlotsv2 = [];
  void addToTimeSlotsv2(TimeSlotsStruct item) => timeSlotsv2.add(item);
  void removeFromTimeSlotsv2(TimeSlotsStruct item) => timeSlotsv2.remove(item);
  void removeAtIndexFromTimeSlotsv2(int index) => timeSlotsv2.removeAt(index);
  void insertAtIndexInTimeSlotsv2(int index, TimeSlotsStruct item) =>
      timeSlotsv2.insert(index, item);
  void updateTimeSlotsv2AtIndex(
          int index, Function(TimeSlotsStruct) updateFn) =>
      timeSlotsv2[index] = updateFn(timeSlotsv2[index]);

  String? selectedTimeSlotRaw;

  bool positiveFeedbackState = false;

  bool negativeFeedbackState = false;

  bool showFeedback = false;

  String? selectedTimeSlotSimple;

  bool alert = true;

  List<String> emailList = [];
  void addToEmailList(String item) => emailList.add(item);
  void removeFromEmailList(String item) => emailList.remove(item);
  void removeAtIndexFromEmailList(int index) => emailList.removeAt(index);
  void insertAtIndexInEmailList(int index, String item) =>
      emailList.insert(index, item);
  void updateEmailListAtIndex(int index, Function(String) updateFn) =>
      emailList[index] = updateFn(emailList[index]);

  bool addEmailState = false;

  List<ChatStruct> chat = [];
  void addToChat(ChatStruct item) => chat.add(item);
  void removeFromChat(ChatStruct item) => chat.remove(item);
  void removeAtIndexFromChat(int index) => chat.removeAt(index);
  void insertAtIndexInChat(int index, ChatStruct item) =>
      chat.insert(index, item);
  void updateChatAtIndex(int index, Function(ChatStruct) updateFn) =>
      chat[index] = updateFn(chat[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Make fetch free timeslots)] action in TaskComponent widget.
  ApiCallResponse? apiResulttimeslots;
  // Stores action output result for [Custom Action - parseAndStoreTimeSlots] action in TaskComponent widget.
  List<TimeSlotsStruct>? timeslotsoutput;
  // State field(s) for EditTextField widget.
  FocusNode? editTextFieldFocusNode;
  TextEditingController? editTextFieldTextController;
  String? Function(BuildContext, String?)? editTextFieldTextControllerValidator;
  // State field(s) for TimeSlotChoice widget.
  FormFieldController<List<String>>? timeSlotChoiceValueController;
  String? get timeSlotChoiceValue =>
      timeSlotChoiceValueController?.value?.firstOrNull;
  set timeSlotChoiceValue(String? val) =>
      timeSlotChoiceValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Backend Call - API (Make block time)] action in Button widget.
  ApiCallResponse? blocktimeApiResult;
  // Stores action output result for [Backend Call - API (Make block time)] action in Button widget.
  ApiCallResponse? scheduletimeApiResult;
  // State field(s) for UserPromptField widget.
  FocusNode? userPromptFieldFocusNode;
  TextEditingController? userPromptFieldTextController;
  String? Function(BuildContext, String?)?
      userPromptFieldTextControllerValidator;
  // Stores action output result for [AI Agent - Send Message to Scheduler] action in UserPromptField widget.
  Map<String, dynamic>? agentResponse2;
  // Stores action output result for [AI Agent - Send Message to Scheduler] action in IconButton widget.
  Map<String, dynamic>? agentResponse;
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
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController;
  List<String>? get checkboxGroupValues => checkboxGroupValueController?.value;
  set checkboxGroupValues(List<String>? v) =>
      checkboxGroupValueController?.value = v;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    editTextFieldFocusNode?.dispose();
    editTextFieldTextController?.dispose();

    userPromptFieldFocusNode?.dispose();
    userPromptFieldTextController?.dispose();

    sendToFieldFocusNode?.dispose();
    sendToFieldTextController?.dispose();

    addToFieldFocusNode?.dispose();
    addToFieldTextController?.dispose();
  }
}

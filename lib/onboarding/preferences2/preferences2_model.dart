import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'preferences2_widget.dart' show Preferences2Widget;
import 'package:flutter/material.dart';

class Preferences2Model extends FlutterFlowModel<Preferences2Widget> {
  ///  Local state fields for this page.

  List<MessagesRecord> messages = [];
  void addToMessages(MessagesRecord item) => messages.add(item);
  void removeFromMessages(MessagesRecord item) => messages.remove(item);
  void removeAtIndexFromMessages(int index) => messages.removeAt(index);
  void insertAtIndexInMessages(int index, MessagesRecord item) =>
      messages.insert(index, item);
  void updateMessagesAtIndex(int index, Function(MessagesRecord) updateFn) =>
      messages[index] = updateFn(messages[index]);

  DocumentReference? chatRef;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Prompt widget.
  FocusNode? promptFocusNode;
  TextEditingController? promptTextController;
  String? Function(BuildContext, String?)? promptTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Send widget.
  MessagesRecord? ongoingChatNewMessage;
  // Stores action output result for [Firestore Query - Query a collection] action in Send widget.
  List<MessagesRecord>? ongoingChatUserMessage;
  // Stores action output result for [Backend Call - API (createChatCompletion)] action in Send widget.
  ApiCallResponse? ongoingChatResponse;
  // Stores action output result for [Backend Call - Create Document] action in Send widget.
  MessagesRecord? ongoingChatAssistantDoc;
  // Stores action output result for [Firestore Query - Query a collection] action in Send widget.
  List<MessagesRecord>? ongoingChatAllMessages;
  // Stores action output result for [Backend Call - Create Document] action in Send widget.
  ChatsRecord? newChatDoc;
  // Stores action output result for [Backend Call - Create Document] action in Send widget.
  MessagesRecord? newChatNewMessage;
  // Stores action output result for [Backend Call - API (createChatCompletion)] action in Send widget.
  ApiCallResponse? newChatResponse;
  // Stores action output result for [Backend Call - Create Document] action in Send widget.
  MessagesRecord? newChatAssistantDoc;
  // Stores action output result for [Firestore Query - Query a collection] action in Send widget.
  List<MessagesRecord>? newChatAllMessages;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    promptFocusNode?.dispose();
    promptTextController?.dispose();
  }
}

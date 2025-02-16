import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tomochat_widget.dart' show TomochatWidget;
import 'package:flutter/material.dart';

class TomochatModel extends FlutterFlowModel<TomochatWidget> {
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

  String? sessionRef;

  String? sessionId;

  List<ConversationRow> conversation = [];
  void addToConversation(ConversationRow item) => conversation.add(item);
  void removeFromConversation(ConversationRow item) =>
      conversation.remove(item);
  void removeAtIndexFromConversation(int index) => conversation.removeAt(index);
  void insertAtIndexInConversation(int index, ConversationRow item) =>
      conversation.insert(index, item);
  void updateConversationAtIndex(
          int index, Function(ConversationRow) updateFn) =>
      conversation[index] = updateFn(conversation[index]);

  ConversationRow? latestSystemChat;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in tomochat widget.
  List<ChatRow>? chatResult;
  // Stores action output result for [Backend Call - Query Rows] action in tomochat widget.
  List<ConversationRow>? conversationResult;
  // State field(s) for scrollableColumn widget.
  ScrollController? scrollableColumn;
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // State field(s) for Prompt widget.
  FocusNode? promptFocusNode;
  TextEditingController? promptTextController;
  String? Function(BuildContext, String?)? promptTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Send widget.
  MessagesRecord? ongoingChatNewMessage;
  // Stores action output result for [Firestore Query - Query a collection] action in Send widget.
  List<MessagesRecord>? ongoingChatUserMessage;
  // Stores action output result for [Backend Call - API (ChatCompletion)] action in Send widget.
  ApiCallResponse? lfOngoingChatResponse;
  // Stores action output result for [Backend Call - Create Document] action in Send widget.
  MessagesRecord? ongoingChatAssistantDoc;
  // Stores action output result for [Firestore Query - Query a collection] action in Send widget.
  List<MessagesRecord>? ongoingChatAllMessages;
  // Stores action output result for [Backend Call - Create Document] action in Send widget.
  ChatsRecord? newChatDoc;
  // Stores action output result for [Backend Call - Create Document] action in Send widget.
  MessagesRecord? newChatNewMessage;
  // Stores action output result for [Backend Call - API (ChatCompletion)] action in Send widget.
  ApiCallResponse? lfNewChatResponse;
  // Stores action output result for [Backend Call - Create Document] action in Send widget.
  MessagesRecord? newChatAssistantDoc;
  // Stores action output result for [Firestore Query - Query a collection] action in Send widget.
  List<MessagesRecord>? newChatAllMessages;
  // Stores action output result for [Backend Call - Insert Row] action in Send widget.
  ConversationRow? userConversationResult;
  // Stores action output result for [Backend Call - API (ChatCompletion)] action in Send widget.
  ApiCallResponse? lfChatResponse;
  // Stores action output result for [Backend Call - Insert Row] action in Send widget.
  ConversationRow? latestSystemChatResult;

  @override
  void initState(BuildContext context) {
    scrollableColumn = ScrollController();
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    scrollableColumn?.dispose();
    listViewController?.dispose();
    promptFocusNode?.dispose();
    promptTextController?.dispose();
  }
}

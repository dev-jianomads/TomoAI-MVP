import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/components/chat_bubbles/chat_bubbles_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'tomochat_original_model.dart';
export 'tomochat_original_model.dart';

class TomochatOriginalWidget extends StatefulWidget {
  const TomochatOriginalWidget({
    super.key,
    required this.tasks,
    required this.email,
  });

  final TasksRow? tasks;
  final EmailsRow? email;

  static String routeName = 'tomochatOriginal';
  static String routePath = '/tomochatOriginal';

  @override
  State<TomochatOriginalWidget> createState() => _TomochatOriginalWidgetState();
}

class _TomochatOriginalWidgetState extends State<TomochatOriginalWidget>
    with TickerProviderStateMixin {
  late TomochatOriginalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TomochatOriginalModel());

    _model.promptTextController ??= TextEditingController();
    _model.promptFocusNode ??= FocusNode();

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, 41.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, 41.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, 41.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, 41.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'tomochatOriginal',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              actions: [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Text(
                                  'Tomo AI',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 30.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation1']!),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  'Tomo is here to assist you',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation2']!),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.tasks?.description,
                                    '[task]',
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation3']!),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.email?.senderName,
                                    '[sender_name]',
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation4']!),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 30.0, 0.0, 0.0),
                              child: Container(
                                width: 360.0,
                                height: 400.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Builder(
                                          builder: (context) {
                                            final messageItem =
                                                _model.messages.toList();

                                            return ListView.builder(
                                              padding: EdgeInsets.zero,
                                              reverse: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: messageItem.length,
                                              itemBuilder:
                                                  (context, messageItemIndex) {
                                                final messageItemItem =
                                                    messageItem[
                                                        messageItemIndex];
                                                return Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 0.0, 0.0),
                                                  child: ChatBubblesWidget(
                                                    key: Key(
                                                        'Keytji_${messageItemIndex}_of_${messageItem.length}'),
                                                    messages: messageItemItem,
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 310.0,
                                              child: TextFormField(
                                                controller:
                                                    _model.promptTextController,
                                                focusNode:
                                                    _model.promptFocusNode,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintText:
                                                      'Your answers here...',
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x7FADAFBB),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                maxLines: 3,
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .promptTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if ((_model.chatRef != null) &&
                                                    (_model.sessionRef !=
                                                            null &&
                                                        _model.sessionRef !=
                                                            '')) {
                                                  // DB - Message (User)

                                                  var messagesRecordReference1 =
                                                      MessagesRecord.createDoc(
                                                          _model.chatRef!);
                                                  await messagesRecordReference1
                                                      .set(
                                                          createMessagesRecordData(
                                                    created:
                                                        getCurrentTimestamp,
                                                    role: Role.user,
                                                    content: _model
                                                        .promptTextController
                                                        .text,
                                                    sessionId:
                                                        _model.sessionRef,
                                                  ));
                                                  _model.ongoingChatNewMessage =
                                                      MessagesRecord
                                                          .getDocumentFromData(
                                                              createMessagesRecordData(
                                                                created:
                                                                    getCurrentTimestamp,
                                                                role: Role.user,
                                                                content: _model
                                                                    .promptTextController
                                                                    .text,
                                                                sessionId: _model
                                                                    .sessionRef,
                                                              ),
                                                              messagesRecordReference1);
                                                  _model.ongoingChatUserMessage =
                                                      await queryMessagesRecordOnce(
                                                    parent: _model.chatRef,
                                                    queryBuilder:
                                                        (messagesRecord) =>
                                                            messagesRecord
                                                                .where(
                                                                  'sessionId',
                                                                  isEqualTo: _model
                                                                      .sessionRef,
                                                                )
                                                                .orderBy(
                                                                    'created',
                                                                    descending:
                                                                        true),
                                                  );
                                                  // UI - Messages
                                                  _model.messages = _model
                                                      .ongoingChatUserMessage!
                                                      .toList()
                                                      .cast<MessagesRecord>();
                                                  safeSetState(() {});
                                                  // LF API
                                                  _model.lfOngoingChatResponse =
                                                      await LangflowAPIGroup
                                                          .chatCompletionCall
                                                          .call(
                                                    message: _model
                                                        .promptTextController
                                                        .text,
                                                  );

                                                  safeSetState(() {
                                                    _model.promptTextController
                                                        ?.clear();
                                                  });
                                                  if ((_model
                                                          .lfOngoingChatResponse
                                                          ?.succeeded ??
                                                      true)) {
                                                    // DB - Message (Assistant)

                                                    var messagesRecordReference2 =
                                                        MessagesRecord
                                                            .createDoc(_model
                                                                .chatRef!);
                                                    await messagesRecordReference2
                                                        .set(
                                                            createMessagesRecordData(
                                                      created:
                                                          getCurrentTimestamp,
                                                      role: Role.assistant,
                                                      content: LangflowAPIGroup
                                                          .chatCompletionCall
                                                          .message(
                                                        (_model.lfOngoingChatResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      sessionId:
                                                          _model.sessionRef,
                                                    ));
                                                    _model.ongoingChatAssistantDoc =
                                                        MessagesRecord
                                                            .getDocumentFromData(
                                                                createMessagesRecordData(
                                                                  created:
                                                                      getCurrentTimestamp,
                                                                  role: Role
                                                                      .assistant,
                                                                  content: LangflowAPIGroup
                                                                      .chatCompletionCall
                                                                      .message(
                                                                    (_model.lfOngoingChatResponse
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  sessionId: _model
                                                                      .sessionRef,
                                                                ),
                                                                messagesRecordReference2);
                                                    // DB - Collection (Messages)
                                                    _model.ongoingChatAllMessages =
                                                        await queryMessagesRecordOnce(
                                                      parent: _model.chatRef,
                                                      queryBuilder:
                                                          (messagesRecord) =>
                                                              messagesRecord
                                                                  .where(
                                                                    'sessionId',
                                                                    isEqualTo:
                                                                        _model
                                                                            .sessionRef,
                                                                  )
                                                                  .orderBy(
                                                                      'created',
                                                                      descending:
                                                                          true),
                                                    );
                                                    // UI - Messages
                                                    _model.messages = _model
                                                        .ongoingChatAllMessages!
                                                        .toList()
                                                        .cast<MessagesRecord>();
                                                    safeSetState(() {});
                                                  }
                                                } else {
                                                  // DB - ChatDoc

                                                  var chatsRecordReference =
                                                      ChatsRecord.collection
                                                          .doc();
                                                  await chatsRecordReference
                                                      .set(
                                                          createChatsRecordData(
                                                    uid: currentUserReference,
                                                    timestamp:
                                                        getCurrentTimestamp,
                                                  ));
                                                  _model.newChatDoc = ChatsRecord
                                                      .getDocumentFromData(
                                                          createChatsRecordData(
                                                            uid:
                                                                currentUserReference,
                                                            timestamp:
                                                                getCurrentTimestamp,
                                                          ),
                                                          chatsRecordReference);
                                                  // State - ChatDoc
                                                  _model.chatRef = _model
                                                      .newChatDoc?.reference;
                                                  // DB - Message (User)

                                                  var messagesRecordReference3 =
                                                      MessagesRecord.createDoc(
                                                          _model.chatRef!);
                                                  await messagesRecordReference3
                                                      .set(
                                                          createMessagesRecordData(
                                                    created:
                                                        getCurrentTimestamp,
                                                    role: Role.user,
                                                    content: _model
                                                        .promptTextController
                                                        .text,
                                                  ));
                                                  _model.newChatNewMessage =
                                                      MessagesRecord
                                                          .getDocumentFromData(
                                                              createMessagesRecordData(
                                                                created:
                                                                    getCurrentTimestamp,
                                                                role: Role.user,
                                                                content: _model
                                                                    .promptTextController
                                                                    .text,
                                                              ),
                                                              messagesRecordReference3);
                                                  // UI - Messages
                                                  _model.addToMessages(_model
                                                      .newChatNewMessage!);
                                                  safeSetState(() {});
                                                  // LF API
                                                  _model.lfNewChatResponse =
                                                      await LangflowAPIGroup
                                                          .chatCompletionCall
                                                          .call(
                                                    message: _model
                                                        .promptTextController
                                                        .text,
                                                  );

                                                  safeSetState(() {
                                                    _model.promptTextController
                                                        ?.clear();
                                                  });
                                                  if ((_model.lfNewChatResponse
                                                          ?.succeeded ??
                                                      true)) {
                                                    // DB - Message (Assistant)

                                                    var messagesRecordReference4 =
                                                        MessagesRecord
                                                            .createDoc(_model
                                                                .chatRef!);
                                                    await messagesRecordReference4
                                                        .set(
                                                            createMessagesRecordData(
                                                      created:
                                                          getCurrentTimestamp,
                                                      role: Role.assistant,
                                                      content: LangflowAPIGroup
                                                          .chatCompletionCall
                                                          .message(
                                                        (_model.lfNewChatResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      sessionId: LangflowAPIGroup
                                                          .chatCompletionCall
                                                          .sessionId(
                                                        (_model.lfNewChatResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                    ));
                                                    _model.newChatAssistantDoc =
                                                        MessagesRecord
                                                            .getDocumentFromData(
                                                                createMessagesRecordData(
                                                                  created:
                                                                      getCurrentTimestamp,
                                                                  role: Role
                                                                      .assistant,
                                                                  content: LangflowAPIGroup
                                                                      .chatCompletionCall
                                                                      .message(
                                                                    (_model.lfNewChatResponse
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  sessionId: LangflowAPIGroup
                                                                      .chatCompletionCall
                                                                      .sessionId(
                                                                    (_model.lfNewChatResponse
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                ),
                                                                messagesRecordReference4);
                                                    // Set sessionRef
                                                    _model.sessionRef =
                                                        LangflowAPIGroup
                                                            .chatCompletionCall
                                                            .sessionId(
                                                      (_model.lfNewChatResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    );
                                                    safeSetState(() {});
                                                    // Add sessionId to ChatRef

                                                    await _model.chatRef!.update(
                                                        createChatsRecordData(
                                                      sessionId: LangflowAPIGroup
                                                          .chatCompletionCall
                                                          .sessionId(
                                                        (_model.lfNewChatResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                    ));
                                                    // Add sessionId to UserMsg

                                                    await _model
                                                        .newChatNewMessage!
                                                        .reference
                                                        .update(
                                                            createMessagesRecordData(
                                                      sessionId:
                                                          _model.sessionRef,
                                                    ));
                                                    // DB - Collection (Messages)
                                                    _model.newChatAllMessages =
                                                        await queryMessagesRecordOnce(
                                                      parent: _model.chatRef,
                                                      queryBuilder:
                                                          (messagesRecord) =>
                                                              messagesRecord
                                                                  .where(
                                                                    'sessionId',
                                                                    isEqualTo:
                                                                        _model
                                                                            .sessionRef,
                                                                  )
                                                                  .orderBy(
                                                                      'created',
                                                                      descending:
                                                                          true),
                                                    );
                                                    // UI - Messages
                                                    _model.messages = _model
                                                        .newChatAllMessages!
                                                        .toList()
                                                        .cast<MessagesRecord>();
                                                    safeSetState(() {});
                                                  }
                                                }

                                                safeSetState(() {});
                                              },
                                              child: Container(
                                                width: 34.0,
                                                height: 34.0,
                                                decoration: BoxDecoration(),
                                                child: Icon(
                                                  Icons.send,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

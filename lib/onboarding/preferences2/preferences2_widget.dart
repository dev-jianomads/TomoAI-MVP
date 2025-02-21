import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/components/chat_bubbles/chat_bubbles_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'preferences2_model.dart';
export 'preferences2_model.dart';

class Preferences2Widget extends StatefulWidget {
  const Preferences2Widget({super.key});

  static String routeName = 'Preferences2';
  static String routePath = '/preferences2';

  @override
  State<Preferences2Widget> createState() => _Preferences2WidgetState();
}

class _Preferences2WidgetState extends State<Preferences2Widget>
    with TickerProviderStateMixin {
  late Preferences2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Preferences2Model());

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
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 650.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, 41.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 650.0.ms,
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
        title: 'Preferences2',
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
                                  'Your preferences',
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
                                  'Tell Tomo your preferences and it will start prioritising tasks based on them!',
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
                                                        'Keyhg2_${messageItemIndex}_of_${messageItem.length}'),
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
                                                if (_model.chatRef != null) {
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
                                                              ),
                                                              messagesRecordReference1);
                                                  _model.ongoingChatUserMessage =
                                                      await queryMessagesRecordOnce(
                                                    parent: _model.chatRef,
                                                    queryBuilder:
                                                        (messagesRecord) =>
                                                            messagesRecord
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
                                                  // ChatGPT API
                                                  _model.ongoingChatResponse =
                                                      await OpenAIAPIGroup
                                                          .createChatCompletionCall
                                                          .call(
                                                    promptJson: functions
                                                        .listMessagesToListJSON(
                                                            _model.messages
                                                                .toList()),
                                                  );

                                                  safeSetState(() {
                                                    _model.promptTextController
                                                        ?.clear();
                                                  });
                                                  if ((_model
                                                          .ongoingChatResponse
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
                                                      content: valueOrDefault<
                                                          String>(
                                                        GptResponseStruct
                                                                .maybeFromMap((_model
                                                                        .ongoingChatResponse
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.choices
                                                            .firstOrNull
                                                            ?.message
                                                            .content,
                                                        'message',
                                                      ),
                                                    ));
                                                    _model.ongoingChatAssistantDoc =
                                                        MessagesRecord
                                                            .getDocumentFromData(
                                                                createMessagesRecordData(
                                                                  created:
                                                                      getCurrentTimestamp,
                                                                  role: Role
                                                                      .assistant,
                                                                  content:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    GptResponseStruct.maybeFromMap((_model.ongoingChatResponse?.jsonBody ??
                                                                            ''))
                                                                        ?.choices
                                                                        .firstOrNull
                                                                        ?.message
                                                                        .content,
                                                                    'message',
                                                                  ),
                                                                ),
                                                                messagesRecordReference2);
                                                    // DB - Collection (Messages)
                                                    _model.ongoingChatAllMessages =
                                                        await queryMessagesRecordOnce(
                                                      parent: _model.chatRef,
                                                      queryBuilder:
                                                          (messagesRecord) =>
                                                              messagesRecord
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
                                                  // ChatGPT API
                                                  _model.newChatResponse =
                                                      await OpenAIAPIGroup
                                                          .createChatCompletionCall
                                                          .call(
                                                    promptJson: functions
                                                        .listMessagesToListJSON(
                                                            _model.messages
                                                                .toList()),
                                                  );

                                                  safeSetState(() {
                                                    _model.promptTextController
                                                        ?.clear();
                                                  });
                                                  if ((_model.newChatResponse
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
                                                      content: GptResponseStruct
                                                              .maybeFromMap((_model
                                                                      .newChatResponse
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.choices
                                                          .firstOrNull
                                                          ?.message
                                                          .content,
                                                    ));
                                                    _model.newChatAssistantDoc =
                                                        MessagesRecord
                                                            .getDocumentFromData(
                                                                createMessagesRecordData(
                                                                  created:
                                                                      getCurrentTimestamp,
                                                                  role: Role
                                                                      .assistant,
                                                                  content: GptResponseStruct.maybeFromMap(
                                                                          (_model.newChatResponse?.jsonBody ??
                                                                              ''))
                                                                      ?.choices
                                                                      .firstOrNull
                                                                      ?.message
                                                                      .content,
                                                                ),
                                                                messagesRecordReference4);
                                                    // DB - Collection (Messages)
                                                    _model.newChatAllMessages =
                                                        await queryMessagesRecordOnce(
                                                      parent: _model.chatRef,
                                                      queryBuilder:
                                                          (messagesRecord) =>
                                                              messagesRecord
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
                            if (_model.chatRef != null)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 40.0, 0.0, 16.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed(
                                        IntegrationsWidget.routeName);
                                  },
                                  text: 'Continue',
                                  options: FFButtonOptions(
                                    width: 295.0,
                                    height: 56.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'buttonOnPageLoadAnimation']!),
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

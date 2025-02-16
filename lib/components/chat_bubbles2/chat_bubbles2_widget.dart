import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'chat_bubbles2_model.dart';
export 'chat_bubbles2_model.dart';

class ChatBubbles2Widget extends StatefulWidget {
  const ChatBubbles2Widget({
    super.key,
    required this.conversation,
  });

  final ConversationRow? conversation;

  @override
  State<ChatBubbles2Widget> createState() => _ChatBubbles2WidgetState();
}

class _ChatBubbles2WidgetState extends State<ChatBubbles2Widget> {
  late ChatBubbles2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatBubbles2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primaryBackground,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.conversation?.type == 'user')
              AuthUserStreamWidget(
                builder: (context) => Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).accent2,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        currentUserPhoto,
                      ).image,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            if (widget.conversation?.type == 'user')
              Expanded(
                child: Container(
                  width: 280.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Text(
                    valueOrDefault<String>(
                      widget.conversation?.content,
                      'content',
                    ),
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
            if (widget.conversation?.type == 'assistant')
              Expanded(
                child: Container(
                  width: 280.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Text(
                    valueOrDefault<String>(
                      widget.conversation?.content,
                      'content',
                    ),
                    textAlign: TextAlign.end,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
            if (widget.conversation?.type == 'assistant')
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/images/Tomo_FileFormats-02.png',
                  width: 30.0,
                  height: 30.0,
                  fit: BoxFit.cover,
                ),
              ),
          ].divide(SizedBox(width: 12.0)),
        ),
      ),
    );
  }
}

import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chat_bubbles_model.dart';
export 'chat_bubbles_model.dart';

class ChatBubblesWidget extends StatefulWidget {
  const ChatBubblesWidget({
    super.key,
    required this.messages,
  });

  final MessagesRecord? messages;

  @override
  State<ChatBubblesWidget> createState() => _ChatBubblesWidgetState();
}

class _ChatBubblesWidgetState extends State<ChatBubblesWidget> {
  late ChatBubblesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatBubblesModel());

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
            if (widget.messages?.role == Role.user)
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
            if (widget.messages?.role == Role.user)
              Expanded(
                child: Container(
                  width: 280.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Text(
                    valueOrDefault<String>(
                      widget.messages?.content,
                      'message',
                    ),
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
              ),
            if (widget.messages?.role == Role.assistant)
              Expanded(
                child: Container(
                  width: 280.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Text(
                    valueOrDefault<String>(
                      widget.messages?.content,
                      'message',
                    ),
                    textAlign: TextAlign.end,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
              ),
            if (widget.messages?.role == Role.assistant)
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

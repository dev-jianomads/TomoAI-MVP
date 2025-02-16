import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'task_component_model.dart';
export 'task_component_model.dart';

class TaskComponentWidget extends StatefulWidget {
  const TaskComponentWidget({
    super.key,
    required this.tasks,
  });

  final TasksRow? tasks;

  @override
  State<TaskComponentWidget> createState() => _TaskComponentWidgetState();
}

class _TaskComponentWidgetState extends State<TaskComponentWidget>
    with TickerProviderStateMixin {
  late TaskComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TaskComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.alert = true;
      safeSetState(() {});
      if (!(_model.timeSlotsv2.isNotEmpty)) {
        _model.apiResulttimeslots = await MakeFetchFreeTimeslotsCall.call(
          userId: widget.tasks?.userId,
          taskId: widget.tasks?.id,
          limit: 4,
          mode: 'random',
        );

        if ((_model.apiResulttimeslots?.succeeded ?? true)) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Fetching free time slots ...',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              duration: Duration(milliseconds: 4000),
              backgroundColor: FlutterFlowTheme.of(context).secondary,
            ),
          );
          _model.timeslotsoutput = await actions.parseAndStoreTimeSlots(
            (_model.apiResulttimeslots?.jsonBody ?? ''),
          );
          _model.timeSlotsv2 =
              _model.timeslotsoutput!.toList().cast<TimeSlotsStruct>();
          _model.selectedTimeSlotRaw = null;
          _model.alert = false;
          safeSetState(() {});
        }
      }
      _model.showTimeslots = true;
      safeSetState(() {});
    });

    _model.editTextFieldTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.tasks?.draftResponse,
      '[draft_response]',
    ));
    _model.editTextFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 23.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 23.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<EmailsRow>>(
      future: EmailsTable().querySingleRow(
        queryFn: (q) => q.eqOrNull(
          'email_id',
          widget.tasks?.emailId,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<EmailsRow> mainContainerEmailsRowList = snapshot.data!;

        final mainContainerEmailsRow = mainContainerEmailsRowList.isNotEmpty
            ? mainContainerEmailsRowList.first
            : null;

        return Container(
          width: double.infinity,
          constraints: BoxConstraints(
            minHeight: 500.0,
            maxHeight: 800.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 6.0),
                              child: Text(
                                valueOrDefault<String>(
                                  widget.tasks?.description,
                                  '[description]',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation1']!),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ToggleIcon(
                                  onPressed: () async {
                                    safeSetState(() =>
                                        _model.positiveFeedbackState =
                                            !_model.positiveFeedbackState);
                                    await TasksTable().update(
                                      data: {
                                        'feedback': _model.positiveFeedbackState
                                            ? 1
                                            : 0,
                                      },
                                      matchingRows: (rows) => rows.eqOrNull(
                                        'id',
                                        widget.tasks?.id,
                                      ),
                                    );
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Thanks for positive feedback',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                  },
                                  value: _model.positiveFeedbackState,
                                  onIcon: Icon(
                                    Icons.thumb_up_alt,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 18.0,
                                  ),
                                  offIcon: Icon(
                                    Icons.thumb_up_alt_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 18.0,
                                  ),
                                ),
                                ToggleIcon(
                                  onPressed: () async {
                                    safeSetState(() =>
                                        _model.negativeFeedbackState =
                                            !_model.negativeFeedbackState);
                                    await TasksTable().update(
                                      data: {
                                        'feedback': _model.negativeFeedbackState
                                            ? -1
                                            : 0,
                                      },
                                      matchingRows: (rows) => rows.eqOrNull(
                                        'id',
                                        widget.tasks?.id,
                                      ),
                                    );
                                    if (_model.negativeFeedbackState == true) {
                                      _model.showFeedback = true;
                                      safeSetState(() {});
                                    }
                                  },
                                  value: _model.negativeFeedbackState,
                                  onIcon: Icon(
                                    Icons.thumb_down_alt,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 18.0,
                                  ),
                                  offIcon: Icon(
                                    Icons.thumb_down_alt_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 18.0,
                                  ),
                                ),
                              ],
                            ),
                            if (_model.showFeedback)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      child: FlutterFlowCheckboxGroup(
                                        options: [
                                          'Task not important',
                                          'Title not accurate',
                                          'Tomo AI draft not accurate',
                                          'Timeslots not accurate'
                                        ],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.checkboxGroupValues = val),
                                        controller: _model
                                                .checkboxGroupValueController ??=
                                            FormFieldController<List<String>>(
                                          List.from([''] ?? []),
                                        ),
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        checkColor:
                                            FlutterFlowTheme.of(context).info,
                                        checkboxBorderColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        checkboxBorderRadius:
                                            BorderRadius.circular(4.0),
                                        initialized:
                                            _model.checkboxGroupValues != null,
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        FFAppState().feedbackDetail = _model
                                            .checkboxGroupValues!
                                            .toList()
                                            .cast<String>();
                                        safeSetState(() {});
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Thanks for the detailed feedback!',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                        );
                                        _model.showFeedback = false;
                                        safeSetState(() {});
                                      },
                                      text: 'Ok',
                                      options: FFButtonOptions(
                                        width: 40.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 0.0, 4.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Inter',
                                              color: Colors.white,
                                              fontSize: 8.0,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            FutureBuilder<List<CategoryRecord>>(
                              future: FFAppState().categoryQuery3(
                                requestFn: () => queryCategoryRecordOnce(),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<CategoryRecord>
                                    containerCategoryRecordList =
                                    snapshot.data!;

                                return Container(
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 6.0, 0.0, 6.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 22.0,
                                          height: 22.0,
                                          decoration: BoxDecoration(
                                            color: valueOrDefault<Color>(
                                              containerCategoryRecordList
                                                  .where((e) =>
                                                      e.name ==
                                                      widget.tasks?.category)
                                                  .toList()
                                                  .firstOrNull
                                                  ?.colorLight,
                                              Color(0xFFFF9786),
                                            ),
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: Image.network(
                                                containerCategoryRecordList
                                                    .where((e) =>
                                                        e.name ==
                                                        widget.tasks?.category)
                                                    .toList()
                                                    .firstOrNull!
                                                    .logoURL,
                                              ).image,
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Visibility(
                                            visible: responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4.0, 4.0, 4.0, 4.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  widget.tasks?.category,
                                                  'category',
                                                ).maybeHandleOverflow(
                                                  maxChars: 300,
                                                  replacement: '…',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'textOnPageLoadAnimation2']!),
                                            ),
                                          ),
                                        ),
                                        AlignedTooltip(
                                          content: Padding(
                                            padding: EdgeInsets.all(4.0),
                                            child: Text(
                                              'Toggle Summary',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                          offset: 4.0,
                                          preferredDirection: AxisDirection.up,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 4.0,
                                          tailBaseWidth: 24.0,
                                          tailLength: 12.0,
                                          waitDuration:
                                              Duration(milliseconds: 100),
                                          showDuration:
                                              Duration(milliseconds: 1500),
                                          triggerMode:
                                              TooltipTriggerMode.longPress,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: ToggleIcon(
                                              onPressed: () async {
                                                safeSetState(() =>
                                                    _model.showSummary =
                                                        !_model.showSummary);
                                              },
                                              value: _model.showSummary,
                                              onIcon: Icon(
                                                FFIcons.kexportIcon,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 24.0,
                                              ),
                                              offIcon: Icon(
                                                FFIcons.kexportIcon,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 12.0),
                          child: FutureBuilder<List<EmailThreadsRow>>(
                            future: EmailThreadsTable().querySingleRow(
                              queryFn: (q) => q.eqOrNull(
                                'id',
                                mainContainerEmailsRow?.threadId,
                              ),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<EmailThreadsRow>
                                  emailRowEmailThreadsRowList = snapshot.data!;

                              final emailRowEmailThreadsRow =
                                  emailRowEmailThreadsRowList.isNotEmpty
                                      ? emailRowEmailThreadsRowList.first
                                      : null;

                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (_model.showSummary)
                                    Flexible(
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/Gmail_Icon.original.png',
                                                width: 20.0,
                                                height: 20.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Flexible(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 0.0, 0.0),
                                                child: MarkdownBody(
                                                  data: emailRowEmailThreadsRow!
                                                      .summary!,
                                                  selectable: true,
                                                  onTapLink: (_, url, __) =>
                                                      launchURL(url!),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                ],
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (widget.tasks?.category == 'review')
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Text(
                                        'Tomo\'s suggests reviewing this:',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              if (widget.tasks?.category == 'reply')
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Text(
                                        'Tomo\'s drafted the following:',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              if (widget.tasks?.category == 'app')
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Text(
                                        'Tomo\'s suggest block time to work on this:',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              if (widget.tasks?.category == 'event')
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Text(
                                        'Select timeslot and Tomo will schedule:',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (valueOrDefault<bool>(
                              _model.draftResponse == false,
                              true,
                            ))
                              Flexible(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 4.0, 0.0),
                                        child: Icon(
                                          Icons.auto_awesome,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 16.0,
                                        ),
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  4.0, 4.0, 4.0, 4.0),
                                          child: MarkdownBody(
                                            data: valueOrDefault<String>(
                                              widget.tasks?.draftResponse,
                                              '[draft markdown]',
                                            ),
                                            selectable: false,
                                            onTapLink: (_, url, __) =>
                                                launchURL(url!),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            if (valueOrDefault<bool>(
                              _model.draftResponse == true,
                              true,
                            ))
                              Flexible(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 4.0, 0.0),
                                        child: Icon(
                                          Icons.edit,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 16.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 4.0, 4.0),
                                          child: TextFormField(
                                            controller: _model
                                                .editTextFieldTextController,
                                            focusNode:
                                                _model.editTextFieldFocusNode,
                                            autofocus: false,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  letterSpacing: 0.0,
                                                ),
                                            maxLines: null,
                                            cursorColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            validator: _model
                                                .editTextFieldTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            if (((widget.tasks?.category == 'reply') ||
                                    (widget.tasks?.category == 'event')) &&
                                (_model.draftResponse == false) &&
                                (_model.inviteSent == false))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 6.0, 0.0),
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFF9786),
                                    borderRadius: BorderRadius.circular(6.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderRadius: 8.0,
                                        buttonSize: 40.0,
                                        icon: Icon(
                                          Icons.edit,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 24.0,
                                        ),
                                        onPressed: () async {
                                          _model.draftResponse = true;
                                          safeSetState(() {});
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            if (((widget.tasks?.category == 'reply') ||
                                    (widget.tasks?.category == 'event')) &&
                                (_model.draftResponse == true) &&
                                (_model.inviteSent == false))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 16.0, 6.0, 0.0),
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFF9786),
                                    borderRadius: BorderRadius.circular(6.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderRadius: 8.0,
                                        buttonSize: 40.0,
                                        fillColor: Color(0xFFFF9786),
                                        icon: Icon(
                                          Icons.auto_awesome,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 24.0,
                                        ),
                                        onPressed: () async {
                                          _model.draftResponse = false;
                                          safeSetState(() {});
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            if ((widget.tasks?.category == 'reply') &&
                                (_model.draftResponse == false))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 16.0, 6.0, 0.0),
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderRadius: 8.0,
                                        buttonSize: 40.0,
                                        fillColor: Color(0xFFFF9786),
                                        disabledColor:
                                            FlutterFlowTheme.of(context)
                                                .accent1,
                                        icon: Icon(
                                          Icons.send,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 24.0,
                                        ),
                                        showLoadingIndicator: true,
                                        onPressed: (_model.emailSent == true)
                                            ? null
                                            : () async {
                                                _model.draftResponse = true;
                                                safeSetState(() {});
                                                _model.apiResulth2e =
                                                    await MakeSendEmailCall
                                                        .call(
                                                  taskId: widget.tasks?.id,
                                                  title: mainContainerEmailsRow
                                                      ?.subject,
                                                );

                                                if ((_model.apiResulth2e
                                                        ?.succeeded ??
                                                    true)) {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        content: Text(
                                                            'Email Sent! Task moved to done.'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                  await TasksTable().update(
                                                    data: {
                                                      'progress': 'done',
                                                    },
                                                    matchingRows: (rows) =>
                                                        rows.eqOrNull(
                                                      'id',
                                                      widget.tasks?.id,
                                                    ),
                                                  );
                                                  _model.emailSent = true;
                                                  safeSetState(() {});
                                                } else {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        content: Text(
                                                            'Email not Sent!'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                }

                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 1000));
                                                Navigator.pop(context);

                                                safeSetState(() {});
                                              },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            if ((widget.tasks?.category == 'reply') &&
                                (_model.draftResponse == true))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 16.0, 6.0, 0.0),
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFF9786),
                                    borderRadius: BorderRadius.circular(6.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 8.0,
                                        buttonSize: 40.0,
                                        fillColor: Color(0xFFFF9786),
                                        disabledColor:
                                            FlutterFlowTheme.of(context)
                                                .accent1,
                                        icon: Icon(
                                          Icons.send,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 24.0,
                                        ),
                                        showLoadingIndicator: true,
                                        onPressed: (_model.emailSent == true)
                                            ? null
                                            : () async {
                                                _model.draftResponse = true;
                                                safeSetState(() {});
                                                await TasksTable().update(
                                                  data: {
                                                    'draft_response': _model
                                                        .editTextFieldTextController
                                                        .text,
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eqOrNull(
                                                    'id',
                                                    widget.tasks?.id,
                                                  ),
                                                );
                                                _model.apiResulth3e =
                                                    await MakeSendEmailCall
                                                        .call(
                                                  taskId: widget.tasks?.id,
                                                  title: mainContainerEmailsRow
                                                      ?.subject,
                                                );

                                                if ((_model.apiResulth3e
                                                        ?.succeeded ??
                                                    true)) {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        content: Text(
                                                            'Email Sent! Task moved to done.'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                  await TasksTable().update(
                                                    data: {
                                                      'progress': 'done',
                                                    },
                                                    matchingRows: (rows) =>
                                                        rows.eqOrNull(
                                                      'id',
                                                      widget.tasks?.id,
                                                    ),
                                                  );
                                                  _model.emailSent = true;
                                                  safeSetState(() {});
                                                } else {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        content: Text(
                                                            'Email not Sent!'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                }

                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 1000));
                                                Navigator.pop(context);

                                                safeSetState(() {});
                                              },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if ((_model.alert == true) &&
                                  (widget.tasks?.category != 'reply'))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 0.0),
                                  child: Text(
                                    'Tomo fetching timeslots ...',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Color(0xFFFF9786),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        if (_model.showTimeslots)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 6.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if ((widget.tasks?.category !=
                                              'reply') &&
                                          !_model.inviteSent)
                                        Text(
                                          'Tomo found these free slots: ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      if (_model.inviteSent)
                                        Text(
                                          'Selected timeslot: ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (_model.inviteSent)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            _model.selectedTimeSlotSimple,
                                            '[display_datetime]',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 8.0),
                                      child: Container(
                                        width: 200.0,
                                        decoration: BoxDecoration(),
                                        child: Visibility(
                                          visible:
                                              (_model.inviteSent == false) &&
                                                  (widget.tasks?.category !=
                                                      'reply'),
                                          child: FlutterFlowChoiceChips(
                                            options: _model.timeSlotsv2
                                                .take(4)
                                                .toList()
                                                .map((e) => e.displayDatetime)
                                                .toList()
                                                .map((label) => ChipData(label))
                                                .toList(),
                                            onChanged:
                                                (_model.inviteSent == true)
                                                    ? null
                                                    : (val) async {
                                                        safeSetState(() => _model
                                                                .timeSlotChoiceValue =
                                                            val?.firstOrNull);
                                                        _model.selectedTimeSlotRaw = _model
                                                            .timeSlotsv2
                                                            .where((e) =>
                                                                e.displayDatetime ==
                                                                _model
                                                                    .timeSlotChoiceValue)
                                                            .toList()
                                                            .lastOrNull
                                                            ?.rawDatetime;
                                                        _model.selectedTimeSlotSimple =
                                                            _model
                                                                .timeSlotChoiceValue;
                                                        safeSetState(() {});
                                                      },
                                            selectedChipStyle: ChipStyle(
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        letterSpacing: 0.0,
                                                      ),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              iconSize: 16.0,
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            unselectedChipStyle: ChipStyle(
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              iconSize: 16.0,
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            chipSpacing: 4.0,
                                            rowSpacing: 4.0,
                                            multiselect: false,
                                            initialized:
                                                _model.timeSlotChoiceValue !=
                                                    null,
                                            alignment: WrapAlignment.start,
                                            controller: _model
                                                    .timeSlotChoiceValueController ??=
                                                FormFieldController<
                                                    List<String>>(
                                              [
                                                _model.timeSlotsv2
                                                    .take(1)
                                                    .toList()
                                                    .firstOrNull!
                                                    .displayDatetime
                                              ],
                                            ),
                                            disabledColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent1,
                                            wrapped: true,
                                          ),
                                        ),
                                      ),
                                    ),
                                    if ((_model.inviteSent == false) &&
                                        (widget.tasks?.category != 'reply'))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 0.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            if ((widget.tasks?.category ==
                                                    'app') ||
                                                (widget.tasks?.category ==
                                                    'review')) {
                                              // Category is Review or App
                                              _model.blocktimeApiResult =
                                                  await MakeBlockTimeCall.call(
                                                taskId: widget.tasks?.id,
                                                start:
                                                    _model.selectedTimeSlotRaw,
                                                duration: 30,
                                                title:
                                                    widget.tasks?.description,
                                              );

                                              if ((_model.blocktimeApiResult
                                                      ?.succeeded ??
                                                  true)) {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      content: Text(
                                                          'Time blocked !'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text('Ok'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      content: Text(
                                                          'Moving task to focus'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text('Ok'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                                _model.inviteSent = true;
                                                _model.timeSlotsv2 = [];
                                                _model.selectedTimeSlotRaw =
                                                    null;
                                                safeSetState(() {});
                                                await TasksTable().update(
                                                  data: {
                                                    'time_blocked': _model
                                                        .timeSlotChoiceValue,
                                                    'progress': 'focus',
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eqOrNull(
                                                    'id',
                                                    widget.tasks?.id,
                                                  ),
                                                );
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      content: Text(
                                                          'Time not blocked !'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text('Ok'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              }
                                            } else {
                                              // Category is Event
                                              _model.addToAttendeesList(
                                                  mainContainerEmailsRow!
                                                      .senderEmail!);
                                              safeSetState(() {});
                                              // Category is Reply or Event
                                              _model.scheduletimeApiResult =
                                                  await MakeBlockTimeCall.call(
                                                taskId: widget.tasks?.id,
                                                start:
                                                    _model.selectedTimeSlotRaw,
                                                duration: 30,
                                                attendeesList:
                                                    _model.attendeesList,
                                                title: mainContainerEmailsRow
                                                    .subject,
                                              );

                                              if ((_model.scheduletimeApiResult
                                                      ?.succeeded ??
                                                  true)) {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      content: Text(
                                                          'Time scheduled with ${_model.attendeesList.firstOrNull} and message sent. Task moved to done.'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text('Ok'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      content: Text(
                                                          'Moving task to done'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text('Ok'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                                await TasksTable().update(
                                                  data: {
                                                    'draft_response': _model
                                                        .editTextFieldTextController
                                                        .text,
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eqOrNull(
                                                    'id',
                                                    widget.tasks?.id,
                                                  ),
                                                );
                                                await MakeSendEmailCall.call(
                                                  taskId: widget.tasks?.id,
                                                  title: mainContainerEmailsRow
                                                      .subject,
                                                );

                                                _model.inviteSent = true;
                                                _model.timeSlotsv2 = [];
                                                _model.selectedTimeSlotRaw =
                                                    null;
                                                safeSetState(() {});
                                                await TasksTable().update(
                                                  data: {
                                                    'time_blocked': _model
                                                        .timeSlotChoiceValue,
                                                    'progress': 'done',
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eqOrNull(
                                                    'id',
                                                    widget.tasks?.id,
                                                  ),
                                                );
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      content: Text(
                                                          'Time not scheduled !'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text('Ok'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              }

                                              _model.attendeesList = [];
                                              safeSetState(() {});
                                            }

                                            Navigator.pop(context);

                                            safeSetState(() {});
                                          },
                                          text: 'Confirm',
                                          options: FFButtonOptions(
                                            height: 34.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Color(0xFFFF9786),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      color: Colors.white,
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

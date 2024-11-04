import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'filter_component_model.dart';
export 'filter_component_model.dart';

class FilterComponentWidget extends StatefulWidget {
  const FilterComponentWidget({super.key});

  @override
  State<FilterComponentWidget> createState() => _FilterComponentWidgetState();
}

class _FilterComponentWidgetState extends State<FilterComponentWidget> {
  late FilterComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterComponentModel());

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
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Filters',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 25.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            5.0, 12.0, 5.0, 12.0),
                        child: Text(
                          'Clear',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 33.0, 0.0, 20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        'Interested in',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: FlutterFlowChoiceChips(
                  options: const [
                    ChipData('Men', Icons.man),
                    ChipData('Women', Icons.woman),
                    ChipData('Both', FontAwesomeIcons.userFriends)
                  ],
                  onChanged: (val) => safeSetState(() =>
                      _model.genderOptionsChoiceChipsValue = val?.firstOrNull),
                  selectedChipStyle: ChipStyle(
                    backgroundColor: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).info,
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                    iconColor: FlutterFlowTheme.of(context).info,
                    iconSize: 20.0,
                    labelPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 10.0, 8.0),
                    elevation: 4.0,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  unselectedChipStyle: ChipStyle(
                    backgroundColor:
                        FlutterFlowTheme.of(context).primaryBackground,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                    iconColor: FlutterFlowTheme.of(context).primary,
                    iconSize: 20.0,
                    labelPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 10.0, 8.0),
                    elevation: 0.0,
                    borderColor: FlutterFlowTheme.of(context).primary,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  chipSpacing: 18.0,
                  rowSpacing: 12.0,
                  multiselect: false,
                  alignment: WrapAlignment.start,
                  controller: _model.genderOptionsChoiceChipsValueController ??=
                      FormFieldController<List<String>>(
                    [],
                  ),
                  wrapped: true,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 30.0, 12.0, 0.0),
                child: FlutterFlowDropDown<String>(
                  controller: _model.locationDropDownValueController ??=
                      FormFieldController<String>(null),
                  options: const [
                    'Accra, Ghana',
                    'Kumasi, Ghana',
                    'Koforidua, Ghana',
                    'Cape Coast, Ghana',
                    'Tamale, Ghana',
                    'Takoradi, Ghana'
                  ],
                  onChanged: (val) =>
                      safeSetState(() => _model.locationDropDownValue = val),
                  width: double.infinity,
                  height: 50.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                  hintText: 'Select location...',
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 24.0,
                  ),
                  fillColor: FlutterFlowTheme.of(context).primaryBackground,
                  elevation: 2.0,
                  borderColor: FlutterFlowTheme.of(context).alternate,
                  borderWidth: 2.0,
                  borderRadius: 8.0,
                  margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                  hidesUnderline: true,
                  isOverButton: false,
                  isSearchable: false,
                  isMultiSelect: false,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 33.0, 0.0, 20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'Distance',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        '50km',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              SliderTheme(
                data: const SliderThemeData(
                  showValueIndicator: ShowValueIndicator.always,
                ),
                child: Slider(
                  activeColor: FlutterFlowTheme.of(context).primary,
                  inactiveColor: FlutterFlowTheme.of(context).alternate,
                  min: 0.0,
                  max: 100.0,
                  value: _model.distanceSliderValue ??= 50.0,
                  label: _model.distanceSliderValue?.toStringAsFixed(0),
                  onChanged: (newValue) {
                    newValue = double.parse(newValue.toStringAsFixed(0));
                    safeSetState(() => _model.distanceSliderValue = newValue);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 33.0, 0.0, 20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'Age',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        '20-30',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              SliderTheme(
                data: const SliderThemeData(
                  showValueIndicator: ShowValueIndicator.always,
                ),
                child: Slider(
                  activeColor: FlutterFlowTheme.of(context).primary,
                  inactiveColor: FlutterFlowTheme.of(context).alternate,
                  min: 0.0,
                  max: 100.0,
                  value: _model.ageSliderValue ??= 50.0,
                  label: _model.ageSliderValue?.toStringAsFixed(0),
                  onChanged: (newValue) {
                    newValue = double.parse(newValue.toStringAsFixed(0));
                    safeSetState(() => _model.ageSliderValue = newValue);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 16.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'Filter',
                  options: FFButtonOptions(
                    width: 295.0,
                    height: 56.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

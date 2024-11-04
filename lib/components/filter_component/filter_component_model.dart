import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'filter_component_widget.dart' show FilterComponentWidget;
import 'package:flutter/material.dart';

class FilterComponentModel extends FlutterFlowModel<FilterComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for GenderOptionsChoiceChips widget.
  FormFieldController<List<String>>? genderOptionsChoiceChipsValueController;
  String? get genderOptionsChoiceChipsValue =>
      genderOptionsChoiceChipsValueController?.value?.firstOrNull;
  set genderOptionsChoiceChipsValue(String? val) =>
      genderOptionsChoiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for locationDropDown widget.
  String? locationDropDownValue;
  FormFieldController<String>? locationDropDownValueController;
  // State field(s) for distanceSlider widget.
  double? distanceSliderValue;
  // State field(s) for ageSlider widget.
  double? ageSliderValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

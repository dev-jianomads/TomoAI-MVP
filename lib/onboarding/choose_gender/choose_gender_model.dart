import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'choose_gender_widget.dart' show ChooseGenderWidget;
import 'package:flutter/material.dart';

class ChooseGenderModel extends FlutterFlowModel<ChooseGenderWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for MaleCheckbox widget.
  bool? maleCheckboxValue;
  // State field(s) for FemaleCheckbox widget.
  bool? femaleCheckboxValue;
  // State field(s) for GenderOptionsChoiceChips widget.
  FormFieldController<List<String>>? genderOptionsChoiceChipsValueController;
  String? get genderOptionsChoiceChipsValue =>
      genderOptionsChoiceChipsValueController?.value?.firstOrNull;
  set genderOptionsChoiceChipsValue(String? val) =>
      genderOptionsChoiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

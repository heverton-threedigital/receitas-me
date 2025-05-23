import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'seletor_categoria_widget.dart' show SeletorCategoriaWidget;
import 'package:flutter/material.dart';

class SeletorCategoriaModel extends FlutterFlowModel<SeletorCategoriaWidget> {
  ///  Local state fields for this component.

  String? categoriaSelecionada;

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

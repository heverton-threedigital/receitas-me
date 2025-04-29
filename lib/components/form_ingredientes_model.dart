import '/flutter_flow/flutter_flow_util.dart';
import 'form_ingredientes_widget.dart' show FormIngredientesWidget;
import 'package:flutter/material.dart';

class FormIngredientesModel extends FlutterFlowModel<FormIngredientesWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ingrediente widget.
  FocusNode? ingredienteFocusNode;
  TextEditingController? ingredienteTextController;
  String? Function(BuildContext, String?)? ingredienteTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ingredienteFocusNode?.dispose();
    ingredienteTextController?.dispose();
  }
}

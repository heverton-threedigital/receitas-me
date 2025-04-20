import '/flutter_flow/flutter_flow_util.dart';
import 'ingrediente_widget.dart' show IngredienteWidget;
import 'package:flutter/material.dart';

class IngredienteModel extends FlutterFlowModel<IngredienteWidget> {
  ///  Local state fields for this component.

  bool editar = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

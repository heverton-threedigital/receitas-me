import '/flutter_flow/flutter_flow_util.dart';
import 'ingrediente_widget.dart' show IngredienteWidget;
import 'package:flutter/material.dart';

class IngredienteModel extends FlutterFlowModel<IngredienteWidget> {
  ///  Local state fields for this component.

  bool editar = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo não pode ficar vazio';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

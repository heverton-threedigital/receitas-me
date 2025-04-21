import '/flutter_flow/flutter_flow_util.dart';
import 'passos_widget.dart' show PassosWidget;
import 'package:flutter/material.dart';

class PassosModel extends FlutterFlowModel<PassosWidget> {
  ///  Local state fields for this component.

  bool editar = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for editarpasso widget.
  FocusNode? editarpassoFocusNode;
  TextEditingController? editarpassoTextController;
  String? Function(BuildContext, String?)? editarpassoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    editarpassoFocusNode?.dispose();
    editarpassoTextController?.dispose();
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'passos_widget.dart' show PassosWidget;
import 'package:flutter/material.dart';

class PassosModel extends FlutterFlowModel<PassosWidget> {
  ///  Local state fields for this component.

  bool editar = false;

  ///  State fields for stateful widgets in this component.

  InstantTimer? instantTimer;
  // State field(s) for editarpasso widget.
  FocusNode? editarpassoFocusNode;
  TextEditingController? editarpassoTextController;
  String? Function(BuildContext, String?)? editarpassoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
    editarpassoFocusNode?.dispose();
    editarpassoTextController?.dispose();
  }
}

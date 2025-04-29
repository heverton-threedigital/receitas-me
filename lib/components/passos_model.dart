import '/flutter_flow/flutter_flow_util.dart';
import 'passos_widget.dart' show PassosWidget;
import 'package:flutter/material.dart';

class PassosModel extends FlutterFlowModel<PassosWidget> {
  ///  Local state fields for this component.

  bool editar = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for editarpasso widget.
  FocusNode? editarpassoFocusNode;
  TextEditingController? editarpassoTextController;
  String? Function(BuildContext, String?)? editarpassoTextControllerValidator;
  String? _editarpassoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo não pode ficar vazio';
    }

    return null;
  }

  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];

  @override
  void initState(BuildContext context) {
    editarpassoTextControllerValidator = _editarpassoTextControllerValidator;
  }

  @override
  void dispose() {
    editarpassoFocusNode?.dispose();
    editarpassoTextController?.dispose();
  }
}

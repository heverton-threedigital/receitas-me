import '/components/barra_latera_receita_widget.dart';
import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'receita_widget.dart' show ReceitaWidget;
import 'package:flutter/material.dart';

class ReceitaModel extends FlutterFlowModel<ReceitaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MenuPrincipal component.
  late MenuPrincipalModel menuPrincipalModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - showEmojiPicker] action in Icon widget.
  String? emoji;
  // Model for BarraLateraReceita component.
  late BarraLateraReceitaModel barraLateraReceitaModel;

  @override
  void initState(BuildContext context) {
    menuPrincipalModel = createModel(context, () => MenuPrincipalModel());
    barraLateraReceitaModel =
        createModel(context, () => BarraLateraReceitaModel());
  }

  @override
  void dispose() {
    menuPrincipalModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    barraLateraReceitaModel.dispose();
  }
}

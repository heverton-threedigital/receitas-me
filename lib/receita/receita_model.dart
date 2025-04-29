import '/components/barra_latera_receita_widget.dart';
import '/components/menu_lateral_e_widget.dart';
import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'receita_widget.dart' show ReceitaWidget;
import 'package:flutter/material.dart';

class ReceitaModel extends FlutterFlowModel<ReceitaWidget> {
  ///  Local state fields for this page.

  int? visualizacoes;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for MenuPrincipal component.
  late MenuPrincipalModel menuPrincipalModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo é obrigatório';
    }

    return null;
  }

  // Model for BarraLateraReceita component.
  late BarraLateraReceitaModel barraLateraReceitaModel;
  // Model for MenuLateralE component.
  late MenuLateralEModel menuLateralEModel;

  @override
  void initState(BuildContext context) {
    menuPrincipalModel = createModel(context, () => MenuPrincipalModel());
    textControllerValidator = _textControllerValidator;
    barraLateraReceitaModel =
        createModel(context, () => BarraLateraReceitaModel());
    menuLateralEModel = createModel(context, () => MenuLateralEModel());
  }

  @override
  void dispose() {
    menuPrincipalModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    barraLateraReceitaModel.dispose();
    menuLateralEModel.dispose();
  }
}

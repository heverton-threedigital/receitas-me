import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'receita_widget.dart' show ReceitaWidget;
import 'package:flutter/material.dart';

class ReceitaModel extends FlutterFlowModel<ReceitaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MenuPrincipal component.
  late MenuPrincipalModel menuPrincipalModel;

  @override
  void initState(BuildContext context) {
    menuPrincipalModel = createModel(context, () => MenuPrincipalModel());
  }

  @override
  void dispose() {
    menuPrincipalModel.dispose();
  }
}

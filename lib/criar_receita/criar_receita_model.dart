import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'criar_receita_widget.dart' show CriarReceitaWidget;
import 'package:flutter/material.dart';

class CriarReceitaModel extends FlutterFlowModel<CriarReceitaWidget> {
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

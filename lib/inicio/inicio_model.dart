import '/components/menu_principal_widget.dart';
import '/components/receitas_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'inicio_widget.dart' show InicioWidget;
import 'package:flutter/material.dart';

class InicioModel extends FlutterFlowModel<InicioWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MenuPrincipal component.
  late MenuPrincipalModel menuPrincipalModel;
  // Model for receitas component.
  late ReceitasModel receitasModel;

  @override
  void initState(BuildContext context) {
    menuPrincipalModel = createModel(context, () => MenuPrincipalModel());
    receitasModel = createModel(context, () => ReceitasModel());
  }

  @override
  void dispose() {
    menuPrincipalModel.dispose();
    receitasModel.dispose();
  }
}

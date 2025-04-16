import '/components/menu_lateral_widget.dart';
import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'receitas_salvas_widget.dart' show ReceitasSalvasWidget;
import 'package:flutter/material.dart';

class ReceitasSalvasModel extends FlutterFlowModel<ReceitasSalvasWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MenuPrincipal component.
  late MenuPrincipalModel menuPrincipalModel;
  // Model for MenuLateral component.
  late MenuLateralModel menuLateralModel;

  @override
  void initState(BuildContext context) {
    menuPrincipalModel = createModel(context, () => MenuPrincipalModel());
    menuLateralModel = createModel(context, () => MenuLateralModel());
  }

  @override
  void dispose() {
    menuPrincipalModel.dispose();
    menuLateralModel.dispose();
  }
}

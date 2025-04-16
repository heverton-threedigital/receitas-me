import '/components/menu_lateral_widget.dart';
import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'minhas_receitas_widget.dart' show MinhasReceitasWidget;
import 'package:flutter/material.dart';

class MinhasReceitasModel extends FlutterFlowModel<MinhasReceitasWidget> {
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

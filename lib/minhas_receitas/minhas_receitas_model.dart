import '/components/menu_lateral_e_widget.dart';
import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'minhas_receitas_widget.dart' show MinhasReceitasWidget;
import 'package:flutter/material.dart';

class MinhasReceitasModel extends FlutterFlowModel<MinhasReceitasWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MenuPrincipal component.
  late MenuPrincipalModel menuPrincipalModel;
  // Model for MenuLateralE component.
  late MenuLateralEModel menuLateralEModel1;
  // Model for MenuLateralE component.
  late MenuLateralEModel menuLateralEModel2;

  @override
  void initState(BuildContext context) {
    menuPrincipalModel = createModel(context, () => MenuPrincipalModel());
    menuLateralEModel1 = createModel(context, () => MenuLateralEModel());
    menuLateralEModel2 = createModel(context, () => MenuLateralEModel());
  }

  @override
  void dispose() {
    menuPrincipalModel.dispose();
    menuLateralEModel1.dispose();
    menuLateralEModel2.dispose();
  }
}

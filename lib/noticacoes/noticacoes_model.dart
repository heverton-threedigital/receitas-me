import '/components/menu_lateral_widget.dart';
import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'noticacoes_widget.dart' show NoticacoesWidget;
import 'package:flutter/material.dart';

class NoticacoesModel extends FlutterFlowModel<NoticacoesWidget> {
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

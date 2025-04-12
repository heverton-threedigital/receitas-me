import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'painel_widget.dart' show PainelWidget;
import 'package:flutter/material.dart';

class PainelModel extends FlutterFlowModel<PainelWidget> {
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

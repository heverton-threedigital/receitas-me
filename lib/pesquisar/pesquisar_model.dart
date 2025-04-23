import '/backend/supabase/supabase.dart';
import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pesquisar_widget.dart' show PesquisarWidget;
import 'package:flutter/material.dart';

class PesquisarModel extends FlutterFlowModel<PesquisarWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Pesquisar widget.
  List<CategoriasRow>? categoriasQuery;
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

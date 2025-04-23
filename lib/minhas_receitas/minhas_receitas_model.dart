import '/backend/supabase/supabase.dart';
import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'minhas_receitas_widget.dart' show MinhasReceitasWidget;
import 'package:flutter/material.dart';

class MinhasReceitasModel extends FlutterFlowModel<MinhasReceitasWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MenuPrincipal component.
  late MenuPrincipalModel menuPrincipalModel;
  Stream<List<ReceitasResumoRow>>? staggeredViewSupabaseStream;

  @override
  void initState(BuildContext context) {
    menuPrincipalModel = createModel(context, () => MenuPrincipalModel());
  }

  @override
  void dispose() {
    menuPrincipalModel.dispose();
  }
}

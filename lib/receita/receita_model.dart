import '/backend/supabase/supabase.dart';
import '/components/barra_latera_receita_widget.dart';
import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'receita_widget.dart' show ReceitaWidget;
import 'package:flutter/material.dart';

class ReceitaModel extends FlutterFlowModel<ReceitaWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Receita widget.
  List<CurtidasReceitasRow>? curtida;
  // Model for MenuPrincipal component.
  late MenuPrincipalModel menuPrincipalModel;
  // Model for BarraLateraReceita component.
  late BarraLateraReceitaModel barraLateraReceitaModel;

  @override
  void initState(BuildContext context) {
    menuPrincipalModel = createModel(context, () => MenuPrincipalModel());
    barraLateraReceitaModel =
        createModel(context, () => BarraLateraReceitaModel());
  }

  @override
  void dispose() {
    menuPrincipalModel.dispose();
    barraLateraReceitaModel.dispose();
  }
}

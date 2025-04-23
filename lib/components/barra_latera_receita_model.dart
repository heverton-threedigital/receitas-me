import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'barra_latera_receita_widget.dart' show BarraLateraReceitaWidget;
import 'package:flutter/material.dart';

class BarraLateraReceitaModel
    extends FlutterFlowModel<BarraLateraReceitaWidget> {
  ///  Local state fields for this component.

  bool receitaCurtida = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in BarraLateraReceita widget.
  List<CurtidasReceitasRow>? curtidaLogado;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

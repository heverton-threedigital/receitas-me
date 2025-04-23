// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> incrementarVisualizacao(String receitaId) async {
  // Add your function code here!
  final supabase = SupaFlow.client;

  try {
    await supabase.rpc(
      'incrementar_visualizacao', // Nome exato da função no Supabase
      params: {'id_receita': receitaId},
    );
    // Não precisamos fazer nada após a chamada (sem retorno)
    print('Visualização incrementada para receita: $receitaId');
  } catch (e) {
    // Apenas imprime o erro no console, não interrompe o fluxo principal
    print('Erro ao incrementar visualização: $e');
  }
}

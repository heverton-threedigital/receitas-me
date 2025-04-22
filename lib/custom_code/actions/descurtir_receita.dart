// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// ... (mesmos imports das ações anteriores) ...

Future<bool> descurtirReceita(String receitaId) async {
  // Add your function code here!
  final supabase = SupaFlow.client;

  try {
    await supabase.rpc(
      'descurtir_receita', // Nome exato da função no Supabase
      params: {'id_receita': receitaId},
    );
    print('Receita descurtida: $receitaId');
    return true; // Retorna true indicando sucesso
  } catch (e) {
    print('Erro ao descurtir receita: $e');
    return false; // Retorna false indicando erro
  }
}

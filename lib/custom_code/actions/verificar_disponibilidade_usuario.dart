// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Automatic FlutterFlow imports (mantenha os necessários)
import '/backend/supabase/supabase.dart'; // Necessário para SupaFlow.client
import 'package:flutter/material.dart'; // Não estritamente necessário aqui

// Importe se precisar tratar exceções específicas do Supabase
// import 'package:supabase_flutter/supabase_flutter.dart';

Future<bool> verificarDisponibilidadeUsuario(String nomeUsuario) async {
  // Verifica se o input não é vazio após remover espaços
  if (nomeUsuario.trim().isEmpty) {
    print('Nome de usuário para verificação está vazio.');
    // Um nome vazio não pode ser considerado disponível para uso
    return false;
  }

  // Obtém o cliente Supabase gerenciado pelo FlutterFlow
  final supabase = SupaFlow.client;
  final nomeUsuarioLimpo = nomeUsuario.trim(); // Usa o nome sem espaços extras

  try {
    // Faz a consulta na tabela 'perfis'
    final response = await supabase
        .from('perfis') // Nome exato da sua tabela de perfis
        .select(
            'id') // Seleciona qualquer coluna, só para verificar a existência
        .eq('usuario', nomeUsuarioLimpo) // Filtra pelo nome de usuário desejado
        .limit(
            1); // Limita a 1 resultado, pois só precisamos saber se existe ou não

    // Verifica a resposta. A estrutura exata pode variar um pouco
    // dependendo da versão do pacote supabase_flutter e como FF a trata.
    // A ideia é checar se a lista de resultados está vazia.
    if (response == null) {
      // Se a resposta for nula (pode acontecer em alguns cenários de erro)
      print('Resposta da consulta Supabase foi nula ao verificar usuário.');
      return false;
    }

    // Se a resposta for uma lista vazia, significa que NENHUM perfil foi encontrado
    // com aquele nome de usuário, portanto, está DISPONÍVEL.
    if (response is List && response.isEmpty) {
      print('Nome de usuário "$nomeUsuarioLimpo" está disponível.');
      return true;
    } else {
      // Se a lista não está vazia (encontrou pelo menos 1), o nome JÁ ESTÁ EM USO.
      print('Nome de usuário "$nomeUsuarioLimpo" JÁ ESTÁ EM USO.');
      return false;
    }
  } catch (e) {
    // Em caso de qualquer erro na consulta, assume que não está disponível por segurança
    print('Erro ao verificar disponibilidade do nome de usuário: $e');
    return false;
  }
}

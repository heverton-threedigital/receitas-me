// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase_flutter/supabase_flutter.dart';
import 'dart:math'; // Para gerar números aleatórios

Future<String> generateUniqueUsernameSupabase(
  String firstName,
  String lastName,
) async {
  // --- AJUSTE AQUI ---
  final String profilesTableName = 'perfis';
  final String usernameColumnName = 'nome_usuario';
  // --- FIM DOS AJUSTES ---

  final supabase =
      Supabase.instance.client; // Obtém o cliente Supabase inicializado

  // 1. Limpeza e Normalização Básica dos Nomes
  String fn = firstName.trim().toLowerCase().replaceAll(RegExp(r'\s+'), '');
  String ln = lastName.trim().toLowerCase().replaceAll(RegExp(r'\s+'), '');

  // Lida com nomes vazios (opcional, ajuste conforme sua necessidade)
  if (fn.isEmpty || ln.isEmpty) {
    fn = fn.isEmpty ? 'user' : fn;
    ln = ln.isEmpty ? Random().nextInt(10000).toString() : ln;
  }

  // 2. Geração do Nome de Usuário Base (mesma lógica de antes)
  String baseUsername = fn + ln;
  baseUsername = baseUsername.replaceAll(
      RegExp(r'[^a-z0-9]'), ''); // Manter apenas letras minúsculas e números
  if (baseUsername.isEmpty) {
    baseUsername = 'user${Random().nextInt(10000)}';
  }

  // 3. Verificação de Unicidade e Geração Iterativa com Supabase
  String potentialUsername = baseUsername;
  int counter = 0;

  while (true) {
    String usernameToCheck =
        (counter == 0) ? baseUsername : '$baseUsername$counter';

    try {
      // Query no Supabase para verificar se o usernameToCheck já existe
      final response = await supabase
          .from(profilesTableName)
          .select(
              usernameColumnName) // Seleciona apenas a coluna necessária (ou '*' se preferir)
          .eq(usernameColumnName,
              usernameToCheck) // Filtra onde a coluna username é igual ao valor
          .limit(1) // Otimização: só precisamos saber se existe 1
          .maybeSingle(); // Retorna a linha se encontrada, ou null se não encontrada

      // Se 'response' for null, significa que o username NÃO foi encontrado (está único!)
      if (response == null) {
        potentialUsername = usernameToCheck; // Encontramos um nome único
        break; // Sai do loop while
      } else {
        // O nome já existe (response não é null), incrementa o contador e tenta novamente
        counter++;
        // Segurança: Adicione um limite para evitar loops infinitos
        if (counter > 999) {
          // Estratégia alternativa ou lança erro
          potentialUsername =
              '$baseUsername${Random().nextInt(9999)}'; // Ex: fallback aleatório
          print(
              "Aviso: Limite de tentativas de geração de username atingido para $baseUsername. Usando fallback: $potentialUsername");
          break; // Sai do loop com o fallback
          // Alternativamente: throw Exception('Não foi possível gerar um nome de usuário único.');
        }
      }
    } catch (e) {
      // Tratar erros de consulta do Supabase (ex: problema de rede, RLS)
      print('Erro ao verificar username no Supabase: $e');
      // Você pode decidir o que fazer aqui:
      // 1. Lançar a exceção para que a ação externa falhe:
      throw Exception(
          'Erro ao verificar disponibilidade do nome de usuário: $e');
      // 2. Retornar um username padrão/aleatório (menos ideal):
      // potentialUsername = 'erroruser${Random().nextInt(10000)}';
      // break;
      // 3. Tentar novamente (cuidado com loops infinitos)
    }
  }

  // 4. Retorna o nome de usuário único encontrado (ou fallback)
  return potentialUsername;
}

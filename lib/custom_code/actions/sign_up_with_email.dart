// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert'; // Import dart:convert para jsonEncode se necessário (geralmente não em FF para return Map)
import 'package:supabase_flutter/supabase_flutter.dart';

// Modificado para retornar um JSON (Map<String, String>)
// {'userId': 'uuid'} em caso de sucesso
// {'error': 'mensagem'} em caso de falha
Future<dynamic> signUpWithEmail(
  String email,
  String password,
  String confirmPassword,
) async {
  // Add your function code here!
  if (password == confirmPassword) {
    try {
      final supabase = SupaFlow.client;

      final AuthResponse res = await supabase.auth.signUp(
        email: email,
        password: password,
      );

      // Verifica se o usuário foi criado e retorna o JSON de sucesso
      if (res.user != null) {
        return {'userId': res.user!.id}; // Retorna JSON com o ID do usuário
      } else {
        // Caso inesperado onde a resposta não contém o usuário após signUp
        return {
          'error': 'Signup completed but user data not found.'
        }; // Retorna JSON de erro
      }
    } on AuthException catch (e) {
      // Retorna JSON com a mensagem de erro do Supabase
      return {'error': e.message};
    } catch (e) {
      // Captura outros erros inesperados e retorna JSON de erro
      return {'error': "An unexpected error occurred: ${e.toString()}"};
    }
  } else {
    // Retorna JSON de erro se senhas não conferem
    return {'error': 'Passwords do not match.'};
  }
}

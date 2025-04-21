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

Future<bool> verifyEmailWithToken(
  String email,
  String? token, // Token ainda pode ser nulo vindo do input
) async {
  // **MELHORIA 1: Validar o token antes de prosseguir**
  // Retorna falso imediatamente se o token for nulo ou vazio (ignorando espaços em branco)
  if (token == null || token.trim().isEmpty) {
    print('Token de verificação está vazio ou nulo.');
    return false;
  }

  // **MELHORIA 2: Usar SupaFlow.client (padrão FlutterFlow)**
  // Em vez de Supabase.instance.client
  final supabase = SupaFlow.client;

  try {
    // Chama a função verifyOTP do Supabase
    // O token aqui já foi validado e não é nulo/vazio
    final AuthResponse res = await supabase.auth.verifyOTP(
      type: OtpType.signup,
      token: token, // Passa o token validado
      email: email,
    );

    // Retorna true se a verificação resultou em uma sessão (usuário logado)
    // Esta continua sendo uma forma comum de verificar o sucesso
    return res.session != null;
  } on AuthException catch (e) {
    // Captura erros específicos de autenticação do Supabase
    // Imprime o erro no console para depuração
    print('Erro Supabase ao verificar OTP: ${e.message}');
    return false; // Retorna falso em caso de erro de autenticação
  } catch (error) {
    // Captura quaisquer outros erros inesperados
    // Imprime o erro no console para depuração
    print('Erro inesperado ao verificar OTP: $error');
    return false; // Retorna falso em caso de outros erros
  }
}

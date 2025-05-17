// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:diacritic/diacritic.dart';

Future<String> slugify(
  String tituloReceita,
  String idReceita,
) async {
  if (tituloReceita.isEmpty || idReceita.isEmpty) {
    print('Título ou ID da receita vazio ao gerar slug, retornando ID.');
    return idReceita;
  }

  final String idLimpo = idReceita; // Já é non-nullable

  // 1. Sanitiza o título: minúsculas e remove acentos
  String text = removeDiacritics(tituloReceita.toLowerCase());

  // 2. Substitui espaços e outros separadores por hífen
  text = text.replaceAll(RegExp(r'[\s._]+'), '-');

  // 3. Remove caracteres inválidos (mantém a-z, 0-9 e hífen)
  text = text.replaceAll(RegExp(r'[^a-z0-9-]'), '');

  // 4. Remove múltiplos hífens e hífens no início/fim
  text = text.replaceAll(RegExp(r'-+'), '-').replaceAll(RegExp(r'^-|-$'), '');

  // Se o título ficou vazio após sanitizar, retorna apenas o ID
  if (text.isEmpty) {
    print('Título ficou vazio após sanitizar, retornando ID.');
    return idLimpo;
  }

  // 5. Combina o título sanitizado com o ID
  String slugFinal = '$text-$idLimpo';

  // 6. Opcional: Truncar o slug final se necessário
  // int maxLength = 70;
  // if (slugFinal.length > maxLength) {
  //   slugFinal = slugFinal.substring(0, maxLength).replaceAll(RegExp(r'-$'), '');
  // }

  return slugFinal;
}

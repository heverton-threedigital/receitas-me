// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Automatic FlutterFlow imports (Revise e mantenha apenas os necessários)
// import '/backend/supabase/supabase.dart'; // Provavelmente não necessário aqui
// import '/actions/actions.dart' as action_blocks; // REMOVIDO
import '/flutter_flow/flutter_flow_theme.dart'; // Necessário para cores do tema
import '/flutter_flow/flutter_flow_util.dart'; // Pode ser útil, mantenha por via das dúvidas
// import '/custom_code/actions/index.dart'; // REMOVIDO (a menos que use outras ações)
// import '/flutter_flow/custom_functions.dart'; // REMOVIDO (a menos que use outras funções)

import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'dart:io'; // Pode remover se não usar Platform.isIOS/Android em config

// Adicionado BuildContext context como PARÂMETRO da ação
Future<String?> showEmojiPicker(BuildContext context) async {
  String? emojiSelecionado;

  // Não precisamos mais buscar o contexto, ele vem como parâmetro

  await showModalBottomSheet(
    context: context, // Usa o parâmetro context diretamente
    builder: (BuildContext buildContext) {
      // Pode usar 'context' ou 'buildContext' aqui
      return EmojiPicker(
        onEmojiSelected: (Category? category, Emoji emoji) {
          emojiSelecionado = emoji.emoji;
          Navigator.pop(buildContext); // Fecha usando o contexto do builder
        },
        config: Config(
          height: 256,
          checkPlatformCompatibility: true,
          emojiViewConfig: EmojiViewConfig(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          // swapCategoryAndBottomBar: false, // REMOVIDO
          skinToneConfig: const SkinToneConfig(
            dialogBackgroundColor: Colors.white,
            indicatorColor: Colors.grey,
          ),
          categoryViewConfig: CategoryViewConfig(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            indicatorColor: FlutterFlowTheme.of(context).primary,
            iconColorSelected: FlutterFlowTheme.of(context).primary,
            iconColor: FlutterFlowTheme.of(context).secondaryText,
          ),
          bottomActionBarConfig: const BottomActionBarConfig(
            enabled: false,
          ),
          searchViewConfig: const SearchViewConfig(),
        ),
      );
    },
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
  );

  return emojiSelecionado;
}

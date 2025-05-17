import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future excluirReceita1(
  BuildContext context, {
  required String? idReceita,
  required String? imagemReceita,
}) async {
  var confirmDialogResponse = await showDialog<bool>(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('Tem certeza de que deseja excluir esta receita?'),
            content: Text('*Esta ação não pode ser desfeita.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext, false),
                child: Text('Cancelar'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext, true),
                child: Text('Sim, apagar'),
              ),
            ],
          );
        },
      ) ??
      false;
  if (confirmDialogResponse) {
    await ReceitasTable().delete(
      matchingRows: (rows) => rows.eqOrNull(
        'id',
        idReceita,
      ),
    );
    await deleteSupabaseFileFromPublicUrl(imagemReceita!);
    Navigator.pop(context);
    context.safePop();
  } else {
    Navigator.pop(context);
  }
}

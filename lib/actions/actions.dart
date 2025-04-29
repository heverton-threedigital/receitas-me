import '/backend/supabase/supabase.dart';
import 'package:flutter/material.dart';

Future excluirReceita(
  BuildContext context, {
  required String? idReceita,
  required String? imagemReceita,
}) async {
  var confirmDialogResponse = await showDialog<bool>(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('Excluir receita'),
            content: Text(
                'Deseja realmente excluir esta receitas? Esta ação é irreversível!'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext, false),
                child: Text('Cancelar'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext, true),
                child: Text('Sim, excluir'),
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
  }
  Navigator.pop(context);
}

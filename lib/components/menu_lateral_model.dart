import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'menu_lateral_widget.dart' show MenuLateralWidget;
import 'package:flutter/material.dart';

class MenuLateralModel extends FlutterFlowModel<MenuLateralWidget> {
  ///  Local state fields for this component.

  List<CategoriasRow> categorias = [];
  void addToCategorias(CategoriasRow item) => categorias.add(item);
  void removeFromCategorias(CategoriasRow item) => categorias.remove(item);
  void removeAtIndexFromCategorias(int index) => categorias.removeAt(index);
  void insertAtIndexInCategorias(int index, CategoriasRow item) =>
      categorias.insert(index, item);
  void updateCategoriasAtIndex(int index, Function(CategoriasRow) updateFn) =>
      categorias[index] = updateFn(categorias[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in MenuLateral widget.
  List<CategoriasRow>? resultadoCategorias;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

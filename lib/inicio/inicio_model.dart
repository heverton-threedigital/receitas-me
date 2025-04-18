import '/backend/supabase/supabase.dart';
import '/components/menu_lateral_widget.dart';
import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'inicio_widget.dart' show InicioWidget;
import 'package:flutter/material.dart';

class InicioModel extends FlutterFlowModel<InicioWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Inicio widget.
  List<CategoriasRow>? categoriasQuery;
  // Model for MenuPrincipal component.
  late MenuPrincipalModel menuPrincipalModel;
  // Model for MenuLateral component.
  late MenuLateralModel menuLateralModel1;
  Stream<List<CategoriasRow>>? rowSupabaseStream1;
  Stream<List<ReceitasRow>>? rowSupabaseStream2;
  // Model for MenuLateral component.
  late MenuLateralModel menuLateralModel2;

  /// Query cache managers for this widget.

  final _caegoriasInicioManager = StreamRequestManager<List<CategoriasRow>>();
  Stream<List<CategoriasRow>> caegoriasInicio({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<CategoriasRow>> Function() requestFn,
  }) =>
      _caegoriasInicioManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCaegoriasInicioCache() => _caegoriasInicioManager.clear();
  void clearCaegoriasInicioCacheKey(String? uniqueKey) =>
      _caegoriasInicioManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    menuPrincipalModel = createModel(context, () => MenuPrincipalModel());
    menuLateralModel1 = createModel(context, () => MenuLateralModel());
    menuLateralModel2 = createModel(context, () => MenuLateralModel());
  }

  @override
  void dispose() {
    menuPrincipalModel.dispose();
    menuLateralModel1.dispose();
    menuLateralModel2.dispose();

    /// Dispose query cache managers for this widget.

    clearCaegoriasInicioCache();
  }
}

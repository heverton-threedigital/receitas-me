import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'categoria_model.dart';
export 'categoria_model.dart';

class CategoriaWidget extends StatefulWidget {
  const CategoriaWidget({
    super.key,
    required this.categorias,
  });

  final CategoriasRow? categorias;

  @override
  State<CategoriaWidget> createState() => _CategoriaWidgetState();
}

class _CategoriaWidgetState extends State<CategoriaWidget> {
  late CategoriaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoriaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Container(
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            _model.mouseRegionHovered
                ? Color(0xFFFFE3DC)
                : FlutterFlowTheme.of(context).primaryBackground,
            FlutterFlowTheme.of(context).primaryBackground,
          ),
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: _model.mouseRegionHovered
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).alternate,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
          child: Text(
            valueOrDefault<String>(
              widget.categorias?.nome,
              '-',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Noto Sans',
                  color: valueOrDefault<Color>(
                    _model.mouseRegionHovered
                        ? FlutterFlowTheme.of(context).primary
                        : FlutterFlowTheme.of(context).primaryText,
                    FlutterFlowTheme.of(context).primaryText,
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
    );
  }
}

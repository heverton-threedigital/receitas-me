import '/backend/supabase/supabase.dart';
import '/components/menu_lateral_e_widget.dart';
import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'usuario_model.dart';
export 'usuario_model.dart';

class UsuarioWidget extends StatefulWidget {
  const UsuarioWidget({
    super.key,
    required this.userId,
    required this.usuario,
  });

  final String? userId;
  final String? usuario;

  static String routeName = 'Usuario';
  static String routePath = ':usuario';

  @override
  State<UsuarioWidget> createState() => _UsuarioWidgetState();
}

class _UsuarioWidgetState extends State<UsuarioWidget> {
  late UsuarioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UsuarioModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.incrementarVisualizacao(
        widget.userId!,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ReceitasDetalhadasRow>>(
      future: ReceitasDetalhadasTable().querySingleRow(
        queryFn: (q) => q.eqOrNull(
          'id',
          widget.userId,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitPulse(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<ReceitasDetalhadasRow> usuarioReceitasDetalhadasRowList =
            snapshot.data!;

        final usuarioReceitasDetalhadasRow =
            usuarioReceitasDetalhadasRowList.isNotEmpty
                ? usuarioReceitasDetalhadasRowList.first
                : null;

        return Title(
            title: ':usuario',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                drawer: Drawer(
                  elevation: 16.0,
                  child: wrapWithModel(
                    model: _model.menuLateralEModel,
                    updateCallback: () => safeSetState(() {}),
                    child: MenuLateralEWidget(),
                  ),
                ),
                body: SafeArea(
                  top: true,
                  child: SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StickyHeader(
                          overlapHeaders: false,
                          header: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                2.0, 0.0, 0.0, 0.0),
                            child: wrapWithModel(
                              model: _model.menuPrincipalModel,
                              updateCallback: () => safeSetState(() {}),
                              child: MenuPrincipalWidget(
                                drawer: () async {
                                  scaffoldKey.currentState!.openDrawer();
                                },
                              ),
                            ),
                          ),
                          content: Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              constraints: BoxConstraints(
                                maxWidth: 1200.0,
                              ),
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children:
                                    <Widget>[].addToEnd(SizedBox(height: 40.0)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
      },
    );
  }
}

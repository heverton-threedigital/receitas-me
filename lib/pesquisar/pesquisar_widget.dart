import '/backend/supabase/supabase.dart';
import '/components/menu_lateral_e_widget.dart';
import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'pesquisar_model.dart';
export 'pesquisar_model.dart';

class PesquisarWidget extends StatefulWidget {
  const PesquisarWidget({super.key});

  static String routeName = 'Pesquisar';
  static String routePath = 'pesquisar';

  @override
  State<PesquisarWidget> createState() => _PesquisarWidgetState();
}

class _PesquisarWidgetState extends State<PesquisarWidget> {
  late PesquisarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PesquisarModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!(FFAppState().categoriasReceitas.isNotEmpty)) {
        _model.categoriasQuery = await CategoriasTable().queryRows(
          queryFn: (q) => q.order('nome', ascending: true),
        );
        FFAppState().categoriasReceitas = _model.categoriasQuery!
            .map((e) => e.nome)
            .toList()
            .toList()
            .cast<String>();
        safeSetState(() {});
      }
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
    context.watch<FFAppState>();

    return Title(
        title: 'Pesquisar',
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
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
                  Flexible(
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        constraints: BoxConstraints(
                          maxWidth: 1200.0,
                        ),
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

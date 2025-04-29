import '/components/menu_lateral_e_widget.dart';
import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'receitas_salvas_model.dart';
export 'receitas_salvas_model.dart';

class ReceitasSalvasWidget extends StatefulWidget {
  const ReceitasSalvasWidget({super.key});

  static String routeName = 'ReceitasSalvas';
  static String routePath = 'receitas-salvas';

  @override
  State<ReceitasSalvasWidget> createState() => _ReceitasSalvasWidgetState();
}

class _ReceitasSalvasWidgetState extends State<ReceitasSalvasWidget> {
  late ReceitasSalvasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReceitasSalvasModel());

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
        title: 'Receitas salvas',
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
                model: _model.menuLateralEModel2,
                updateCallback: () => safeSetState(() {}),
                child: MenuLateralEWidget(),
              ),
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  wrapWithModel(
                    model: _model.menuPrincipalModel,
                    updateCallback: () => safeSetState(() {}),
                    child: MenuPrincipalWidget(
                      drawer: () async {
                        scaffoldKey.currentState!.openDrawer();
                      },
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
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (FFAppState().barraLateral == true)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 24.0, 0.0),
                                child: Container(
                                  width: 200.0,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 8.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.menuLateralEModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: MenuLateralEWidget(),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 1.0,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.9,
                                  height: 300.0,
                                  constraints: BoxConstraints(
                                    maxWidth: 1120.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
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

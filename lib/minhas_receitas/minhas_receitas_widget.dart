import '/components/menu_lateral_widget.dart';
import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'minhas_receitas_model.dart';
export 'minhas_receitas_model.dart';

class MinhasReceitasWidget extends StatefulWidget {
  const MinhasReceitasWidget({super.key});

  static String routeName = 'MinhasReceitas';
  static String routePath = 'minhasReceitas';

  @override
  State<MinhasReceitasWidget> createState() => _MinhasReceitasWidgetState();
}

class _MinhasReceitasWidgetState extends State<MinhasReceitasWidget> {
  late MinhasReceitasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MinhasReceitasModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'MinhasReceitas',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: wrapWithModel(
                        model: _model.menuPrincipalModel,
                        updateCallback: () => safeSetState(() {}),
                        child: MenuPrincipalWidget(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        constraints: BoxConstraints(
                          maxWidth: 1180.0,
                        ),
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: MediaQuery.sizeOf(context).height * 1.0,
                              child: wrapWithModel(
                                model: _model.menuLateralModel,
                                updateCallback: () => safeSetState(() {}),
                                child: MenuLateralWidget(),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [],
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

import '/components/menu_lateral_e_widget.dart';
import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'noticacoes_model.dart';
export 'noticacoes_model.dart';

class NoticacoesWidget extends StatefulWidget {
  const NoticacoesWidget({super.key});

  static String routeName = 'Noticacoes';
  static String routePath = 'noticacoes';

  @override
  State<NoticacoesWidget> createState() => _NoticacoesWidgetState();
}

class _NoticacoesWidgetState extends State<NoticacoesWidget> {
  late NoticacoesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoticacoesModel());

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
        title: 'Noticacoes',
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
                mainAxisSize: MainAxisSize.max,
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
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        constraints: BoxConstraints(
                          maxWidth: 1120.0,
                        ),
                        decoration: BoxDecoration(),
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

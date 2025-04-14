import '/components/membros_widget.dart';
import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'painel_model.dart';
export 'painel_model.dart';

class PainelWidget extends StatefulWidget {
  const PainelWidget({super.key});

  static String routeName = 'Painel';
  static String routePath = '/painel';

  @override
  State<PainelWidget> createState() => _PainelWidgetState();
}

class _PainelWidgetState extends State<PainelWidget> {
  late PainelModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PainelModel());

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
        title: 'Painel',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.menuPrincipalModel,
                    updateCallback: () => safeSetState(() {}),
                    child: MenuPrincipalWidget(),
                  ),
                  wrapWithModel(
                    model: _model.membrosModel,
                    updateCallback: () => safeSetState(() {}),
                    child: MembrosWidget(),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

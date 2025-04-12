import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'criar_receita_model.dart';
export 'criar_receita_model.dart';

/// Página de cadastro de receitas
class CriarReceitaWidget extends StatefulWidget {
  const CriarReceitaWidget({super.key});

  static String routeName = 'CriarReceita';
  static String routePath = '/criar-receita';

  @override
  State<CriarReceitaWidget> createState() => _CriarReceitaWidgetState();
}

class _CriarReceitaWidgetState extends State<CriarReceitaWidget> {
  late CriarReceitaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CriarReceitaModel());

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
        title: 'Criar receita',
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
                children: [
                  wrapWithModel(
                    model: _model.menuPrincipalModel,
                    updateCallback: () => safeSetState(() {}),
                    child: MenuPrincipalWidget(),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

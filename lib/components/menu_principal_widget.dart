import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'menu_principal_model.dart';
export 'menu_principal_model.dart';

class MenuPrincipalWidget extends StatefulWidget {
  const MenuPrincipalWidget({super.key});

  @override
  State<MenuPrincipalWidget> createState() => _MenuPrincipalWidgetState();
}

class _MenuPrincipalWidgetState extends State<MenuPrincipalWidget> {
  late MenuPrincipalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuPrincipalModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (loggedIn) {
        if (!(FFAppState().imagemPerfil != '')) {
          _model.perfilLogado = await PerfisTable().queryRows(
            queryFn: (q) => q.eqOrNull(
              'id',
              currentUserUid,
            ),
          );
          FFAppState().imagemPerfil = valueOrDefault<String>(
            _model.perfilLogado?.firstOrNull?.avatarUrl,
            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/receitasme-qwpzde/assets/mex7u89o6ebl/user-receita.me.png',
          );
          safeSetState(() {});
        }
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.9,
            height: 80.0,
            constraints: BoxConstraints(
              maxWidth: 1200.0,
            ),
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(InicioWidget.routeName);
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: SvgPicture.asset(
                        'assets/images/Receitas.me.svg',
                        width: 150.0,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (!loggedIn)
                        FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(LoginWidget.routeName);
                          },
                          text: 'Login',
                          icon: Icon(
                            Icons.login_rounded,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            height: 36.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Noto Sans',
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          showLoadingIndicator: false,
                        ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(NovaReceitaWidget.routeName);
                        },
                        text: 'Nova receita',
                        icon: Icon(
                          Icons.create_outlined,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          height: 38.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconAlignment: IconAlignment.start,
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Noto Sans',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        showLoadingIndicator: false,
                      ),
                      if (loggedIn)
                        Container(
                          width: 38.0,
                          height: 38.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            valueOrDefault<String>(
                              FFAppState().imagemPerfil,
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/receitasme-qwpzde/assets/mex7u89o6ebl/user-receita.me.png',
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                    ].divide(SizedBox(width: 8.0)),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 1.0,
            color: FlutterFlowTheme.of(context).alternate,
          ),
        ],
      ),
    );
  }
}

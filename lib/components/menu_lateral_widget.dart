import '/auth/base_auth_user_provider.dart';
import '/backend/supabase/supabase.dart';
import '/components/categoria_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'menu_lateral_model.dart';
export 'menu_lateral_model.dart';

class MenuLateralWidget extends StatefulWidget {
  const MenuLateralWidget({
    super.key,
    this.pagina,
  });

  final String? pagina;

  @override
  State<MenuLateralWidget> createState() => _MenuLateralWidgetState();
}

class _MenuLateralWidgetState extends State<MenuLateralWidget> {
  late MenuLateralModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuLateralModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: responsiveVisibility(
        context: context,
        phone: false,
        tablet: false,
      ),
      child: Container(
        width: 235.73,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 16.0),
                  child: SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MouseRegion(
                          opaque: false,
                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 16.0, 8.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(InicioWidget.routeName);
                              },
                              child: Container(
                                width: double.infinity,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: () {
                                    if (widget.pagina == 'inicio') {
                                      return FlutterFlowTheme.of(context)
                                          .secondaryBackground;
                                    } else if (_model.mouseRegionHovered1) {
                                      return FlutterFlowTheme.of(context)
                                          .secondaryBackground;
                                    } else {
                                      return Color(0x00000000);
                                    }
                                  }(),
                                  borderRadius: BorderRadius.circular(12.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.home_outlined,
                                        color: () {
                                          if (widget.pagina == 'inicio') {
                                            return FlutterFlowTheme.of(context)
                                                .primary;
                                          } else if (_model
                                              .mouseRegionHovered1) {
                                            return FlutterFlowTheme.of(context)
                                                .primaryText;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .secondaryText;
                                          }
                                        }(),
                                        size: 24.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Página incial',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Noto Sans',
                                                color: () {
                                                  if (widget.pagina ==
                                                      'inicio') {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .primary;
                                                  } else if (_model
                                                      .mouseRegionHovered1) {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText;
                                                  } else {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText;
                                                  }
                                                }(),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onEnter: ((event) async {
                            safeSetState(
                                () => _model.mouseRegionHovered1 = true);
                          }),
                          onExit: ((event) async {
                            safeSetState(
                                () => _model.mouseRegionHovered1 = false);
                          }),
                        ),
                        MouseRegion(
                          opaque: false,
                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 16.0, 8.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(NoticacoesWidget.routeName);
                              },
                              child: Container(
                                width: double.infinity,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: () {
                                    if (widget.pagina == 'notificacoes') {
                                      return FlutterFlowTheme.of(context)
                                          .secondaryBackground;
                                    } else if (_model.mouseRegionHovered2) {
                                      return FlutterFlowTheme.of(context)
                                          .secondaryBackground;
                                    } else {
                                      return Color(0x00000000);
                                    }
                                  }(),
                                  borderRadius: BorderRadius.circular(12.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.notifications_none_rounded,
                                        color: () {
                                          if (widget.pagina ==
                                              'notificacoes') {
                                            return FlutterFlowTheme.of(context)
                                                .primary;
                                          } else if (_model
                                              .mouseRegionHovered2) {
                                            return FlutterFlowTheme.of(context)
                                                .primaryText;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .secondaryText;
                                          }
                                        }(),
                                        size: 24.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Notificações',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Noto Sans',
                                                color: () {
                                                  if (widget.pagina ==
                                                      'notificacoes') {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .primary;
                                                  } else if (_model
                                                      .mouseRegionHovered2) {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText;
                                                  } else {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText;
                                                  }
                                                }(),
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onEnter: ((event) async {
                            safeSetState(
                                () => _model.mouseRegionHovered2 = true);
                          }),
                          onExit: ((event) async {
                            safeSetState(
                                () => _model.mouseRegionHovered2 = false);
                          }),
                        ),
                        MouseRegion(
                          opaque: false,
                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                          child: Visibility(
                            visible: loggedIn,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 16.0, 8.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                      MinhasReceitasWidget.routeName);
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: () {
                                      if (widget.pagina == 'minhasreceitas') {
                                        return FlutterFlowTheme.of(context)
                                            .secondaryBackground;
                                      } else if (_model.mouseRegionHovered3) {
                                        return FlutterFlowTheme.of(context)
                                            .secondaryBackground;
                                      } else {
                                        return Color(0x00000000);
                                      }
                                    }(),
                                    borderRadius: BorderRadius.circular(12.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.auto_awesome_motion_outlined,
                                          color: () {
                                            if (widget.pagina ==
                                                'minhasreceitas') {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .primary;
                                            } else if (_model
                                                .mouseRegionHovered3) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .primaryText;
                                            } else {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .secondaryText;
                                            }
                                          }(),
                                          size: 24.0,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Minhas receitas',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Noto Sans',
                                                  color: () {
                                                    if (widget.pagina ==
                                                        'minhasreceitas') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primary;
                                                    } else if (_model
                                                        .mouseRegionHovered3) {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primaryText;
                                                    } else {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryText;
                                                    }
                                                  }(),
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onEnter: ((event) async {
                            safeSetState(
                                () => _model.mouseRegionHovered3 = true);
                          }),
                          onExit: ((event) async {
                            safeSetState(
                                () => _model.mouseRegionHovered3 = false);
                          }),
                        ),
                        MouseRegion(
                          opaque: false,
                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 16.0, 8.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context
                                    .pushNamed(ReceitasSalvasWidget.routeName);
                              },
                              child: Container(
                                width: double.infinity,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: () {
                                    if (widget.pagina == 'receitassalvas') {
                                      return FlutterFlowTheme.of(context)
                                          .secondaryBackground;
                                    } else if (_model.mouseRegionHovered4) {
                                      return FlutterFlowTheme.of(context)
                                          .secondaryBackground;
                                    } else {
                                      return Color(0x00000000);
                                    }
                                  }(),
                                  borderRadius: BorderRadius.circular(12.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.bookmark_border_rounded,
                                        color: () {
                                          if (widget.pagina ==
                                              'receitassalvas') {
                                            return FlutterFlowTheme.of(context)
                                                .primary;
                                          } else if (_model
                                              .mouseRegionHovered4) {
                                            return FlutterFlowTheme.of(context)
                                                .primaryText;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .secondaryText;
                                          }
                                        }(),
                                        size: 24.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Receitas salvas',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Noto Sans',
                                                color: () {
                                                  if (widget.pagina ==
                                                      'receitassalvas') {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .primary;
                                                  } else if (_model
                                                      .mouseRegionHovered4) {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText;
                                                  } else {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText;
                                                  }
                                                }(),
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onEnter: ((event) async {
                            safeSetState(
                                () => _model.mouseRegionHovered4 = true);
                          }),
                          onExit: ((event) async {
                            safeSetState(
                                () => _model.mouseRegionHovered4 = false);
                          }),
                        ),
                        MouseRegion(
                          opaque: false,
                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                          child: Visibility(
                            visible: loggedIn,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 16.0, 8.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(PainelWidget.routeName);
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: () {
                                      if (widget.pagina == 'painel') {
                                        return FlutterFlowTheme.of(context)
                                            .secondaryBackground;
                                      } else if (_model.mouseRegionHovered5) {
                                        return FlutterFlowTheme.of(context)
                                            .secondaryBackground;
                                      } else {
                                        return Color(0x00000000);
                                      }
                                    }(),
                                    borderRadius: BorderRadius.circular(12.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.addchart_rounded,
                                          color: () {
                                            if (widget.pagina == 'painel') {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .primary;
                                            } else if (_model
                                                .mouseRegionHovered5) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .primaryText;
                                            } else {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .secondaryText;
                                            }
                                          }(),
                                          size: 24.0,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Painel',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Noto Sans',
                                                  color: () {
                                                    if (widget.pagina ==
                                                        'painel') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primary;
                                                    } else if (_model
                                                        .mouseRegionHovered5) {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primaryText;
                                                    } else {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryText;
                                                    }
                                                  }(),
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onEnter: ((event) async {
                            safeSetState(
                                () => _model.mouseRegionHovered5 = true);
                          }),
                          onExit: ((event) async {
                            safeSetState(
                                () => _model.mouseRegionHovered5 = false);
                          }),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 24.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 8.0),
                                  child: Text(
                                    'Categorias',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Noto Sans',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                FutureBuilder<List<CategoriasRow>>(
                                  future: FFAppState().categorias(
                                    requestFn: () =>
                                        CategoriasTable().queryRows(
                                      queryFn: (q) =>
                                          q.order('nome', ascending: true),
                                    ),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<CategoriasRow> wrapCategoriasRowList =
                                        snapshot.data!;

                                    return Wrap(
                                      spacing: 8.0,
                                      runSpacing: 8.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: List.generate(
                                          wrapCategoriasRowList.length,
                                          (wrapIndex) {
                                        final wrapCategoriasRow =
                                            wrapCategoriasRowList[wrapIndex];
                                        return CategoriaWidget(
                                          key: Key(
                                              'Keyo26_${wrapIndex}_of_${wrapCategoriasRowList.length}'),
                                          categorias: wrapCategoriasRow,
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            VerticalDivider(
              width: 1.0,
              thickness: 0.0,
              color: FlutterFlowTheme.of(context).alternate,
            ),
          ],
        ),
      ),
    );
  }
}

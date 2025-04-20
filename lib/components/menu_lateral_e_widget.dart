import '/auth/base_auth_user_provider.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'menu_lateral_e_model.dart';
export 'menu_lateral_e_model.dart';

class MenuLateralEWidget extends StatefulWidget {
  const MenuLateralEWidget({
    super.key,
    this.pagina,
  });

  final String? pagina;

  @override
  State<MenuLateralEWidget> createState() => _MenuLateralEWidgetState();
}

class _MenuLateralEWidgetState extends State<MenuLateralEWidget> {
  late MenuLateralEModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuLateralEModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      constraints: BoxConstraints(
        maxWidth: 200.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (responsiveVisibility(
            context: context,
            tablet: false,
            tabletLandscape: false,
            desktop: false,
          ))
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
              child: Container(
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
            ),
          Flexible(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
              child: Container(
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
                        if (responsiveVisibility(
                          context: context,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 8.0),
                            child: InkWell(
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
                          ),
                        MouseRegion(
                          opaque: false,
                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 8.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(InicioWidget.routeName);
                              },
                              child: Container(
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
                                    mainAxisSize: MainAxisSize.min,
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
                                      if (responsiveVisibility(
                                        context: context,
                                        tabletLandscape: false,
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 14.0, 0.0),
                                          child: Text(
                                            'Página incial',
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Raleway',
                                                  color: () {
                                                    if (widget.pagina ==
                                                        'inicio') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primary;
                                                    } else if (_model
                                                        .mouseRegionHovered1) {
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
                                0.0, 0.0, 0.0, 8.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(NoticacoesWidget.routeName);
                              },
                              child: Container(
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
                                    mainAxisSize: MainAxisSize.min,
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
                                      if (responsiveVisibility(
                                        context: context,
                                        tabletLandscape: false,
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 28.0, 0.0),
                                          child: Text(
                                            'Notificações',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Raleway',
                                                  color: () {
                                                    if (widget.pagina ==
                                                        'notificacoes') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primary;
                                                    } else if (_model
                                                        .mouseRegionHovered2) {
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
                                  0.0, 0.0, 0.0, 8.0),
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
                                      mainAxisSize: MainAxisSize.min,
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
                                        if (responsiveVisibility(
                                          context: context,
                                          tabletLandscape: false,
                                        ))
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 6.0, 0.0),
                                            child: Text(
                                              'Minhas receitas',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
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
                                0.0, 0.0, 0.0, 8.0),
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
                                    mainAxisSize: MainAxisSize.min,
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
                                      if (responsiveVisibility(
                                        context: context,
                                        tabletLandscape: false,
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 11.0, 0.0),
                                          child: Text(
                                            'Receitas salvas',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Raleway',
                                                  color: () {
                                                    if (widget.pagina ==
                                                        'receitassalvas') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primary;
                                                    } else if (_model
                                                        .mouseRegionHovered4) {
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
                                  0.0, 0.0, 0.0, 8.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(PainelWidget.routeName);
                                },
                                child: Container(
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
                                      mainAxisSize: MainAxisSize.min,
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
                                        if (responsiveVisibility(
                                          context: context,
                                          tabletLandscape: false,
                                        ))
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 69.0, 0.0),
                                            child: Text(
                                              'Painel',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (responsiveVisibility(
            context: context,
            phone: false,
          ))
            VerticalDivider(
              width: 1.0,
              thickness: 0.0,
              color: FlutterFlowTheme.of(context).alternate,
            ),
        ],
      ),
    );
  }
}

import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/login_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'card_receita_model.dart';
export 'card_receita_model.dart';

class CardReceitaWidget extends StatefulWidget {
  const CardReceitaWidget({
    super.key,
    this.imagemReceita,
    this.idReceita,
    this.tituloReceita,
    this.porcoes,
    this.tempo,
    this.fotoAutor,
    this.nomeAutor,
    required this.sobrenomeAutor,
  });

  final String? imagemReceita;
  final String? idReceita;
  final String? tituloReceita;
  final String? porcoes;
  final int? tempo;
  final String? fotoAutor;
  final String? nomeAutor;
  final String? sobrenomeAutor;

  @override
  State<CardReceitaWidget> createState() => _CardReceitaWidgetState();
}

class _CardReceitaWidgetState extends State<CardReceitaWidget> {
  late CardReceitaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardReceitaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(0.0),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    ReceitaWidget.routeName,
                    pathParameters: {
                      'receitaid': serializeParam(
                        widget.idReceita,
                        ParamType.String,
                      ),
                    }.withoutNulls,
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    valueOrDefault<String>(
                      widget.imagemReceita,
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/receitasme-qwpzde/assets/vv9t7qlnh72t/imagem_receita.jpg',
                    ),
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 1.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      ReceitaWidget.routeName,
                      pathParameters: {
                        'receitaid': serializeParam(
                          widget.idReceita,
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: Text(
                    valueOrDefault<String>(
                      widget.tituloReceita,
                      '-',
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.workSans(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                          lineHeight: 1.3,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                child: Container(
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.fastfood_outlined,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 16.0,
                              ),
                              Text(
                                valueOrDefault<String>(
                                  widget.porcoes,
                                  '-',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      font: GoogleFonts.workSans(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                              ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.alarm,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 16.0,
                              ),
                              Text(
                                valueOrDefault<String>(
                                  '${widget.tempo?.toString()} min',
                                  '-',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      font: GoogleFonts.workSans(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                              ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                        ].divide(SizedBox(width: 8.0)),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 24.0,
                                height: 24.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    widget.fotoAutor,
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/receitasme-qwpzde/assets/mex7u89o6ebl/user-receita.me.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  '${widget.nomeAutor} ${widget.sobrenomeAutor}',
                                  '-',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.workSans(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ].divide(SizedBox(width: 4.0)),
                          ),
                          Builder(
                            builder: (context) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (loggedIn) {
                                  await ReceitasSalvasTable().insert({
                                    'usuario_id': currentUserUid,
                                    'receita_id': widget.idReceita,
                                  });
                                  FFAppState().ReceitaSalva = true;
                                  safeSetState(() {});
                                } else {
                                  await showDialog(
                                    barrierColor: Color(0x80000000),
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.9,
                                          child: LoginWidget(
                                            redirecionar: () async {
                                              await ReceitasSalvasTable()
                                                  .insert({
                                                'usuario_id': currentUserUid,
                                                'receita_id': widget.idReceita,
                                              });
                                              FFAppState().ReceitaSalva = true;
                                              safeSetState(() {});
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                }
                              },
                              child: Icon(
                                Icons.bookmark_border,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ].divide(SizedBox(width: 4.0)),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                ),
              ),
            ].divide(SizedBox(height: 8.0)),
          ),
        ),
      ),
    );
  }
}

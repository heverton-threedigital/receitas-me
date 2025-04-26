import '/backend/supabase/supabase.dart';
import '/components/card_receita_widget.dart';
import '/components/card_users_widget.dart';
import '/components/menu_lateral_e_widget.dart';
import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'inicio_model.dart';
export 'inicio_model.dart';

class InicioWidget extends StatefulWidget {
  const InicioWidget({super.key});

  static String routeName = 'Inicio';
  static String routePath = 'inicio';

  @override
  State<InicioWidget> createState() => _InicioWidgetState();
}

class _InicioWidgetState extends State<InicioWidget> {
  late InicioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InicioModel());

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
        title: 'Receitas.me',
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
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StickyHeader(
                      overlapHeaders: false,
                      header: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
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
                      content: Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          constraints: BoxConstraints(
                            maxWidth: 1200.0,
                          ),
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 40.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 40.0),
                                  child: Flex(
                                    direction: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return false;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return true;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return true;
                                      } else {
                                        return true;
                                      }
                                    }()
                                        ? Axis.horizontal
                                        : Axis.vertical,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 344.0,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Que receita você quer fazer hoje?',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .displayMedium
                                                  .override(
                                                    font: GoogleFonts.workSans(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .displayMedium
                                                              .fontStyle,
                                                    ),
                                                    fontSize: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 32.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 40.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 40.0;
                                                      } else {
                                                        return 40.0;
                                                      }
                                                    }(),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w800,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .displayMedium
                                                            .fontStyle,
                                                    lineHeight: 1.2,
                                                  ),
                                            ),
                                            Text(
                                              'Procure por receitas, ingredientes ou criadores',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    font: GoogleFonts.workSans(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: 138.4,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.4,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Text(
                                                        'Está buscando uma sobremsa?',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .workSans(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      24.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontStyle,
                                                                  lineHeight:
                                                                      1.2,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                      child: Image.network(
                                                        'https://images.unsplash.com/photo-1630953900113-ab915924aab2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxTb2JyZW1lc2F8ZW58MHx8fHwxNzQ1NDIzMTIxfDA&ixlib=rb-4.0.3&q=80&w=1080',
                                                        width: 104.0,
                                                        height: 200.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 4.0)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: 138.4,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.4,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Text(
                                                        'Quer fazer uma pizza?',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .workSans(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      24.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontStyle,
                                                                  lineHeight:
                                                                      1.2,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                      child: Image.network(
                                                        'https://images.unsplash.com/photo-1571066811602-716837d681de?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxwaXp6YXxlbnwwfHx8fDE3NDUzOTE2ODJ8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                                        width: 104.0,
                                                        height: 200.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 4.0)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(() {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return false;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return true;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return true;
                                      } else {
                                        return true;
                                      }
                                    }()
                                        ? SizedBox(width: 16.0)
                                        : SizedBox(height: 16.0)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 24.0),
                                  child: StreamBuilder<List<CategoriasRow>>(
                                    stream: _model.caegoriasInicio(
                                      requestFn: () =>
                                          _model.rowSupabaseStream ??= SupaFlow
                                              .client
                                              .from("categorias")
                                              .stream(primaryKey: ['id'])
                                              .order('criado_em')
                                              .map((list) => list
                                                  .map((item) =>
                                                      CategoriasRow(item))
                                                  .toList()),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: SpinKitPulse(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 50.0,
                                            ),
                                          ),
                                        );
                                      }
                                      List<CategoriasRow> rowCategoriasRowList =
                                          snapshot.data!;

                                      return SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: List.generate(
                                              rowCategoriasRowList.length,
                                              (rowIndex) {
                                            final rowCategoriasRow =
                                                rowCategoriasRowList[rowIndex];
                                            return Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 80.0,
                                                  height: 80.0,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    valueOrDefault<String>(
                                                      rowCategoriasRow
                                                          .imagemUrl,
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/receitasme-qwpzde/assets/xc0k5g3j3cgv/icon_receitas.me.png',
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    rowCategoriasRow.nome,
                                                    'Sobremesa',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .workSans(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ],
                                            );
                                          }).divide(SizedBox(width: 24.0)),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Divider(
                                  height: 1.0,
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 24.0, 0.0, 16.0),
                                  child: Text(
                                    'Últimas receitas',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          font: GoogleFonts.workSans(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 24.0),
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child:
                                        FutureBuilder<List<ReceitasResumoRow>>(
                                      future: ReceitasResumoTable().queryRows(
                                        queryFn: (q) => q
                                            .eqOrNull(
                                              'publicado',
                                              true,
                                            )
                                            .order('criado_em'),
                                        limit: 8,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: SpinKitPulse(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 50.0,
                                              ),
                                            ),
                                          );
                                        }
                                        List<ReceitasResumoRow>
                                            staggeredViewReceitasResumoRowList =
                                            snapshot.data!;

                                        return MasonryGridView.builder(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          gridDelegate:
                                              SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 2;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 3;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 4;
                                              } else {
                                                return 4;
                                              }
                                            }(),
                                          ),
                                          crossAxisSpacing: 16.0,
                                          mainAxisSpacing: 16.0,
                                          itemCount:
                                              staggeredViewReceitasResumoRowList
                                                  .length,
                                          shrinkWrap: true,
                                          itemBuilder:
                                              (context, staggeredViewIndex) {
                                            final staggeredViewReceitasResumoRow =
                                                staggeredViewReceitasResumoRowList[
                                                    staggeredViewIndex];
                                            return CardReceitaWidget(
                                              key: Key(
                                                  'Keyae1_${staggeredViewIndex}_of_${staggeredViewReceitasResumoRowList.length}'),
                                              imagemReceita:
                                                  valueOrDefault<String>(
                                                staggeredViewReceitasResumoRow
                                                    .imagemUrl,
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/receitasme-qwpzde/assets/vv9t7qlnh72t/imagem_receita.jpg',
                                              ),
                                              idReceita: valueOrDefault<String>(
                                                staggeredViewReceitasResumoRow
                                                    .id,
                                                '-',
                                              ),
                                              tituloReceita:
                                                  valueOrDefault<String>(
                                                staggeredViewReceitasResumoRow
                                                    .titulo,
                                                '-',
                                              ),
                                              porcoes: valueOrDefault<String>(
                                                staggeredViewReceitasResumoRow
                                                    .porcoes,
                                                '-',
                                              ),
                                              tempo:
                                                  staggeredViewReceitasResumoRow
                                                      .tempoPreparo,
                                              fotoAutor: valueOrDefault<String>(
                                                staggeredViewReceitasResumoRow
                                                    .autorAvatarUrl,
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/receitasme-qwpzde/assets/mex7u89o6ebl/user-receita.me.png',
                                              ),
                                              nomeAutor: valueOrDefault<String>(
                                                staggeredViewReceitasResumoRow
                                                    .autorNome,
                                                '-',
                                              ),
                                              sobrenomeAutor:
                                                  valueOrDefault<String>(
                                                staggeredViewReceitasResumoRow
                                                    .autorSobrenome,
                                                '-',
                                              ),
                                              tempoPeriodo:
                                                  valueOrDefault<String>(
                                                staggeredViewReceitasResumoRow
                                                    .tempoPreparoPeriodo,
                                                '-',
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 16.0),
                                  child: Text(
                                    'Conheça criadores',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          font: GoogleFonts.workSans(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 24.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(),
                                    child: FutureBuilder<
                                        List<PerfisComContagemReceitasRow>>(
                                      future: PerfisComContagemReceitasTable()
                                          .queryRows(
                                        queryFn: (q) =>
                                            q.order('quantidade_receitas'),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: SpinKitPulse(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 50.0,
                                              ),
                                            ),
                                          );
                                        }
                                        List<PerfisComContagemReceitasRow>
                                            staggeredViewPerfisComContagemReceitasRowList =
                                            snapshot.data!;

                                        return MasonryGridView.builder(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          gridDelegate:
                                              SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 1;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 2;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 4;
                                              } else {
                                                return 4;
                                              }
                                            }(),
                                          ),
                                          crossAxisSpacing: 8.0,
                                          mainAxisSpacing: 8.0,
                                          itemCount:
                                              staggeredViewPerfisComContagemReceitasRowList
                                                  .length,
                                          shrinkWrap: true,
                                          itemBuilder:
                                              (context, staggeredViewIndex) {
                                            final staggeredViewPerfisComContagemReceitasRow =
                                                staggeredViewPerfisComContagemReceitasRowList[
                                                    staggeredViewIndex];
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                  UsuarioWidget.routeName,
                                                  pathParameters: {
                                                    'usuario': serializeParam(
                                                      staggeredViewPerfisComContagemReceitasRow
                                                          .usuario,
                                                      ParamType.String,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: CardUsersWidget(
                                                key: Key(
                                                    'Key262_${staggeredViewIndex}_of_${staggeredViewPerfisComContagemReceitasRowList.length}'),
                                                idUsuario:
                                                    staggeredViewPerfisComContagemReceitasRow
                                                        .id!,
                                                fotoUsuario:
                                                    valueOrDefault<String>(
                                                  staggeredViewPerfisComContagemReceitasRow
                                                      .avatarUrl,
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/receitasme-qwpzde/assets/mex7u89o6ebl/user-receita.me.png',
                                                ),
                                                nomeUsuario:
                                                    staggeredViewPerfisComContagemReceitasRow
                                                        .nome!,
                                                sobrenomeUsuario:
                                                    staggeredViewPerfisComContagemReceitasRow
                                                        .sobrenome!,
                                                quantidadeReceitas:
                                                    valueOrDefault<String>(
                                                  staggeredViewPerfisComContagemReceitasRow
                                                      .quantidadeReceitas
                                                      ?.toString(),
                                                  '0',
                                                ),
                                                usuario:
                                                    staggeredViewPerfisComContagemReceitasRow
                                                        .usuario!,
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ].addToEnd(SizedBox(height: 40.0)),
                ),
              ),
            ),
          ),
        ));
  }
}

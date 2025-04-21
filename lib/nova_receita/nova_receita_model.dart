import '/backend/supabase/supabase.dart';
import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'nova_receita_widget.dart' show NovaReceitaWidget;
import 'package:flutter/material.dart';

class NovaReceitaModel extends FlutterFlowModel<NovaReceitaWidget> {
  ///  Local state fields for this page.

  FFUploadedFile? imagemReceita;

  ///  State fields for stateful widgets in this page.

  // Model for MenuPrincipal component.
  late MenuPrincipalModel menuPrincipalModel;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for ingrediente widget.
  FocusNode? ingredienteFocusNode;
  TextEditingController? ingredienteTextController;
  String? Function(BuildContext, String?)? ingredienteTextControllerValidator;
  // State field(s) for passo widget.
  FocusNode? passoFocusNode;
  TextEditingController? passoTextController;
  String? Function(BuildContext, String?)? passoTextControllerValidator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ReceitasRow? receitaCriada2;
  InstantTimer? instantTimer;
  InstantTimer? instantTimer2;
  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ReceitasRow? receitaCriada;
  InstantTimer? instantTimer1;
  InstantTimer? instantTimer3;

  @override
  void initState(BuildContext context) {
    menuPrincipalModel = createModel(context, () => MenuPrincipalModel());
  }

  @override
  void dispose() {
    menuPrincipalModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    ingredienteFocusNode?.dispose();
    ingredienteTextController?.dispose();

    passoFocusNode?.dispose();
    passoTextController?.dispose();

    instantTimer?.cancel();
    instantTimer2?.cancel();
    instantTimer1?.cancel();
    instantTimer3?.cancel();
  }
}

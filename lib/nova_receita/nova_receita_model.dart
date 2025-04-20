import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nova_receita_widget.dart' show NovaReceitaWidget;
import 'package:flutter/material.dart';

class NovaReceitaModel extends FlutterFlowModel<NovaReceitaWidget> {
  ///  Local state fields for this page.

  FFUploadedFile? imagemReceita;

  List<String> ingredientes = [];
  void addToIngredientes(String item) => ingredientes.add(item);
  void removeFromIngredientes(String item) => ingredientes.remove(item);
  void removeAtIndexFromIngredientes(int index) => ingredientes.removeAt(index);
  void insertAtIndexInIngredientes(int index, String item) =>
      ingredientes.insert(index, item);
  void updateIngredientesAtIndex(int index, Function(String) updateFn) =>
      ingredientes[index] = updateFn(ingredientes[index]);

  ///  State fields for stateful widgets in this page.

  // Model for MenuPrincipal component.
  late MenuPrincipalModel menuPrincipalModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
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
  FocusNode? ingredienteFocusNode1;
  TextEditingController? ingredienteTextController1;
  String? Function(BuildContext, String?)? ingredienteTextController1Validator;
  // State field(s) for ingrediente widget.
  FocusNode? ingredienteFocusNode2;
  TextEditingController? ingredienteTextController2;
  String? Function(BuildContext, String?)? ingredienteTextController2Validator;

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

    ingredienteFocusNode1?.dispose();
    ingredienteTextController1?.dispose();

    ingredienteFocusNode2?.dispose();
    ingredienteTextController2?.dispose();
  }
}

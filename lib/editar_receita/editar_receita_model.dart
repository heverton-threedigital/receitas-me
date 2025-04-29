import '/backend/supabase/supabase.dart';
import '/components/menu_lateral_e_widget.dart';
import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'editar_receita_widget.dart' show EditarReceitaWidget;
import 'package:flutter/material.dart';

class EditarReceitaModel extends FlutterFlowModel<EditarReceitaWidget> {
  ///  Local state fields for this page.

  FFUploadedFile? imagemReceita;

  String? titulo;

  String? descricao;

  String? porcoes;

  String? tempoPreparo;

  List<String> listaIngredientesTextos = [];
  void addToListaIngredientesTextos(String item) =>
      listaIngredientesTextos.add(item);
  void removeFromListaIngredientesTextos(String item) =>
      listaIngredientesTextos.remove(item);
  void removeAtIndexFromListaIngredientesTextos(int index) =>
      listaIngredientesTextos.removeAt(index);
  void insertAtIndexInListaIngredientesTextos(int index, String item) =>
      listaIngredientesTextos.insert(index, item);
  void updateListaIngredientesTextosAtIndex(
          int index, Function(String) updateFn) =>
      listaIngredientesTextos[index] = updateFn(listaIngredientesTextos[index]);

  String? imagemReceitaURL = '';

  List<String> passos = [];
  void addToPassos(String item) => passos.add(item);
  void removeFromPassos(String item) => passos.remove(item);
  void removeAtIndexFromPassos(int index) => passos.removeAt(index);
  void insertAtIndexInPassos(int index, String item) =>
      passos.insert(index, item);
  void updatePassosAtIndex(int index, Function(String) updateFn) =>
      passos[index] = updateFn(passos[index]);

  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // Model for MenuPrincipal component.
  late MenuPrincipalModel menuPrincipalModel;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ReceitasRow>? receitaEditadaSalva;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ReceitasRow>? receitaAtualizadaSalva;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ReceitasRow>? receitaEditadaPublicada;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ReceitasRow>? receitaAtualizada;
  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TituloReceita widget.
  FocusNode? tituloReceitaFocusNode;
  TextEditingController? tituloReceitaTextController;
  String? Function(BuildContext, String?)? tituloReceitaTextControllerValidator;
  String? _tituloReceitaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Digite o titulo da receita';
    }

    return null;
  }

  // State field(s) for DscricaoReceita widget.
  FocusNode? dscricaoReceitaFocusNode;
  TextEditingController? dscricaoReceitaTextController;
  String? Function(BuildContext, String?)?
      dscricaoReceitaTextControllerValidator;
  String? _dscricaoReceitaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Digite uma descrição para a receita';
    }

    return null;
  }

  // State field(s) for CategoriaReceita widget.
  String? categoriaReceitaValue;
  FormFieldController<String>? categoriaReceitaValueController;
  // State field(s) for PorcoesReceita widget.
  FocusNode? porcoesReceitaFocusNode;
  TextEditingController? porcoesReceitaTextController;
  String? Function(BuildContext, String?)?
      porcoesReceitaTextControllerValidator;
  // State field(s) for PreparacaoReceita widget.
  FocusNode? preparacaoReceitaFocusNode;
  TextEditingController? preparacaoReceitaTextController;
  String? Function(BuildContext, String?)?
      preparacaoReceitaTextControllerValidator;
  String? _preparacaoReceitaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Digite o tempo de preparo';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for ingrediente widget.
  FocusNode? ingredienteFocusNode;
  TextEditingController? ingredienteTextController;
  String? Function(BuildContext, String?)? ingredienteTextControllerValidator;
  // State field(s) for passo widget.
  FocusNode? passoFocusNode;
  TextEditingController? passoTextController;
  String? Function(BuildContext, String?)? passoTextControllerValidator;
  String? _passoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo não pode ficar vazio';
    }

    return null;
  }

  // Model for MenuLateralE component.
  late MenuLateralEModel menuLateralEModel;

  @override
  void initState(BuildContext context) {
    menuPrincipalModel = createModel(context, () => MenuPrincipalModel());
    tituloReceitaTextControllerValidator =
        _tituloReceitaTextControllerValidator;
    dscricaoReceitaTextControllerValidator =
        _dscricaoReceitaTextControllerValidator;
    preparacaoReceitaTextControllerValidator =
        _preparacaoReceitaTextControllerValidator;
    passoTextControllerValidator = _passoTextControllerValidator;
    menuLateralEModel = createModel(context, () => MenuLateralEModel());
  }

  @override
  void dispose() {
    menuPrincipalModel.dispose();
    tituloReceitaFocusNode?.dispose();
    tituloReceitaTextController?.dispose();

    dscricaoReceitaFocusNode?.dispose();
    dscricaoReceitaTextController?.dispose();

    porcoesReceitaFocusNode?.dispose();
    porcoesReceitaTextController?.dispose();

    preparacaoReceitaFocusNode?.dispose();
    preparacaoReceitaTextController?.dispose();

    ingredienteFocusNode?.dispose();
    ingredienteTextController?.dispose();

    passoFocusNode?.dispose();
    passoTextController?.dispose();

    menuLateralEModel.dispose();
  }
}

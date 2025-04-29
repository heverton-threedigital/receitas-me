import '/backend/supabase/supabase.dart';
import '/components/menu_lateral_e_widget.dart';
import '/components/menu_principal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'nova_receita_widget.dart' show NovaReceitaWidget;
import 'package:flutter/material.dart';

class NovaReceitaModel extends FlutterFlowModel<NovaReceitaWidget> {
  ///  Local state fields for this page.

  FFUploadedFile? imagemReceita;

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

  List<String> passoaPasso = [];
  void addToPassoaPasso(String item) => passoaPasso.add(item);
  void removeFromPassoaPasso(String item) => passoaPasso.remove(item);
  void removeAtIndexFromPassoaPasso(int index) => passoaPasso.removeAt(index);
  void insertAtIndexInPassoaPasso(int index, String item) =>
      passoaPasso.insert(index, item);
  void updatePassoaPassoAtIndex(int index, Function(String) updateFn) =>
      passoaPasso[index] = updateFn(passoaPasso[index]);

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // Model for MenuPrincipal component.
  late MenuPrincipalModel menuPrincipalModel;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ReceitasRow? receitaCriada1;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // Stores action output result for [Custom Action - slugify] action in Button widget.
  String? slugRegado1;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ReceitasRow>? receitaAtualizada1;
  InstantTimer? instantTimer1;
  InstantTimer? instantTimer3;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ReceitasRow? receitaCriada2;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // Stores action output result for [Custom Action - slugify] action in Button widget.
  String? slugRegado;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ReceitasRow>? receitaAtualizada;
  InstantTimer? instantTimer4;
  InstantTimer? instantTimer5;
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
    instantTimer1?.cancel();
    instantTimer3?.cancel();
    instantTimer4?.cancel();
    instantTimer5?.cancel();
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

import '/backend/supabase/supabase.dart';
import '/components/menu_lateral_e_widget.dart';
import '/components/menu_principal_widget.dart';
import '/components/seletor_categoria_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'nova_receita_widget.dart' show NovaReceitaWidget;
import 'package:flutter/material.dart';

class NovaReceitaModel extends FlutterFlowModel<NovaReceitaWidget> {
  ///  Local state fields for this page.

  FFUploadedFile? imagemReceita;

  List<String> categoriaSelecionada = [];
  void addToCategoriaSelecionada(String item) => categoriaSelecionada.add(item);
  void removeFromCategoriaSelecionada(String item) =>
      categoriaSelecionada.remove(item);
  void removeAtIndexFromCategoriaSelecionada(int index) =>
      categoriaSelecionada.removeAt(index);
  void insertAtIndexInCategoriaSelecionada(int index, String item) =>
      categoriaSelecionada.insert(index, item);
  void updateCategoriaSelecionadaAtIndex(
          int index, Function(String) updateFn) =>
      categoriaSelecionada[index] = updateFn(categoriaSelecionada[index]);

  bool ingredienteOn = true;

  bool passoOn = true;

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

  // Model for SeletorCategoria component.
  late SeletorCategoriaModel seletorCategoriaModel;
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
    seletorCategoriaModel = createModel(context, () => SeletorCategoriaModel());
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

    seletorCategoriaModel.dispose();
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

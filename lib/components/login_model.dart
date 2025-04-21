import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  Local state fields for this component.

  bool islogin = true;

  bool corfirmarConta = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for EmailLogin widget.
  FocusNode? emailLoginFocusNode;
  TextEditingController? emailLoginTextController;
  String? Function(BuildContext, String?)? emailLoginTextControllerValidator;
  // State field(s) for SenhaLogin widget.
  FocusNode? senhaLoginFocusNode;
  TextEditingController? senhaLoginTextController;
  late bool senhaLoginVisibility;
  String? Function(BuildContext, String?)? senhaLoginTextControllerValidator;
  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for Sobrenome widget.
  FocusNode? sobrenomeFocusNode;
  TextEditingController? sobrenomeTextController;
  String? Function(BuildContext, String?)? sobrenomeTextControllerValidator;
  // State field(s) for EmailCadastro widget.
  FocusNode? emailCadastroFocusNode;
  TextEditingController? emailCadastroTextController;
  String? Function(BuildContext, String?)? emailCadastroTextControllerValidator;
  // State field(s) for SenhaCadastro widget.
  FocusNode? senhaCadastroFocusNode;
  TextEditingController? senhaCadastroTextController;
  late bool senhaCadastroVisibility;
  String? Function(BuildContext, String?)? senhaCadastroTextControllerValidator;
  // State field(s) for ConfirmeSenhaCadastro widget.
  FocusNode? confirmeSenhaCadastroFocusNode;
  TextEditingController? confirmeSenhaCadastroTextController;
  late bool confirmeSenhaCadastroVisibility;
  String? Function(BuildContext, String?)?
      confirmeSenhaCadastroTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  PerfisRow? userCriado;
  // State field(s) for CodigodeConfirmacao widget.
  FocusNode? codigodeConfirmacaoFocusNode;
  TextEditingController? codigodeConfirmacaoTextController;
  String? Function(BuildContext, String?)?
      codigodeConfirmacaoTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaLoginVisibility = false;
    senhaCadastroVisibility = false;
    confirmeSenhaCadastroVisibility = false;
  }

  @override
  void dispose() {
    emailLoginFocusNode?.dispose();
    emailLoginTextController?.dispose();

    senhaLoginFocusNode?.dispose();
    senhaLoginTextController?.dispose();

    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    sobrenomeFocusNode?.dispose();
    sobrenomeTextController?.dispose();

    emailCadastroFocusNode?.dispose();
    emailCadastroTextController?.dispose();

    senhaCadastroFocusNode?.dispose();
    senhaCadastroTextController?.dispose();

    confirmeSenhaCadastroFocusNode?.dispose();
    confirmeSenhaCadastroTextController?.dispose();

    codigodeConfirmacaoFocusNode?.dispose();
    codigodeConfirmacaoTextController?.dispose();
  }
}

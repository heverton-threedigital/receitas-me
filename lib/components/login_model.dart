import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  Local state fields for this component.

  bool islogin = true;

  FFUploadedFile? fotoPerfil;

  bool isFinalizacao = false;

  ///  State fields for stateful widgets in this component.

  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for EmailLogin widget.
  FocusNode? emailLoginFocusNode;
  TextEditingController? emailLoginTextController;
  String? Function(BuildContext, String?)? emailLoginTextControllerValidator;
  String? _emailLoginTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo é obrigatório';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for SenhaLogin widget.
  FocusNode? senhaLoginFocusNode;
  TextEditingController? senhaLoginTextController;
  late bool senhaLoginVisibility;
  String? Function(BuildContext, String?)? senhaLoginTextControllerValidator;
  String? _senhaLoginTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo é obrigatório';
    }

    return null;
  }

  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  String? _nomeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo é obrigatório';
    }

    return null;
  }

  // State field(s) for Sobrenome widget.
  FocusNode? sobrenomeFocusNode;
  TextEditingController? sobrenomeTextController;
  String? Function(BuildContext, String?)? sobrenomeTextControllerValidator;
  String? _sobrenomeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo é obrigatório';
    }

    return null;
  }

  // State field(s) for EmailCadastro widget.
  FocusNode? emailCadastroFocusNode;
  TextEditingController? emailCadastroTextController;
  String? Function(BuildContext, String?)? emailCadastroTextControllerValidator;
  String? _emailCadastroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo é obrigatório';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for SenhaCadastro widget.
  FocusNode? senhaCadastroFocusNode;
  TextEditingController? senhaCadastroTextController;
  late bool senhaCadastroVisibility;
  String? Function(BuildContext, String?)? senhaCadastroTextControllerValidator;
  String? _senhaCadastroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo é obrigatório';
    }

    return null;
  }

  // State field(s) for ConfirmeSenhaCadastro widget.
  FocusNode? confirmeSenhaCadastroFocusNode;
  TextEditingController? confirmeSenhaCadastroTextController;
  late bool confirmeSenhaCadastroVisibility;
  String? Function(BuildContext, String?)?
      confirmeSenhaCadastroTextControllerValidator;
  String? _confirmeSenhaCadastroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo é obrigatório';
    }

    return null;
  }

  // Stores action output result for [Custom Action - signUpWithEmail] action in ConfirmeSenhaCadastro widget.
  dynamic usuarioCriado2;
  // Stores action output result for [Custom Action - signUpWithEmail] action in Button widget.
  dynamic usuarioCriado;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Custom Action - verifyEmailWithToken] action in Button widget.
  bool? emailVerificado;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<PerfisRow>? perfilCriado;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for NomeUsuario widget.
  FocusNode? nomeUsuarioFocusNode;
  TextEditingController? nomeUsuarioTextController;
  String? Function(BuildContext, String?)? nomeUsuarioTextControllerValidator;
  String? _nomeUsuarioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nome de usuário é obrigatório';
    }

    if (val.length < 3) {
      return 'Não pode ter menos de 4 caracteres';
    }
    if (val.length > 30) {
      return 'Maximum 30 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('^[a-z0-9_]{3,30}\$').hasMatch(val)) {
      return 'Somente letras minúsculas, números (0-9) e _';
    }
    return null;
  }

  // Stores action output result for [Custom Action - verificarDisponibilidadeUsuario] action in NomeUsuario widget.
  bool? usuarioVerificado;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {
    emailLoginTextControllerValidator = _emailLoginTextControllerValidator;
    senhaLoginVisibility = false;
    senhaLoginTextControllerValidator = _senhaLoginTextControllerValidator;
    nomeTextControllerValidator = _nomeTextControllerValidator;
    sobrenomeTextControllerValidator = _sobrenomeTextControllerValidator;
    emailCadastroTextControllerValidator =
        _emailCadastroTextControllerValidator;
    senhaCadastroVisibility = false;
    senhaCadastroTextControllerValidator =
        _senhaCadastroTextControllerValidator;
    confirmeSenhaCadastroVisibility = false;
    confirmeSenhaCadastroTextControllerValidator =
        _confirmeSenhaCadastroTextControllerValidator;
    pinCodeController = TextEditingController();
    nomeUsuarioTextControllerValidator = _nomeUsuarioTextControllerValidator;
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

    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();

    nomeUsuarioFocusNode?.dispose();
    nomeUsuarioTextController?.dispose();
  }
}

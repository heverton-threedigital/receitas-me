import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  Local state fields for this component.

  bool islogin = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Email widget.
  FocusNode? emailFocusNode1;
  TextEditingController? emailTextController1;
  String? Function(BuildContext, String?)? emailTextController1Validator;
  // State field(s) for Senha widget.
  FocusNode? senhaFocusNode1;
  TextEditingController? senhaTextController1;
  late bool senhaVisibility1;
  String? Function(BuildContext, String?)? senhaTextController1Validator;
  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode2;
  TextEditingController? emailTextController2;
  String? Function(BuildContext, String?)? emailTextController2Validator;
  // State field(s) for Senha widget.
  FocusNode? senhaFocusNode2;
  TextEditingController? senhaTextController2;
  late bool senhaVisibility2;
  String? Function(BuildContext, String?)? senhaTextController2Validator;
  // State field(s) for ConfirmeSenha widget.
  FocusNode? confirmeSenhaFocusNode;
  TextEditingController? confirmeSenhaTextController;
  late bool confirmeSenhaVisibility;
  String? Function(BuildContext, String?)? confirmeSenhaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaVisibility1 = false;
    senhaVisibility2 = false;
    confirmeSenhaVisibility = false;
  }

  @override
  void dispose() {
    emailFocusNode1?.dispose();
    emailTextController1?.dispose();

    senhaFocusNode1?.dispose();
    senhaTextController1?.dispose();

    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    emailFocusNode2?.dispose();
    emailTextController2?.dispose();

    senhaFocusNode2?.dispose();
    senhaTextController2?.dispose();

    confirmeSenhaFocusNode?.dispose();
    confirmeSenhaTextController?.dispose();
  }
}

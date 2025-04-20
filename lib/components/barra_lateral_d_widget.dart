import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'barra_lateral_d_model.dart';
export 'barra_lateral_d_model.dart';

class BarraLateralDWidget extends StatefulWidget {
  const BarraLateralDWidget({super.key});

  @override
  State<BarraLateralDWidget> createState() => _BarraLateralDWidgetState();
}

class _BarraLateralDWidgetState extends State<BarraLateralDWidget> {
  late BarraLateralDModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BarraLateralDModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (responsiveVisibility(
            context: context,
            phone: false,
          ))
            VerticalDivider(
              width: 1.0,
              thickness: 0.0,
              color: FlutterFlowTheme.of(context).alternate,
            ),
        ],
      ),
    );
  }
}

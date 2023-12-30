import '/flutter_flow/flutter_flow_util.dart';
import 'total_profit_widget.dart' show TotalProfitWidget;
import 'package:flutter/material.dart';

class TotalProfitModel extends FlutterFlowModel<TotalProfitWidget> {
  ///  Local state fields for this page.

  bool searchBool = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

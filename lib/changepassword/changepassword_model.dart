import '/flutter_flow/flutter_flow_util.dart';
import 'changepassword_widget.dart' show ChangepasswordWidget;
import 'package:flutter/material.dart';

class ChangepasswordModel extends FlutterFlowModel<ChangepasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for password widget.
  FocusNode? passwordFocusNode1;
  TextEditingController? passwordController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordController1Validator;
  String? _passwordController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 6) {
      return '#FFFDF6';
    }
    if (val.length > 6) {
      return 'Maximum 6 digits';
    }

    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode2;
  TextEditingController? passwordController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? passwordController2Validator;
  String? _passwordController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 6) {
      return 'Minimum 6 digits';
    }
    if (val.length > 6) {
      return 'Maximum 6 digits';
    }

    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode3;
  TextEditingController? passwordController3;
  late bool passwordVisibility3;
  String? Function(BuildContext, String?)? passwordController3Validator;
  String? _passwordController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 6) {
      return 'Minimum 6 digits';
    }
    if (val.length > 6) {
      return 'Minimum 6 digits';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordController1Validator = _passwordController1Validator;
    passwordVisibility2 = false;
    passwordController2Validator = _passwordController2Validator;
    passwordVisibility3 = false;
    passwordController3Validator = _passwordController3Validator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    passwordFocusNode1?.dispose();
    passwordController1?.dispose();

    passwordFocusNode2?.dispose();
    passwordController2?.dispose();

    passwordFocusNode3?.dispose();
    passwordController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

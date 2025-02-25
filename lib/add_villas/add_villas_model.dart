import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_villas_widget.dart' show AddVillasWidget;
import 'package:flutter/material.dart';

class AddVillasModel extends FlutterFlowModel<AddVillasWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 1) {
      return 'Minimum 1 digits';
    }

    return null;
  }

  // State field(s) for Location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  String? _locationTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for max_adult widget.
  FocusNode? maxAdultFocusNode1;
  TextEditingController? maxAdultTextController1;
  String? Function(BuildContext, String?)? maxAdultTextController1Validator;
  String? _maxAdultTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for max_adult widget.
  FocusNode? maxAdultFocusNode2;
  TextEditingController? maxAdultTextController2;
  String? Function(BuildContext, String?)? maxAdultTextController2Validator;
  String? _maxAdultTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for EmployeePercentage widget.
  FocusNode? employeePercentageFocusNode;
  TextEditingController? employeePercentageTextController;
  String? Function(BuildContext, String?)?
      employeePercentageTextControllerValidator;
  String? _employeePercentageTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    locationTextControllerValidator = _locationTextControllerValidator;
    maxAdultTextController1Validator = _maxAdultTextController1Validator;
    maxAdultTextController2Validator = _maxAdultTextController2Validator;
    employeePercentageTextControllerValidator =
        _employeePercentageTextControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();

    maxAdultFocusNode1?.dispose();
    maxAdultTextController1?.dispose();

    maxAdultFocusNode2?.dispose();
    maxAdultTextController2?.dispose();

    employeePercentageFocusNode?.dispose();
    employeePercentageTextController?.dispose();
  }
}

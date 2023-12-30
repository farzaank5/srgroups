import '/flutter_flow/flutter_flow_util.dart';
import 'add_villas_widget.dart' show AddVillasWidget;
import 'package:flutter/material.dart';

class AddVillasModel extends FlutterFlowModel<AddVillasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  String? _nameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.isEmpty) {
      return 'Minimum 1 digits';
    }

    return null;
  }

  // State field(s) for Location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationController;
  String? Function(BuildContext, String?)? locationControllerValidator;
  String? _locationControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for max_adult widget.
  FocusNode? maxAdultFocusNode1;
  TextEditingController? maxAdultController1;
  String? Function(BuildContext, String?)? maxAdultController1Validator;
  String? _maxAdultController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for max_adult widget.
  FocusNode? maxAdultFocusNode2;
  TextEditingController? maxAdultController2;
  String? Function(BuildContext, String?)? maxAdultController2Validator;
  String? _maxAdultController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for EmployeePercentage widget.
  FocusNode? employeePercentageFocusNode;
  TextEditingController? employeePercentageController;
  String? Function(BuildContext, String?)?
      employeePercentageControllerValidator;
  String? _employeePercentageControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Strating_Price widget.
  FocusNode? stratingPriceFocusNode;
  TextEditingController? stratingPriceController;
  String? Function(BuildContext, String?)? stratingPriceControllerValidator;
  String? _stratingPriceControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    nameControllerValidator = _nameControllerValidator;
    locationControllerValidator = _locationControllerValidator;
    maxAdultController1Validator = _maxAdultController1Validator;
    maxAdultController2Validator = _maxAdultController2Validator;
    employeePercentageControllerValidator =
        _employeePercentageControllerValidator;
    stratingPriceControllerValidator = _stratingPriceControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameController?.dispose();

    locationFocusNode?.dispose();
    locationController?.dispose();

    maxAdultFocusNode1?.dispose();
    maxAdultController1?.dispose();

    maxAdultFocusNode2?.dispose();
    maxAdultController2?.dispose();

    employeePercentageFocusNode?.dispose();
    employeePercentageController?.dispose();

    stratingPriceFocusNode?.dispose();
    stratingPriceController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

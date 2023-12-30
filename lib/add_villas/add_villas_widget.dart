import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'add_villas_model.dart';
export 'add_villas_model.dart';

class AddVillasWidget extends StatefulWidget {
  const AddVillasWidget({super.key});

  @override
  _AddVillasWidgetState createState() => _AddVillasWidgetState();
}

class _AddVillasWidgetState extends State<AddVillasWidget>
    with TickerProviderStateMixin {
  late AddVillasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: const Offset(0.0, 20.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddVillasModel());

    _model.nameController ??= TextEditingController();
    _model.nameFocusNode ??= FocusNode();

    _model.locationController ??= TextEditingController();
    _model.locationFocusNode ??= FocusNode();

    _model.maxAdultController1 ??= TextEditingController();
    _model.maxAdultFocusNode1 ??= FocusNode();

    _model.maxAdultController2 ??= TextEditingController();
    _model.maxAdultFocusNode2 ??= FocusNode();

    _model.employeePercentageController ??= TextEditingController();
    _model.employeePercentageFocusNode ??= FocusNode();

    _model.stratingPriceController ??= TextEditingController();
    _model.stratingPriceFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  width: 100.0,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                  ))
                                    Container(
                                      width: 230.0,
                                      height: 16.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Form(
                                      key: _model.formKey,
                                      autovalidateMode:
                                          AutovalidateMode.disabled,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Text(
                                                      'Add Villas',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineMedium,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.add_home_work,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 35.0,
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 5.0),
                                                child: Text(
                                                  'By filling the required information.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium,
                                                ),
                                              ),
                                              Stack(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        final selectedMedia =
                                                            await selectMediaWithSourceBottomSheet(
                                                          context: context,
                                                          maxWidth: 350.00,
                                                          maxHeight: 198.00,
                                                          imageQuality: 100,
                                                          allowPhoto: true,
                                                          includeDimensions:
                                                              true,
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryBtnText,
                                                          textColor:
                                                              Colors.black,
                                                          pickerFontFamily:
                                                              'Lexend Deca',
                                                        );
                                                        if (selectedMedia !=
                                                                null &&
                                                            selectedMedia.every((m) =>
                                                                validateFileFormat(
                                                                    m.storagePath,
                                                                    context))) {
                                                          setState(() => _model
                                                                  .isDataUploading =
                                                              true);
                                                          var selectedUploadedFiles =
                                                              <FFUploadedFile>[];

                                                          var downloadUrls =
                                                              <String>[];
                                                          try {
                                                            showUploadMessage(
                                                              context,
                                                              'Uploading file...',
                                                              showLoading: true,
                                                            );
                                                            selectedUploadedFiles =
                                                                selectedMedia
                                                                    .map((m) =>
                                                                        FFUploadedFile(
                                                                          name: m
                                                                              .storagePath
                                                                              .split('/')
                                                                              .last,
                                                                          bytes:
                                                                              m.bytes,
                                                                          height: m
                                                                              .dimensions
                                                                              ?.height,
                                                                          width: m
                                                                              .dimensions
                                                                              ?.width,
                                                                          blurHash:
                                                                              m.blurHash,
                                                                        ))
                                                                    .toList();

                                                            downloadUrls =
                                                                (await Future
                                                                        .wait(
                                                              selectedMedia.map(
                                                                (m) async =>
                                                                    await uploadData(
                                                                        m.storagePath,
                                                                        m.bytes),
                                                              ),
                                                            ))
                                                                    .where((u) =>
                                                                        u !=
                                                                        null)
                                                                    .map((u) =>
                                                                        u!)
                                                                    .toList();
                                                          } finally {
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .hideCurrentSnackBar();
                                                            _model.isDataUploading =
                                                                false;
                                                          }
                                                          if (selectedUploadedFiles
                                                                      .length ==
                                                                  selectedMedia
                                                                      .length &&
                                                              downloadUrls
                                                                      .length ==
                                                                  selectedMedia
                                                                      .length) {
                                                            setState(() {
                                                              _model.uploadedLocalFile =
                                                                  selectedUploadedFiles
                                                                      .first;
                                                              _model.uploadedFileUrl =
                                                                  downloadUrls
                                                                      .first;
                                                            });
                                                            showUploadMessage(
                                                                context,
                                                                'Success!');
                                                          } else {
                                                            setState(() {});
                                                            showUploadMessage(
                                                                context,
                                                                'Failed to upload data');
                                                            return;
                                                          }
                                                        }
                                                      },
                                                      child: Container(
                                                        width: 350.0,
                                                        height: 198.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          image:
                                                              DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image:
                                                                Image.network(
                                                              valueOrDefault<
                                                                  String>(
                                                                _model
                                                                    .uploadedFileUrl,
                                                                'https://cdn4.vectorstock.com/i/1000x1000/79/43/camera-photo-upload-icon-on-isolated-white-vector-31757943.jpg',
                                                              ),
                                                            ).image,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                          border: Border.all(
                                                            color: Colors.black,
                                                            width: 0.5,
                                                          ),
                                                        ),
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 16.0),
                                                child: SizedBox(
                                                  width: 370.0,
                                                  child: TextFormField(
                                                    controller:
                                                        _model.nameController,
                                                    focusNode:
                                                        _model.nameFocusNode,
                                                    autofocus: true,
                                                    autofillHints: const [
                                                      AutofillHints.name
                                                    ],
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Name',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: Colors.black,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                    keyboardType:
                                                        TextInputType.name,
                                                    validator: _model
                                                        .nameControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 16.0),
                                                child: SizedBox(
                                                  width: 370.0,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .locationController,
                                                    focusNode: _model
                                                        .locationFocusNode,
                                                    autofocus: true,
                                                    autofillHints: const [
                                                      AutofillHints.addressCity
                                                    ],
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Location',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: Colors.black,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                    keyboardType: TextInputType
                                                        .streetAddress,
                                                    validator: _model
                                                        .locationControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 16.0),
                                                child: SizedBox(
                                                  width: 370.0,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .maxAdultController1,
                                                    focusNode: _model
                                                        .maxAdultFocusNode1,
                                                    autofocus: true,
                                                    autofillHints: const [
                                                      AutofillHints.birthday
                                                    ],
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Max Adult',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: Colors.black,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    validator: _model
                                                        .maxAdultController1Validator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 16.0),
                                                child: SizedBox(
                                                  width: 370.0,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .maxAdultController2,
                                                    focusNode: _model
                                                        .maxAdultFocusNode2,
                                                    autofocus: true,
                                                    autofillHints: const [
                                                      AutofillHints.birthday
                                                    ],
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Max Children',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: Colors.black,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    validator: _model
                                                        .maxAdultController2Validator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 16.0),
                                                child: SizedBox(
                                                  width: 370.0,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .employeePercentageController,
                                                    focusNode: _model
                                                        .employeePercentageFocusNode,
                                                    autofocus: true,
                                                    autofillHints: const [
                                                      AutofillHints.birthday
                                                    ],
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                          'Employee Percentage',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: Colors.black,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    validator: _model
                                                        .employeePercentageControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 16.0),
                                                child: SizedBox(
                                                  width: 370.0,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .stratingPriceController,
                                                    focusNode: _model
                                                        .stratingPriceFocusNode,
                                                    autofocus: true,
                                                    autofillHints: const [
                                                      AutofillHints.birthday
                                                    ],
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                          'Price  Per Night',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: Colors.black,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    validator: _model
                                                        .stratingPriceControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, -1.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 0.0, 0.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      if (_model.formKey
                                                                  .currentState ==
                                                              null ||
                                                          !_model.formKey
                                                              .currentState!
                                                              .validate()) {
                                                        return;
                                                      }
                                                      if ((_model.uploadedLocalFile
                                                                      .bytes ??
                                                                  [])
                                                              .isEmpty) {
                                                        return;
                                                      }

                                                      await VillasRecord
                                                          .collection
                                                          .doc()
                                                          .set(
                                                              createVillasRecordData(
                                                            location: _model
                                                                .locationController
                                                                .text,
                                                            displayName: _model
                                                                .nameController
                                                                .text,
                                                            maxAdult: int
                                                                .tryParse(_model
                                                                    .maxAdultController1
                                                                    .text),
                                                            maxChildren: int
                                                                .tryParse(_model
                                                                    .maxAdultController2
                                                                    .text),
                                                            price: int.tryParse(
                                                                _model
                                                                    .stratingPriceController
                                                                    .text),
                                                            employeePer: int
                                                                .tryParse(_model
                                                                    .employeePercentageController
                                                                    .text),
                                                            phoUrl: _model
                                                                .uploadedFileUrl,
                                                            createdTime:
                                                                getCurrentTimestamp,
                                                          ));
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Villa Added',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                ),
                                                          ),
                                                          duration: const Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              Colors.black,
                                                        ),
                                                      );

                                                      context.pushNamed(
                                                          'villaslist');
                                                    },
                                                    text: 'Add',
                                                    options: FFButtonOptions(
                                                      width: double.infinity,
                                                      height: 40.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24.0,
                                                                  0.0,
                                                                  24.0,
                                                                  0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: Colors.black,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ).animateOnPageLoad(
                                animationsMap['columnOnPageLoadAnimation']!),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'adminloginpage_model.dart';
export 'adminloginpage_model.dart';

class AdminloginpageWidget extends StatefulWidget {
  const AdminloginpageWidget({super.key});

  @override
  _AdminloginpageWidgetState createState() => _AdminloginpageWidgetState();
}

class _AdminloginpageWidgetState extends State<AdminloginpageWidget> {
  late AdminloginpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminloginpageModel());
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

    return StreamBuilder<List<AdminLogincodeRecord>>(
      stream: queryAdminLogincodeRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: const Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.black,
                  ),
                ),
              ),
            ),
          );
        }
        List<AdminLogincodeRecord> adminloginpageAdminLogincodeRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final adminloginpageAdminLogincodeRecord =
            adminloginpageAdminLogincodeRecordList.isNotEmpty
                ? adminloginpageAdminLogincodeRecordList.first
                : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 237.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(16.0),
                                  bottomRight: Radius.circular(16.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                              ),
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 100.0, 0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/Screenshot_2023-10-25_at_11.10.20_AM-removebg-preview.png',
                                      width: 157.0,
                                      height: 239.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    32.0, 70.0, 32.0, 32.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Admin Login',
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 24.0),
                                      child: Text(
                                        'Fill the required passcode to get access ',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                      ),
                                    ),
                                    PinCodeTextField(
                                      autoDisposeControllers: false,
                                      appContext: context,
                                      length: 6,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      enableActiveFill: false,
                                      autoFocus: true,
                                      enablePinAutofill: false,
                                      errorTextSpace: 16.0,
                                      showCursor: true,
                                      cursorColor: const Color(0xFF606060),
                                      obscureText: false,
                                      hintCharacter: '●',
                                      keyboardType: TextInputType.number,
                                      pinTheme: PinTheme(
                                        fieldHeight: 44.0,
                                        fieldWidth: 44.0,
                                        borderWidth: 2.0,
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(12.0),
                                          bottomRight: Radius.circular(12.0),
                                          topLeft: Radius.circular(12.0),
                                          topRight: Radius.circular(12.0),
                                        ),
                                        shape: PinCodeFieldShape.box,
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        inactiveColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        selectedColor: Colors.black,
                                        activeFillColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        inactiveFillColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        selectedFillColor: Colors.black,
                                      ),
                                      controller: _model.pinCodeController,
                                      onChanged: (_) {},
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      validator: _model
                                          .pinCodeControllerValidator
                                          .asValidator(context),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 40.0, 0.0, 16.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          if (_model.pinCodeController!.text ==
                                              adminloginpageAdminLogincodeRecord
                                                  ?.loginCode
                                                  .toString()) {
                                            context
                                                .pushNamed('admin_dashboard');
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Wrong pin',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                              ),
                                            );
                                          }
                                        },
                                        text: 'Submit',
                                        options: FFButtonOptions(
                                          width: 370.0,
                                          height: 44.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Colors.black,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: Colors.white,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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
      },
    );
  }
}

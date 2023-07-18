import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/custom/custom_icon_button.dart';
import '/custom/custom_theme.dart';
import '/custom/custom_util.dart';
import '/custom/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChangePasswordModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please fill in a new password..';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    emailTextControllerValidator = _emailTextControllerValidator;
  }

  void dispose() {
    emailTextController?.dispose();
  }

  /// Additional helper methods are added here.

}

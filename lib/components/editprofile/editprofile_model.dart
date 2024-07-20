import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'editprofile_widget.dart' show EditprofileWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditprofileModel extends FlutterFlowModel<EditprofileWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for newNameText widget.
  FocusNode? newNameTextFocusNode;
  TextEditingController? newNameTextTextController;
  String? Function(BuildContext, String?)? newNameTextTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    newNameTextFocusNode?.dispose();
    newNameTextTextController?.dispose();
  }
}

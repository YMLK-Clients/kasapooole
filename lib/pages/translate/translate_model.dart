import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/audio_player/audio_player_widget.dart';
import '/components/emptylist/emptylist_widget.dart';
import '/components/from_language_component/from_language_component_widget.dart';
import '/components/loadingndicator/loadingndicator_widget.dart';
import '/components/to_language_component/to_language_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:math' as math;
import 'translate_widget.dart' show TranslateWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TranslateModel extends FlutterFlowModel<TranslateWidget> {
  ///  Local state fields for this page.

  String? transalatedTextAudioURL;

  bool translationComplete = false;

  bool showUploadCameraWidget = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for translateTextField widget.
  FocusNode? translateTextFieldFocusNode;
  TextEditingController? translateTextFieldTextController;
  String? Function(BuildContext, String?)?
      translateTextFieldTextControllerValidator;
  String? _translateTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'This field is Required!';
    }

    return null;
  }

  // State field(s) for translatedText widget.
  FocusNode? translatedTextFocusNode;
  TextEditingController? translatedTextTextController;
  String? Function(BuildContext, String?)?
      translatedTextTextControllerValidator;
  // Stores action output result for [Backend Call - API (TTS Speech  API)] action in playIconButton widget.
  ApiCallResponse? tTSapiResult;
  // Stores action output result for [Backend Call - API (Translation API)] action in translateButton widget.
  ApiCallResponse? translateAPI;

  @override
  void initState(BuildContext context) {
    translateTextFieldTextControllerValidator =
        _translateTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    translateTextFieldFocusNode?.dispose();
    translateTextFieldTextController?.dispose();

    translatedTextFocusNode?.dispose();
    translatedTextTextController?.dispose();
  }
}

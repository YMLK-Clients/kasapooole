import '/backend/api_requests/api_calls.dart';
import '/components/loadingndicator/loadingndicator_widget.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'transcribtion_output_pop_up_widget.dart'
    show TranscribtionOutputPopUpWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TranscribtionOutputPopUpModel
    extends FlutterFlowModel<TranscribtionOutputPopUpWidget> {
  ///  Local state fields for this component.

  bool playAudio = false;

  String? audioURLcomponent;

  ///  State fields for stateful widgets in this component.

  // State field(s) for translatedText widget.
  FocusNode? translatedTextFocusNode;
  TextEditingController? translatedTextTextController;
  String? Function(BuildContext, String?)?
      translatedTextTextControllerValidator;
  // Stores action output result for [Backend Call - API (TTS Speech  API)] action in playButton widget.
  ApiCallResponse? tTSapiResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    translatedTextFocusNode?.dispose();
    translatedTextTextController?.dispose();
  }
}

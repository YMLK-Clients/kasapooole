import '/backend/api_requests/api_calls.dart';
import '/components/audio_extraction_loading_indicator/audio_extraction_loading_indicator_widget.dart';
import '/components/from_language_component/from_language_component_widget.dart';
import '/components/to_language_component/to_language_component_widget.dart';
import '/components/transcribtion_output_pop_up/transcribtion_output_pop_up_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import '/flutter_flow/permissions_util.dart';
import 'conversation_widget.dart' show ConversationWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:record/record.dart';

class ConversationModel extends FlutterFlowModel<ConversationWidget> {
  ///  Local state fields for this page.

  String? transalatedTextAudioURL;

  bool translationComplete = false;

  bool showUploadCameraWidget = false;

  bool? recording = false;

  bool? responseReceived = false;

  bool? responseSent = false;

  DateTime? startTime;

  DateTime? endTime;

  String? file;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  String? audioRecord;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  // Stores action output result for [Backend Call - API (Transcribe and Translate Audio)] action in Recording widget.
  ApiCallResponse? apiRequestBuildship;
  AudioRecorder? audioRecorder;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'onboarding_screen_model.dart';
export 'onboarding_screen_model.dart';

class OnboardingScreenWidget extends StatefulWidget {
  const OnboardingScreenWidget({super.key});

  @override
  State<OnboardingScreenWidget> createState() => _OnboardingScreenWidgetState();
}

class _OnboardingScreenWidgetState extends State<OnboardingScreenWidget>
    with TickerProviderStateMixin {
  late OnboardingScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnboardingScreenModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 500.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 800.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 500.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 900.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 900.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 900.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1000.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1000.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1000.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 700.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 700.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 700.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1200.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1200.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1300.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1300.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1400.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1400.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1400.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1500.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1500.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1500.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation10': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1600.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1600.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xD8222222),
        body: SafeArea(
          top: true,
          child: Stack(
            alignment: AlignmentDirectional(0.0, 0.0),
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/Rectangle_5.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xD8222222),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(25.0, 50.0, 25.0, 0.0),
                      child: Text(
                        'Translation of more than 10 local languages in Ghana!',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).info,
                              fontSize: 32.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation1']!),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          25.0, 21.0, 25.0, 50.0),
                      child: Text(
                        'You can translate all your texts and audio from english or vice versa without any problems',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).info,
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation2']!),
                    ),
                    Container(
                      width: double.infinity,
                      height: 413.0,
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/adinkra_yellow_(1).png',
                                fit: BoxFit.cover,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation1']!),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.7, -1.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Vector_(2).png',
                                fit: BoxFit.cover,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation2']!),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, -0.3),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Vector_(3).png',
                                fit: BoxFit.cover,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation3']!),
                          ),
                          Align(
                            alignment: AlignmentDirectional(1.0, -0.3),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/adinkra_red.png',
                                fit: BoxFit.cover,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation4']!),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, -0.8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/adinkra_mustard_yellow.png',
                                fit: BoxFit.cover,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation5']!),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.5, 0.4),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/adinkra_green.png',
                                fit: BoxFit.cover,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation6']!),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.5, 0.4),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/adinkra_green_6.png',
                                fit: BoxFit.cover,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation7']!),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 1.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Vector_(4).png',
                                fit: BoxFit.cover,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation8']!),
                          ),
                          Align(
                            alignment: AlignmentDirectional(1.0, 1.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/adinkra_white.png',
                                fit: BoxFit.cover,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation9']!),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('Home');
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/Icon.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation10']!),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(25.0, 8.0, 25.0, 25.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('Home');
                        },
                        child: Text(
                          'Lets Go!',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation3']!),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

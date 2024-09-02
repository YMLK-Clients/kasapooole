import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class TranscribeAndTranslateAudioCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? buffer,
    String? startTime = '',
    String? endTime = '',
    String? fromLanguage = '',
    String? toLanguage = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Transcribe and Translate Audio',
      apiUrl: 'https://ga2nnj.buildship.run/transcribe',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'buffer': buffer,
        'startTime': startTime,
        'endTime': endTime,
        'fromLanguage': fromLanguage,
        'toLanguage': toLanguage,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? extractedText(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.response''',
      ));
}

class TranslationAPICall {
  static Future<ApiCallResponse> call({
    String? text = '',
    String? fromLanguage = '',
    String? tolanguage = '',
  }) async {
    final ffApiRequestBody = '''
{
  "fromLanguage": "${fromLanguage}",
  "toLanguage": "${tolanguage}",
  "textToTranslate": "${text}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Translation API',
      apiUrl: 'https://ga2nnj.buildship.run/translateTextToText',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? response(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.translation''',
      ));
}

class TTSSpeechAPICall {
  static Future<ApiCallResponse> call({
    String? language = '',
    String? text = '',
  }) async {
    final ffApiRequestBody = '''
{
  "text": "${text}",
  "language": "${language}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TTS Speech  API',
      apiUrl: 'https://27rb8g.buildship.run/textToSpeech',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? audioUrl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.audioUrl''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

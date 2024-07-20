import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class OcrApiCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? url,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'OCR API',
      apiUrl: 'https://hook.us1.make.com/ouwpc98g7j1k2isx1hvshdkql8z8nbvk',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'url': url,
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
  "in": "${text}",
  "lang": "${fromLanguage}-${tolanguage}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Translation API',
      apiUrl: 'https://translation-api.ghananlp.org/v1/translate',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Cache-Control': 'no-cache',
        'Ocp-Apim-Subscription-Key': 'cd9d65ecf49847b38103f043e6bc0c53',
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
        r'''$''',
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

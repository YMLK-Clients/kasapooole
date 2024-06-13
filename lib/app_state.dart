import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _fromLanguage = prefs.getString('ff_fromLanguage') ?? _fromLanguage;
    });
    _safeInit(() {
      _toLanguage = prefs.getString('ff_toLanguage') ?? _toLanguage;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _fromLanguage = 'E';
  String get fromLanguage => _fromLanguage;
  set fromLanguage(String value) {
    _fromLanguage = value;
    prefs.setString('ff_fromLanguage', value);
  }

  String _toLanguage = 'T';
  String get toLanguage => _toLanguage;
  set toLanguage(String value) {
    _toLanguage = value;
    prefs.setString('ff_toLanguage', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

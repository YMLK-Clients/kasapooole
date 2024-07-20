import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
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
      _allLanguages = prefs
              .getStringList('ff_allLanguages')
              ?.map((x) {
                try {
                  return SupportedLanguagesStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _allLanguages;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_fromLanguage')) {
        try {
          final serializedData = prefs.getString('ff_fromLanguage') ?? '{}';
          _fromLanguage = FromLanguageStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_toLanguage')) {
        try {
          final serializedData = prefs.getString('ff_toLanguage') ?? '{}';
          _toLanguage =
              TolanguageStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _favorites = prefs
              .getStringList('ff_favorites')
              ?.map((x) {
                try {
                  return FavoriteStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _favorites;
    });
    _safeInit(() {
      _lastActivity = prefs.getStringList('ff_lastActivity') ?? _lastActivity;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<AudiotransaltionStruct> _audioHistory = [
    AudiotransaltionStruct.fromSerializableMap(jsonDecode(
        '{\"audio\":\"https://filesamples.com/samples/audio/mp3/sample3.mp3\"}'))
  ];
  List<AudiotransaltionStruct> get audioHistory => _audioHistory;
  set audioHistory(List<AudiotransaltionStruct> value) {
    _audioHistory = value;
  }

  void addToAudioHistory(AudiotransaltionStruct value) {
    audioHistory.add(value);
  }

  void removeFromAudioHistory(AudiotransaltionStruct value) {
    audioHistory.remove(value);
  }

  void removeAtIndexFromAudioHistory(int index) {
    audioHistory.removeAt(index);
  }

  void updateAudioHistoryAtIndex(
    int index,
    AudiotransaltionStruct Function(AudiotransaltionStruct) updateFn,
  ) {
    audioHistory[index] = updateFn(_audioHistory[index]);
  }

  void insertAtIndexInAudioHistory(int index, AudiotransaltionStruct value) {
    audioHistory.insert(index, value);
  }

  List<SupportedLanguagesStruct> _allLanguages = [
    SupportedLanguagesStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"English\",\"code\":\"en\"}')),
    SupportedLanguagesStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Twi\",\"code\":\"tw\"}')),
    SupportedLanguagesStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Ga\",\"code\":\"gaa\"}')),
    SupportedLanguagesStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Ewe\",\"code\":\"ee\"}')),
    SupportedLanguagesStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Fante\",\"code\":\"fat\"}')),
    SupportedLanguagesStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Dagbani \",\"code\":\"dag\"}')),
    SupportedLanguagesStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Yoruba \",\"code\":\"yo\"}'))
  ];
  List<SupportedLanguagesStruct> get allLanguages => _allLanguages;
  set allLanguages(List<SupportedLanguagesStruct> value) {
    _allLanguages = value;
    prefs.setStringList(
        'ff_allLanguages', value.map((x) => x.serialize()).toList());
  }

  void addToAllLanguages(SupportedLanguagesStruct value) {
    allLanguages.add(value);
    prefs.setStringList(
        'ff_allLanguages', _allLanguages.map((x) => x.serialize()).toList());
  }

  void removeFromAllLanguages(SupportedLanguagesStruct value) {
    allLanguages.remove(value);
    prefs.setStringList(
        'ff_allLanguages', _allLanguages.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAllLanguages(int index) {
    allLanguages.removeAt(index);
    prefs.setStringList(
        'ff_allLanguages', _allLanguages.map((x) => x.serialize()).toList());
  }

  void updateAllLanguagesAtIndex(
    int index,
    SupportedLanguagesStruct Function(SupportedLanguagesStruct) updateFn,
  ) {
    allLanguages[index] = updateFn(_allLanguages[index]);
    prefs.setStringList(
        'ff_allLanguages', _allLanguages.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAllLanguages(int index, SupportedLanguagesStruct value) {
    allLanguages.insert(index, value);
    prefs.setStringList(
        'ff_allLanguages', _allLanguages.map((x) => x.serialize()).toList());
  }

  FromLanguageStruct _fromLanguage = FromLanguageStruct.fromSerializableMap(
      jsonDecode('{\"language\":\"English\",\"code\":\"en\"}'));
  FromLanguageStruct get fromLanguage => _fromLanguage;
  set fromLanguage(FromLanguageStruct value) {
    _fromLanguage = value;
    prefs.setString('ff_fromLanguage', value.serialize());
  }

  void updateFromLanguageStruct(Function(FromLanguageStruct) updateFn) {
    updateFn(_fromLanguage);
    prefs.setString('ff_fromLanguage', _fromLanguage.serialize());
  }

  TolanguageStruct _toLanguage = TolanguageStruct.fromSerializableMap(
      jsonDecode('{\"language\":\"Twi\",\"code\":\"tw\"}'));
  TolanguageStruct get toLanguage => _toLanguage;
  set toLanguage(TolanguageStruct value) {
    _toLanguage = value;
    prefs.setString('ff_toLanguage', value.serialize());
  }

  void updateToLanguageStruct(Function(TolanguageStruct) updateFn) {
    updateFn(_toLanguage);
    prefs.setString('ff_toLanguage', _toLanguage.serialize());
  }

  String _audioUrl = '';
  String get audioUrl => _audioUrl;
  set audioUrl(String value) {
    _audioUrl = value;
  }

  List<FavoriteStruct> _favorites = [];
  List<FavoriteStruct> get favorites => _favorites;
  set favorites(List<FavoriteStruct> value) {
    _favorites = value;
    prefs.setStringList(
        'ff_favorites', value.map((x) => x.serialize()).toList());
  }

  void addToFavorites(FavoriteStruct value) {
    favorites.add(value);
    prefs.setStringList(
        'ff_favorites', _favorites.map((x) => x.serialize()).toList());
  }

  void removeFromFavorites(FavoriteStruct value) {
    favorites.remove(value);
    prefs.setStringList(
        'ff_favorites', _favorites.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromFavorites(int index) {
    favorites.removeAt(index);
    prefs.setStringList(
        'ff_favorites', _favorites.map((x) => x.serialize()).toList());
  }

  void updateFavoritesAtIndex(
    int index,
    FavoriteStruct Function(FavoriteStruct) updateFn,
  ) {
    favorites[index] = updateFn(_favorites[index]);
    prefs.setStringList(
        'ff_favorites', _favorites.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInFavorites(int index, FavoriteStruct value) {
    favorites.insert(index, value);
    prefs.setStringList(
        'ff_favorites', _favorites.map((x) => x.serialize()).toList());
  }

  List<String> _lastActivity = [];
  List<String> get lastActivity => _lastActivity;
  set lastActivity(List<String> value) {
    _lastActivity = value;
    prefs.setStringList('ff_lastActivity', value);
  }

  void addToLastActivity(String value) {
    lastActivity.add(value);
    prefs.setStringList('ff_lastActivity', _lastActivity);
  }

  void removeFromLastActivity(String value) {
    lastActivity.remove(value);
    prefs.setStringList('ff_lastActivity', _lastActivity);
  }

  void removeAtIndexFromLastActivity(int index) {
    lastActivity.removeAt(index);
    prefs.setStringList('ff_lastActivity', _lastActivity);
  }

  void updateLastActivityAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    lastActivity[index] = updateFn(_lastActivity[index]);
    prefs.setStringList('ff_lastActivity', _lastActivity);
  }

  void insertAtIndexInLastActivity(int index, String value) {
    lastActivity.insert(index, value);
    prefs.setStringList('ff_lastActivity', _lastActivity);
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

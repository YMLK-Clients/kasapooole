// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FromLanguageStruct extends FFFirebaseStruct {
  FromLanguageStruct({
    String? language,
    String? code,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _language = language,
        _code = code,
        super(firestoreUtilData);

  // "language" field.
  String? _language;
  String get language => _language ?? '';
  set language(String? val) => _language = val;

  bool hasLanguage() => _language != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  static FromLanguageStruct fromMap(Map<String, dynamic> data) =>
      FromLanguageStruct(
        language: data['language'] as String?,
        code: data['code'] as String?,
      );

  static FromLanguageStruct? maybeFromMap(dynamic data) => data is Map
      ? FromLanguageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'language': _language,
        'code': _code,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'language': serializeParam(
          _language,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
      }.withoutNulls;

  static FromLanguageStruct fromSerializableMap(Map<String, dynamic> data) =>
      FromLanguageStruct(
        language: deserializeParam(
          data['language'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FromLanguageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FromLanguageStruct &&
        language == other.language &&
        code == other.code;
  }

  @override
  int get hashCode => const ListEquality().hash([language, code]);
}

FromLanguageStruct createFromLanguageStruct({
  String? language,
  String? code,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FromLanguageStruct(
      language: language,
      code: code,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FromLanguageStruct? updateFromLanguageStruct(
  FromLanguageStruct? fromLanguage, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    fromLanguage
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFromLanguageStructData(
  Map<String, dynamic> firestoreData,
  FromLanguageStruct? fromLanguage,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (fromLanguage == null) {
    return;
  }
  if (fromLanguage.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && fromLanguage.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final fromLanguageData =
      getFromLanguageFirestoreData(fromLanguage, forFieldValue);
  final nestedData =
      fromLanguageData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = fromLanguage.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFromLanguageFirestoreData(
  FromLanguageStruct? fromLanguage, [
  bool forFieldValue = false,
]) {
  if (fromLanguage == null) {
    return {};
  }
  final firestoreData = mapToFirestore(fromLanguage.toMap());

  // Add any Firestore field values
  fromLanguage.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFromLanguageListFirestoreData(
  List<FromLanguageStruct>? fromLanguages,
) =>
    fromLanguages?.map((e) => getFromLanguageFirestoreData(e, true)).toList() ??
    [];

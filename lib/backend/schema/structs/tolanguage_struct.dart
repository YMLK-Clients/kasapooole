// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TolanguageStruct extends FFFirebaseStruct {
  TolanguageStruct({
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

  static TolanguageStruct fromMap(Map<String, dynamic> data) =>
      TolanguageStruct(
        language: data['language'] as String?,
        code: data['code'] as String?,
      );

  static TolanguageStruct? maybeFromMap(dynamic data) => data is Map
      ? TolanguageStruct.fromMap(data.cast<String, dynamic>())
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

  static TolanguageStruct fromSerializableMap(Map<String, dynamic> data) =>
      TolanguageStruct(
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
  String toString() => 'TolanguageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TolanguageStruct &&
        language == other.language &&
        code == other.code;
  }

  @override
  int get hashCode => const ListEquality().hash([language, code]);
}

TolanguageStruct createTolanguageStruct({
  String? language,
  String? code,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TolanguageStruct(
      language: language,
      code: code,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TolanguageStruct? updateTolanguageStruct(
  TolanguageStruct? tolanguage, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    tolanguage
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTolanguageStructData(
  Map<String, dynamic> firestoreData,
  TolanguageStruct? tolanguage,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tolanguage == null) {
    return;
  }
  if (tolanguage.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && tolanguage.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tolanguageData = getTolanguageFirestoreData(tolanguage, forFieldValue);
  final nestedData = tolanguageData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = tolanguage.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTolanguageFirestoreData(
  TolanguageStruct? tolanguage, [
  bool forFieldValue = false,
]) {
  if (tolanguage == null) {
    return {};
  }
  final firestoreData = mapToFirestore(tolanguage.toMap());

  // Add any Firestore field values
  tolanguage.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTolanguageListFirestoreData(
  List<TolanguageStruct>? tolanguages,
) =>
    tolanguages?.map((e) => getTolanguageFirestoreData(e, true)).toList() ?? [];

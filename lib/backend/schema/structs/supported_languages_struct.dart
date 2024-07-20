// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SupportedLanguagesStruct extends FFFirebaseStruct {
  SupportedLanguagesStruct({
    String? name,
    String? code,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _code = code,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  static SupportedLanguagesStruct fromMap(Map<String, dynamic> data) =>
      SupportedLanguagesStruct(
        name: data['name'] as String?,
        code: data['code'] as String?,
      );

  static SupportedLanguagesStruct? maybeFromMap(dynamic data) => data is Map
      ? SupportedLanguagesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'code': _code,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
      }.withoutNulls;

  static SupportedLanguagesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SupportedLanguagesStruct(
        name: deserializeParam(
          data['name'],
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
  String toString() => 'SupportedLanguagesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SupportedLanguagesStruct &&
        name == other.name &&
        code == other.code;
  }

  @override
  int get hashCode => const ListEquality().hash([name, code]);
}

SupportedLanguagesStruct createSupportedLanguagesStruct({
  String? name,
  String? code,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SupportedLanguagesStruct(
      name: name,
      code: code,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SupportedLanguagesStruct? updateSupportedLanguagesStruct(
  SupportedLanguagesStruct? supportedLanguages, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    supportedLanguages
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSupportedLanguagesStructData(
  Map<String, dynamic> firestoreData,
  SupportedLanguagesStruct? supportedLanguages,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (supportedLanguages == null) {
    return;
  }
  if (supportedLanguages.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && supportedLanguages.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final supportedLanguagesData =
      getSupportedLanguagesFirestoreData(supportedLanguages, forFieldValue);
  final nestedData =
      supportedLanguagesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      supportedLanguages.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSupportedLanguagesFirestoreData(
  SupportedLanguagesStruct? supportedLanguages, [
  bool forFieldValue = false,
]) {
  if (supportedLanguages == null) {
    return {};
  }
  final firestoreData = mapToFirestore(supportedLanguages.toMap());

  // Add any Firestore field values
  supportedLanguages.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSupportedLanguagesListFirestoreData(
  List<SupportedLanguagesStruct>? supportedLanguagess,
) =>
    supportedLanguagess
        ?.map((e) => getSupportedLanguagesFirestoreData(e, true))
        .toList() ??
    [];

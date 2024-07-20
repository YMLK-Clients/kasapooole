// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FavoriteStruct extends FFFirebaseStruct {
  FavoriteStruct({
    String? transalatedText,
    DateTime? createdTime,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _transalatedText = transalatedText,
        _createdTime = createdTime,
        super(firestoreUtilData);

  // "TransalatedText" field.
  String? _transalatedText;
  String get transalatedText => _transalatedText ?? '';
  set transalatedText(String? val) => _transalatedText = val;

  bool hasTransalatedText() => _transalatedText != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  set createdTime(DateTime? val) => _createdTime = val;

  bool hasCreatedTime() => _createdTime != null;

  static FavoriteStruct fromMap(Map<String, dynamic> data) => FavoriteStruct(
        transalatedText: data['TransalatedText'] as String?,
        createdTime: data['createdTime'] as DateTime?,
      );

  static FavoriteStruct? maybeFromMap(dynamic data) =>
      data is Map ? FavoriteStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'TransalatedText': _transalatedText,
        'createdTime': _createdTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'TransalatedText': serializeParam(
          _transalatedText,
          ParamType.String,
        ),
        'createdTime': serializeParam(
          _createdTime,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static FavoriteStruct fromSerializableMap(Map<String, dynamic> data) =>
      FavoriteStruct(
        transalatedText: deserializeParam(
          data['TransalatedText'],
          ParamType.String,
          false,
        ),
        createdTime: deserializeParam(
          data['createdTime'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'FavoriteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FavoriteStruct &&
        transalatedText == other.transalatedText &&
        createdTime == other.createdTime;
  }

  @override
  int get hashCode => const ListEquality().hash([transalatedText, createdTime]);
}

FavoriteStruct createFavoriteStruct({
  String? transalatedText,
  DateTime? createdTime,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FavoriteStruct(
      transalatedText: transalatedText,
      createdTime: createdTime,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FavoriteStruct? updateFavoriteStruct(
  FavoriteStruct? favorite, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    favorite
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFavoriteStructData(
  Map<String, dynamic> firestoreData,
  FavoriteStruct? favorite,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (favorite == null) {
    return;
  }
  if (favorite.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && favorite.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final favoriteData = getFavoriteFirestoreData(favorite, forFieldValue);
  final nestedData = favoriteData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = favorite.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFavoriteFirestoreData(
  FavoriteStruct? favorite, [
  bool forFieldValue = false,
]) {
  if (favorite == null) {
    return {};
  }
  final firestoreData = mapToFirestore(favorite.toMap());

  // Add any Firestore field values
  favorite.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFavoriteListFirestoreData(
  List<FavoriteStruct>? favorites,
) =>
    favorites?.map((e) => getFavoriteFirestoreData(e, true)).toList() ?? [];

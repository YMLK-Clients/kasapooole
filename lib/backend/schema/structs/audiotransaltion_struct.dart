// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AudiotransaltionStruct extends FFFirebaseStruct {
  AudiotransaltionStruct({
    String? audio,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _audio = audio,
        super(firestoreUtilData);

  // "audio" field.
  String? _audio;
  String get audio => _audio ?? '';
  set audio(String? val) => _audio = val;

  bool hasAudio() => _audio != null;

  static AudiotransaltionStruct fromMap(Map<String, dynamic> data) =>
      AudiotransaltionStruct(
        audio: data['audio'] as String?,
      );

  static AudiotransaltionStruct? maybeFromMap(dynamic data) => data is Map
      ? AudiotransaltionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'audio': _audio,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'audio': serializeParam(
          _audio,
          ParamType.String,
        ),
      }.withoutNulls;

  static AudiotransaltionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AudiotransaltionStruct(
        audio: deserializeParam(
          data['audio'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AudiotransaltionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AudiotransaltionStruct && audio == other.audio;
  }

  @override
  int get hashCode => const ListEquality().hash([audio]);
}

AudiotransaltionStruct createAudiotransaltionStruct({
  String? audio,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AudiotransaltionStruct(
      audio: audio,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AudiotransaltionStruct? updateAudiotransaltionStruct(
  AudiotransaltionStruct? audiotransaltion, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    audiotransaltion
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAudiotransaltionStructData(
  Map<String, dynamic> firestoreData,
  AudiotransaltionStruct? audiotransaltion,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (audiotransaltion == null) {
    return;
  }
  if (audiotransaltion.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && audiotransaltion.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final audiotransaltionData =
      getAudiotransaltionFirestoreData(audiotransaltion, forFieldValue);
  final nestedData =
      audiotransaltionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = audiotransaltion.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAudiotransaltionFirestoreData(
  AudiotransaltionStruct? audiotransaltion, [
  bool forFieldValue = false,
]) {
  if (audiotransaltion == null) {
    return {};
  }
  final firestoreData = mapToFirestore(audiotransaltion.toMap());

  // Add any Firestore field values
  audiotransaltion.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAudiotransaltionListFirestoreData(
  List<AudiotransaltionStruct>? audiotransaltions,
) =>
    audiotransaltions
        ?.map((e) => getAudiotransaltionFirestoreData(e, true))
        .toList() ??
    [];

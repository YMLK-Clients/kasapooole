import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PhraseOftheDayRecord extends FirestoreRecord {
  PhraseOftheDayRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "phrase" field.
  String? _phrase;
  String get phrase => _phrase ?? '';
  bool hasPhrase() => _phrase != null;

  // "meaning" field.
  String? _meaning;
  String get meaning => _meaning ?? '';
  bool hasMeaning() => _meaning != null;

  void _initializeFields() {
    _phrase = snapshotData['phrase'] as String?;
    _meaning = snapshotData['meaning'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('phraseOftheDay');

  static Stream<PhraseOftheDayRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PhraseOftheDayRecord.fromSnapshot(s));

  static Future<PhraseOftheDayRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PhraseOftheDayRecord.fromSnapshot(s));

  static PhraseOftheDayRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PhraseOftheDayRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PhraseOftheDayRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PhraseOftheDayRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PhraseOftheDayRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PhraseOftheDayRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPhraseOftheDayRecordData({
  String? phrase,
  String? meaning,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'phrase': phrase,
      'meaning': meaning,
    }.withoutNulls,
  );

  return firestoreData;
}

class PhraseOftheDayRecordDocumentEquality
    implements Equality<PhraseOftheDayRecord> {
  const PhraseOftheDayRecordDocumentEquality();

  @override
  bool equals(PhraseOftheDayRecord? e1, PhraseOftheDayRecord? e2) {
    return e1?.phrase == e2?.phrase && e1?.meaning == e2?.meaning;
  }

  @override
  int hash(PhraseOftheDayRecord? e) =>
      const ListEquality().hash([e?.phrase, e?.meaning]);

  @override
  bool isValidKey(Object? o) => o is PhraseOftheDayRecord;
}

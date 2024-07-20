import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WordOfTheDayRecord extends FirestoreRecord {
  WordOfTheDayRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "word" field.
  String? _word;
  String get word => _word ?? '';
  bool hasWord() => _word != null;

  // "meaning" field.
  String? _meaning;
  String get meaning => _meaning ?? '';
  bool hasMeaning() => _meaning != null;

  void _initializeFields() {
    _word = snapshotData['word'] as String?;
    _meaning = snapshotData['meaning'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('wordOfTheDay');

  static Stream<WordOfTheDayRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WordOfTheDayRecord.fromSnapshot(s));

  static Future<WordOfTheDayRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WordOfTheDayRecord.fromSnapshot(s));

  static WordOfTheDayRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WordOfTheDayRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WordOfTheDayRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WordOfTheDayRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WordOfTheDayRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WordOfTheDayRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWordOfTheDayRecordData({
  String? word,
  String? meaning,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'word': word,
      'meaning': meaning,
    }.withoutNulls,
  );

  return firestoreData;
}

class WordOfTheDayRecordDocumentEquality
    implements Equality<WordOfTheDayRecord> {
  const WordOfTheDayRecordDocumentEquality();

  @override
  bool equals(WordOfTheDayRecord? e1, WordOfTheDayRecord? e2) {
    return e1?.word == e2?.word && e1?.meaning == e2?.meaning;
  }

  @override
  int hash(WordOfTheDayRecord? e) =>
      const ListEquality().hash([e?.word, e?.meaning]);

  @override
  bool isValidKey(Object? o) => o is WordOfTheDayRecord;
}

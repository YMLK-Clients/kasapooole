import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IdiomaticExpressionRecord extends FirestoreRecord {
  IdiomaticExpressionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "expression" field.
  String? _expression;
  String get expression => _expression ?? '';
  bool hasExpression() => _expression != null;

  // "meaning" field.
  String? _meaning;
  String get meaning => _meaning ?? '';
  bool hasMeaning() => _meaning != null;

  void _initializeFields() {
    _expression = snapshotData['expression'] as String?;
    _meaning = snapshotData['meaning'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('idiomaticExpression');

  static Stream<IdiomaticExpressionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IdiomaticExpressionRecord.fromSnapshot(s));

  static Future<IdiomaticExpressionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => IdiomaticExpressionRecord.fromSnapshot(s));

  static IdiomaticExpressionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IdiomaticExpressionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IdiomaticExpressionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IdiomaticExpressionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IdiomaticExpressionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IdiomaticExpressionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIdiomaticExpressionRecordData({
  String? expression,
  String? meaning,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'expression': expression,
      'meaning': meaning,
    }.withoutNulls,
  );

  return firestoreData;
}

class IdiomaticExpressionRecordDocumentEquality
    implements Equality<IdiomaticExpressionRecord> {
  const IdiomaticExpressionRecordDocumentEquality();

  @override
  bool equals(IdiomaticExpressionRecord? e1, IdiomaticExpressionRecord? e2) {
    return e1?.expression == e2?.expression && e1?.meaning == e2?.meaning;
  }

  @override
  int hash(IdiomaticExpressionRecord? e) =>
      const ListEquality().hash([e?.expression, e?.meaning]);

  @override
  bool isValidKey(Object? o) => o is IdiomaticExpressionRecord;
}

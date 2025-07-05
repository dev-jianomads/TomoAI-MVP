import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestchatsRecord extends FirestoreRecord {
  TestchatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "role" field.
  Role? _role;
  Role? get role => _role;
  bool hasRole() => _role != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  void _initializeFields() {
    _role = snapshotData['role'] is Role
        ? snapshotData['role']
        : deserializeEnum<Role>(snapshotData['role']);
    _message = snapshotData['message'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('testchats');

  static Stream<TestchatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TestchatsRecord.fromSnapshot(s));

  static Future<TestchatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TestchatsRecord.fromSnapshot(s));

  static TestchatsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TestchatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TestchatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TestchatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TestchatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TestchatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTestchatsRecordData({
  Role? role,
  String? message,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'role': role,
      'message': message,
    }.withoutNulls,
  );

  return firestoreData;
}

class TestchatsRecordDocumentEquality implements Equality<TestchatsRecord> {
  const TestchatsRecordDocumentEquality();

  @override
  bool equals(TestchatsRecord? e1, TestchatsRecord? e2) {
    return e1?.role == e2?.role && e1?.message == e2?.message;
  }

  @override
  int hash(TestchatsRecord? e) =>
      const ListEquality().hash([e?.role, e?.message]);

  @override
  bool isValidKey(Object? o) => o is TestchatsRecord;
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryRecord extends FirestoreRecord {
  CategoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "imageURL" field.
  String? _imageURL;
  String get imageURL => _imageURL ?? '';
  bool hasImageURL() => _imageURL != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  bool hasColor() => _color != null;

  // "colorLight" field.
  Color? _colorLight;
  Color? get colorLight => _colorLight;
  bool hasColorLight() => _colorLight != null;

  // "logoURL" field.
  String? _logoURL;
  String get logoURL => _logoURL ?? '';
  bool hasLogoURL() => _logoURL != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _imageURL = snapshotData['imageURL'] as String?;
    _color = getSchemaColor(snapshotData['color']);
    _colorLight = getSchemaColor(snapshotData['colorLight']);
    _logoURL = snapshotData['logoURL'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('category');

  static Stream<CategoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoryRecord.fromSnapshot(s));

  static Future<CategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoryRecord.fromSnapshot(s));

  static CategoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoryRecordData({
  String? name,
  String? imageURL,
  Color? color,
  Color? colorLight,
  String? logoURL,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'imageURL': imageURL,
      'color': color,
      'colorLight': colorLight,
      'logoURL': logoURL,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoryRecordDocumentEquality implements Equality<CategoryRecord> {
  const CategoryRecordDocumentEquality();

  @override
  bool equals(CategoryRecord? e1, CategoryRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.imageURL == e2?.imageURL &&
        e1?.color == e2?.color &&
        e1?.colorLight == e2?.colorLight &&
        e1?.logoURL == e2?.logoURL;
  }

  @override
  int hash(CategoryRecord? e) => const ListEquality()
      .hash([e?.name, e?.imageURL, e?.color, e?.colorLight, e?.logoURL]);

  @override
  bool isValidKey(Object? o) => o is CategoryRecord;
}

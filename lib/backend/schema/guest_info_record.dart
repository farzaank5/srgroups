import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GuestInfoRecord extends FirestoreRecord {
  GuestInfoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "guest_name" field.
  String? _guestName;
  String get guestName => _guestName ?? '';
  bool hasGuestName() => _guestName != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "verificationID" field.
  int? _verificationID;
  int get verificationID => _verificationID ?? 0;
  bool hasVerificationID() => _verificationID != null;

  // "contactInfo" field.
  int? _contactInfo;
  int get contactInfo => _contactInfo ?? 0;
  bool hasContactInfo() => _contactInfo != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _guestName = snapshotData['guest_name'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _verificationID = castToType<int>(snapshotData['verificationID']);
    _contactInfo = castToType<int>(snapshotData['contactInfo']);
    _gender = snapshotData['gender'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('guestInfo')
          : FirebaseFirestore.instance.collectionGroup('guestInfo');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('guestInfo').doc();

  static Stream<GuestInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GuestInfoRecord.fromSnapshot(s));

  static Future<GuestInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GuestInfoRecord.fromSnapshot(s));

  static GuestInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GuestInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GuestInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GuestInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GuestInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GuestInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGuestInfoRecordData({
  String? guestName,
  int? age,
  int? verificationID,
  int? contactInfo,
  String? gender,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'guest_name': guestName,
      'age': age,
      'verificationID': verificationID,
      'contactInfo': contactInfo,
      'gender': gender,
    }.withoutNulls,
  );

  return firestoreData;
}

class GuestInfoRecordDocumentEquality implements Equality<GuestInfoRecord> {
  const GuestInfoRecordDocumentEquality();

  @override
  bool equals(GuestInfoRecord? e1, GuestInfoRecord? e2) {
    return e1?.guestName == e2?.guestName &&
        e1?.age == e2?.age &&
        e1?.verificationID == e2?.verificationID &&
        e1?.contactInfo == e2?.contactInfo &&
        e1?.gender == e2?.gender;
  }

  @override
  int hash(GuestInfoRecord? e) => const ListEquality().hash(
      [e?.guestName, e?.age, e?.verificationID, e?.contactInfo, e?.gender]);

  @override
  bool isValidKey(Object? o) => o is GuestInfoRecord;
}

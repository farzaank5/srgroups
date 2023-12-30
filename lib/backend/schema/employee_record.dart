import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmployeeRecord extends FirestoreRecord {
  EmployeeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "firstname" field.
  String? _firstname;
  String get firstname => _firstname ?? '';
  bool hasFirstname() => _firstname != null;

  // "lastname" field.
  String? _lastname;
  String get lastname => _lastname ?? '';
  bool hasLastname() => _lastname != null;

  // "emailID" field.
  String? _emailID;
  String get emailID => _emailID ?? '';
  bool hasEmailID() => _emailID != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "phonenumber" field.
  String? _phonenumber;
  String get phonenumber => _phonenumber ?? '';
  bool hasPhonenumber() => _phonenumber != null;

  // "aadharnumber" field.
  int? _aadharnumber;
  int get aadharnumber => _aadharnumber ?? 0;
  bool hasAadharnumber() => _aadharnumber != null;

  // "loginpasswords" field.
  String? _loginpasswords;
  String get loginpasswords => _loginpasswords ?? '';
  bool hasLoginpasswords() => _loginpasswords != null;

  // "earnings" field.
  double? _earnings;
  double get earnings => _earnings ?? 0.0;
  bool hasEarnings() => _earnings != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _firstname = snapshotData['firstname'] as String?;
    _lastname = snapshotData['lastname'] as String?;
    _emailID = snapshotData['emailID'] as String?;
    _uid = snapshotData['uid'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _phonenumber = snapshotData['phonenumber'] as String?;
    _aadharnumber = castToType<int>(snapshotData['aadharnumber']);
    _loginpasswords = snapshotData['loginpasswords'] as String?;
    _earnings = castToType<double>(snapshotData['earnings']);
    _createdTime = snapshotData['createdTime'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('employee');

  static Stream<EmployeeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmployeeRecord.fromSnapshot(s));

  static Future<EmployeeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmployeeRecord.fromSnapshot(s));

  static EmployeeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmployeeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmployeeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmployeeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmployeeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmployeeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmployeeRecordData({
  String? firstname,
  String? lastname,
  String? emailID,
  String? uid,
  String? photoUrl,
  String? phonenumber,
  int? aadharnumber,
  String? loginpasswords,
  double? earnings,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'firstname': firstname,
      'lastname': lastname,
      'emailID': emailID,
      'uid': uid,
      'photo_url': photoUrl,
      'phonenumber': phonenumber,
      'aadharnumber': aadharnumber,
      'loginpasswords': loginpasswords,
      'earnings': earnings,
      'createdTime': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmployeeRecordDocumentEquality implements Equality<EmployeeRecord> {
  const EmployeeRecordDocumentEquality();

  @override
  bool equals(EmployeeRecord? e1, EmployeeRecord? e2) {
    return e1?.firstname == e2?.firstname &&
        e1?.lastname == e2?.lastname &&
        e1?.emailID == e2?.emailID &&
        e1?.uid == e2?.uid &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.phonenumber == e2?.phonenumber &&
        e1?.aadharnumber == e2?.aadharnumber &&
        e1?.loginpasswords == e2?.loginpasswords &&
        e1?.earnings == e2?.earnings &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(EmployeeRecord? e) => const ListEquality().hash([
        e?.firstname,
        e?.lastname,
        e?.emailID,
        e?.uid,
        e?.photoUrl,
        e?.phonenumber,
        e?.aadharnumber,
        e?.loginpasswords,
        e?.earnings,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is EmployeeRecord;
}

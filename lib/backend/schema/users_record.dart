import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "gmail_access_token" field.
  String? _gmailAccessToken;
  String get gmailAccessToken => _gmailAccessToken ?? '';
  bool hasGmailAccessToken() => _gmailAccessToken != null;

  // "gmail_refresh_token" field.
  String? _gmailRefreshToken;
  String get gmailRefreshToken => _gmailRefreshToken ?? '';
  bool hasGmailRefreshToken() => _gmailRefreshToken != null;

  // "client_id" field.
  String? _clientId;
  String get clientId => _clientId ?? '';
  bool hasClientId() => _clientId != null;

  // "client_secret" field.
  String? _clientSecret;
  String get clientSecret => _clientSecret ?? '';
  bool hasClientSecret() => _clientSecret != null;

  // "auth_provider" field.
  String? _authProvider;
  String get authProvider => _authProvider ?? '';
  bool hasAuthProvider() => _authProvider != null;

  // "refresh_expired" field.
  bool? _refreshExpired;
  bool get refreshExpired => _refreshExpired ?? false;
  bool hasRefreshExpired() => _refreshExpired != null;

  // "time_zone" field.
  String? _timeZone;
  String get timeZone => _timeZone ?? '';
  bool hasTimeZone() => _timeZone != null;

  // "auth_code" field.
  String? _authCode;
  String get authCode => _authCode ?? '';
  bool hasAuthCode() => _authCode != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  bool hasPosition() => _position != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _gmailAccessToken = snapshotData['gmail_access_token'] as String?;
    _gmailRefreshToken = snapshotData['gmail_refresh_token'] as String?;
    _clientId = snapshotData['client_id'] as String?;
    _clientSecret = snapshotData['client_secret'] as String?;
    _authProvider = snapshotData['auth_provider'] as String?;
    _refreshExpired = snapshotData['refresh_expired'] as bool?;
    _timeZone = snapshotData['time_zone'] as String?;
    _authCode = snapshotData['auth_code'] as String?;
    _position = snapshotData['position'] as String?;
    _role = snapshotData['role'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? gmailAccessToken,
  String? gmailRefreshToken,
  String? clientId,
  String? clientSecret,
  String? authProvider,
  bool? refreshExpired,
  String? timeZone,
  String? authCode,
  String? position,
  String? role,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'gmail_access_token': gmailAccessToken,
      'gmail_refresh_token': gmailRefreshToken,
      'client_id': clientId,
      'client_secret': clientSecret,
      'auth_provider': authProvider,
      'refresh_expired': refreshExpired,
      'time_zone': timeZone,
      'auth_code': authCode,
      'position': position,
      'role': role,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.gmailAccessToken == e2?.gmailAccessToken &&
        e1?.gmailRefreshToken == e2?.gmailRefreshToken &&
        e1?.clientId == e2?.clientId &&
        e1?.clientSecret == e2?.clientSecret &&
        e1?.authProvider == e2?.authProvider &&
        e1?.refreshExpired == e2?.refreshExpired &&
        e1?.timeZone == e2?.timeZone &&
        e1?.authCode == e2?.authCode &&
        e1?.position == e2?.position &&
        e1?.role == e2?.role;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.gmailAccessToken,
        e?.gmailRefreshToken,
        e?.clientId,
        e?.clientSecret,
        e?.authProvider,
        e?.refreshExpired,
        e?.timeZone,
        e?.authCode,
        e?.position,
        e?.role
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}

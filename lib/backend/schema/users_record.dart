import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @BuiltValueField(wireName: 'Password')
  String? get password;

  @BuiltValueField(wireName: 'FullName')
  String? get fullName;

  String? get uid;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  DateTime? get weddingDate;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..password = ''
    ..fullName = ''
    ..uid = ''
    ..email = ''
    ..displayName = ''
    ..phoneNumber = ''
    ..photoUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? password,
  String? fullName,
  String? uid,
  String? email,
  String? displayName,
  DateTime? createdTime,
  String? phoneNumber,
  String? photoUrl,
  DateTime? weddingDate,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..password = password
        ..fullName = fullName
        ..uid = uid
        ..email = email
        ..displayName = displayName
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..photoUrl = photoUrl
        ..weddingDate = weddingDate,
    ),
  );

  return firestoreData;
}

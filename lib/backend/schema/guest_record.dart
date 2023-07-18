import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'guest_record.g.dart';

abstract class GuestRecord implements Built<GuestRecord, GuestRecordBuilder> {
  static Serializer<GuestRecord> get serializer => _$guestRecordSerializer;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'edited_time')
  DateTime? get editedTime;

  @BuiltValueField(wireName: 'user_name')
  String? get userName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GuestRecordBuilder builder) => builder
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..userName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('guest');

  static Stream<GuestRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GuestRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GuestRecord._();
  factory GuestRecord([void Function(GuestRecordBuilder) updates]) =
      _$GuestRecord;

  static GuestRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGuestRecordData({
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? userName,
}) {
  final firestoreData = serializers.toFirestore(
    GuestRecord.serializer,
    GuestRecord(
      (g) => g
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..editedTime = editedTime
        ..userName = userName,
    ),
  );

  return firestoreData;
}

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'to_do_list_record.g.dart';

abstract class ToDoListRecord
    implements Built<ToDoListRecord, ToDoListRecordBuilder> {
  static Serializer<ToDoListRecord> get serializer =>
      _$toDoListRecordSerializer;

  DateTime? get toDoDate;

  String? get toDoName;

  String? get toDoDescription;

  bool? get toDoState;

  DateTime? get completedDate;

  DocumentReference? get user;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ToDoListRecordBuilder builder) => builder
    ..toDoName = ''
    ..toDoDescription = ''
    ..toDoState = false
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ToDoList');

  static Stream<ToDoListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ToDoListRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ToDoListRecord._();
  factory ToDoListRecord([void Function(ToDoListRecordBuilder) updates]) =
      _$ToDoListRecord;

  static ToDoListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createToDoListRecordData({
  DateTime? toDoDate,
  String? toDoName,
  String? toDoDescription,
  bool? toDoState,
  DateTime? completedDate,
  DocumentReference? user,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = serializers.toFirestore(
    ToDoListRecord.serializer,
    ToDoListRecord(
      (t) => t
        ..toDoDate = toDoDate
        ..toDoName = toDoName
        ..toDoDescription = toDoDescription
        ..toDoState = toDoState
        ..completedDate = completedDate
        ..user = user
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber,
    ),
  );

  return firestoreData;
}

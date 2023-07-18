import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'newari_record.g.dart';

abstract class NewariRecord
    implements Built<NewariRecord, NewariRecordBuilder> {
  static Serializer<NewariRecord> get serializer => _$newariRecordSerializer;

  String? get photo1;

  String? get photo2;

  String? get photo3;

  String? get photo5;

  String? get photo6;

  String? get newari;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NewariRecordBuilder builder) => builder
    ..photo1 = ''
    ..photo2 = ''
    ..photo3 = ''
    ..photo5 = ''
    ..photo6 = ''
    ..newari = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('newari');

  static Stream<NewariRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NewariRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NewariRecord._();
  factory NewariRecord([void Function(NewariRecordBuilder) updates]) =
      _$NewariRecord;

  static NewariRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNewariRecordData({
  String? photo1,
  String? photo2,
  String? photo3,
  String? photo5,
  String? photo6,
  String? newari,
}) {
  final firestoreData = serializers.toFirestore(
    NewariRecord.serializer,
    NewariRecord(
      (n) => n
        ..photo1 = photo1
        ..photo2 = photo2
        ..photo3 = photo3
        ..photo5 = photo5
        ..photo6 = photo6
        ..newari = newari,
    ),
  );

  return firestoreData;
}

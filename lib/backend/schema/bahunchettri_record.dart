import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bahunchettri_record.g.dart';

abstract class BahunchettriRecord
    implements Built<BahunchettriRecord, BahunchettriRecordBuilder> {
  static Serializer<BahunchettriRecord> get serializer =>
      _$bahunchettriRecordSerializer;

  String? get photo1;

  String? get photo2;

  String? get photo3;

  String? get photo5;

  String? get photo6;

  String? get bahunchettri;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BahunchettriRecordBuilder builder) => builder
    ..photo1 = ''
    ..photo2 = ''
    ..photo3 = ''
    ..photo5 = ''
    ..photo6 = ''
    ..bahunchettri = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bahunchettri');

  static Stream<BahunchettriRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BahunchettriRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BahunchettriRecord._();
  factory BahunchettriRecord(
          [void Function(BahunchettriRecordBuilder) updates]) =
      _$BahunchettriRecord;

  static BahunchettriRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBahunchettriRecordData({
  String? photo1,
  String? photo2,
  String? photo3,
  String? photo5,
  String? photo6,
  String? bahunchettri,
}) {
  final firestoreData = serializers.toFirestore(
    BahunchettriRecord.serializer,
    BahunchettriRecord(
      (b) => b
        ..photo1 = photo1
        ..photo2 = photo2
        ..photo3 = photo3
        ..photo5 = photo5
        ..photo6 = photo6
        ..bahunchettri = bahunchettri,
    ),
  );

  return firestoreData;
}

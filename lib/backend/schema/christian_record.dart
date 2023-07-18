import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'christian_record.g.dart';

abstract class ChristianRecord
    implements Built<ChristianRecord, ChristianRecordBuilder> {
  static Serializer<ChristianRecord> get serializer =>
      _$christianRecordSerializer;

  String? get photo1;

  String? get photo2;

  String? get photo3;

  String? get photo5;

  String? get photo6;

  String? get christian;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChristianRecordBuilder builder) => builder
    ..photo1 = ''
    ..photo2 = ''
    ..photo3 = ''
    ..photo5 = ''
    ..photo6 = ''
    ..christian = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('christian');

  static Stream<ChristianRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChristianRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChristianRecord._();
  factory ChristianRecord([void Function(ChristianRecordBuilder) updates]) =
      _$ChristianRecord;

  static ChristianRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChristianRecordData({
  String? photo1,
  String? photo2,
  String? photo3,
  String? photo5,
  String? photo6,
  String? christian,
}) {
  final firestoreData = serializers.toFirestore(
    ChristianRecord.serializer,
    ChristianRecord(
      (c) => c
        ..photo1 = photo1
        ..photo2 = photo2
        ..photo3 = photo3
        ..photo5 = photo5
        ..photo6 = photo6
        ..christian = christian,
    ),
  );

  return firestoreData;
}

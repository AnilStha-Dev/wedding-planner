import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'wedding_types_record.g.dart';

abstract class WeddingTypesRecord
    implements Built<WeddingTypesRecord, WeddingTypesRecordBuilder> {
  static Serializer<WeddingTypesRecord> get serializer =>
      _$weddingTypesRecordSerializer;

  @BuiltValueField(wireName: 'WeddingName')
  String? get weddingName;

  @BuiltValueField(wireName: 'Thumbnail')
  String? get thumbnail;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(WeddingTypesRecordBuilder builder) => builder
    ..weddingName = ''
    ..thumbnail = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('WeddingTypes');

  static Stream<WeddingTypesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<WeddingTypesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  WeddingTypesRecord._();
  factory WeddingTypesRecord(
          [void Function(WeddingTypesRecordBuilder) updates]) =
      _$WeddingTypesRecord;

  static WeddingTypesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createWeddingTypesRecordData({
  String? weddingName,
  String? thumbnail,
}) {
  final firestoreData = serializers.toFirestore(
    WeddingTypesRecord.serializer,
    WeddingTypesRecord(
      (w) => w
        ..weddingName = weddingName
        ..thumbnail = thumbnail,
    ),
  );

  return firestoreData;
}

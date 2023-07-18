import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'makeup_studio_record.g.dart';

abstract class MakeupStudioRecord
    implements Built<MakeupStudioRecord, MakeupStudioRecordBuilder> {
  static Serializer<MakeupStudioRecord> get serializer =>
      _$makeupStudioRecordSerializer;

  @BuiltValueField(wireName: 'StudioName')
  String? get studioName;

  @BuiltValueField(wireName: 'Makeupimg')
  String? get makeupimg;

  @BuiltValueField(wireName: 'Studiodetails')
  String? get studiodetails;

  @BuiltValueField(wireName: 'Studiophone')
  int? get studiophone;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MakeupStudioRecordBuilder builder) => builder
    ..studioName = ''
    ..makeupimg = ''
    ..studiodetails = ''
    ..studiophone = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MakeupStudio');

  static Stream<MakeupStudioRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MakeupStudioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MakeupStudioRecord._();
  factory MakeupStudioRecord(
          [void Function(MakeupStudioRecordBuilder) updates]) =
      _$MakeupStudioRecord;

  static MakeupStudioRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMakeupStudioRecordData({
  String? studioName,
  String? makeupimg,
  String? studiodetails,
  int? studiophone,
}) {
  final firestoreData = serializers.toFirestore(
    MakeupStudioRecord.serializer,
    MakeupStudioRecord(
      (m) => m
        ..studioName = studioName
        ..makeupimg = makeupimg
        ..studiodetails = studiodetails
        ..studiophone = studiophone,
    ),
  );

  return firestoreData;
}

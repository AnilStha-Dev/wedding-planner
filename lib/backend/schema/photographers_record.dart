import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'photographers_record.g.dart';

abstract class PhotographersRecord
    implements Built<PhotographersRecord, PhotographersRecordBuilder> {
  static Serializer<PhotographersRecord> get serializer =>
      _$photographersRecordSerializer;

  @BuiltValueField(wireName: 'PhotographerName')
  String? get photographerName;

  @BuiltValueField(wireName: 'ImagePhoto')
  String? get imagePhoto;

  @BuiltValueField(wireName: 'Photographerdetails')
  String? get photographerdetails;

  @BuiltValueField(wireName: 'Photographerphone')
  int? get photographerphone;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PhotographersRecordBuilder builder) => builder
    ..photographerName = ''
    ..imagePhoto = ''
    ..photographerdetails = ''
    ..photographerphone = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Photographers');

  static Stream<PhotographersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PhotographersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PhotographersRecord._();
  factory PhotographersRecord(
          [void Function(PhotographersRecordBuilder) updates]) =
      _$PhotographersRecord;

  static PhotographersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPhotographersRecordData({
  String? photographerName,
  String? imagePhoto,
  String? photographerdetails,
  int? photographerphone,
}) {
  final firestoreData = serializers.toFirestore(
    PhotographersRecord.serializer,
    PhotographersRecord(
      (p) => p
        ..photographerName = photographerName
        ..imagePhoto = imagePhoto
        ..photographerdetails = photographerdetails
        ..photographerphone = photographerphone,
    ),
  );

  return firestoreData;
}

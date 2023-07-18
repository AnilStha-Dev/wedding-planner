import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'wedding_dress_record.g.dart';

abstract class WeddingDressRecord
    implements Built<WeddingDressRecord, WeddingDressRecordBuilder> {
  static Serializer<WeddingDressRecord> get serializer =>
      _$weddingDressRecordSerializer;

  @BuiltValueField(wireName: 'BotiqueName')
  String? get botiqueName;

  @BuiltValueField(wireName: 'DressImage')
  String? get dressImage;

  @BuiltValueField(wireName: 'Boutiquedetails')
  String? get boutiquedetails;

  @BuiltValueField(wireName: 'Boutiquephone')
  int? get boutiquephone;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(WeddingDressRecordBuilder builder) => builder
    ..botiqueName = ''
    ..dressImage = ''
    ..boutiquedetails = ''
    ..boutiquephone = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('WeddingDress');

  static Stream<WeddingDressRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<WeddingDressRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  WeddingDressRecord._();
  factory WeddingDressRecord(
          [void Function(WeddingDressRecordBuilder) updates]) =
      _$WeddingDressRecord;

  static WeddingDressRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createWeddingDressRecordData({
  String? botiqueName,
  String? dressImage,
  String? boutiquedetails,
  int? boutiquephone,
}) {
  final firestoreData = serializers.toFirestore(
    WeddingDressRecord.serializer,
    WeddingDressRecord(
      (w) => w
        ..botiqueName = botiqueName
        ..dressImage = dressImage
        ..boutiquedetails = boutiquedetails
        ..boutiquephone = boutiquephone,
    ),
  );

  return firestoreData;
}

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'jewellery_record.g.dart';

abstract class JewelleryRecord
    implements Built<JewelleryRecord, JewelleryRecordBuilder> {
  static Serializer<JewelleryRecord> get serializer =>
      _$jewelleryRecordSerializer;

  @BuiltValueField(wireName: 'ShopName')
  String? get shopName;

  @BuiltValueField(wireName: 'ShopImage')
  String? get shopImage;

  @BuiltValueField(wireName: 'ShopDetails')
  String? get shopDetails;

  @BuiltValueField(wireName: 'ShopPhone')
  int? get shopPhone;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(JewelleryRecordBuilder builder) => builder
    ..shopName = ''
    ..shopImage = ''
    ..shopDetails = ''
    ..shopPhone = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Jewellery');

  static Stream<JewelleryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<JewelleryRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  JewelleryRecord._();
  factory JewelleryRecord([void Function(JewelleryRecordBuilder) updates]) =
      _$JewelleryRecord;

  static JewelleryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createJewelleryRecordData({
  String? shopName,
  String? shopImage,
  String? shopDetails,
  int? shopPhone,
}) {
  final firestoreData = serializers.toFirestore(
    JewelleryRecord.serializer,
    JewelleryRecord(
      (j) => j
        ..shopName = shopName
        ..shopImage = shopImage
        ..shopDetails = shopDetails
        ..shopPhone = shopPhone,
    ),
  );

  return firestoreData;
}

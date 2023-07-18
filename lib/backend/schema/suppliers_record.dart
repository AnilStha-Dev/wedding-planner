import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'suppliers_record.g.dart';

abstract class SuppliersRecord
    implements Built<SuppliersRecord, SuppliersRecordBuilder> {
  static Serializer<SuppliersRecord> get serializer =>
      _$suppliersRecordSerializer;

  @BuiltValueField(wireName: 'SupplierType')
  String? get supplierType;

  @BuiltValueField(wireName: 'Thumbnail')
  String? get thumbnail;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SuppliersRecordBuilder builder) => builder
    ..supplierType = ''
    ..thumbnail = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Suppliers');

  static Stream<SuppliersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SuppliersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SuppliersRecord._();
  factory SuppliersRecord([void Function(SuppliersRecordBuilder) updates]) =
      _$SuppliersRecord;

  static SuppliersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSuppliersRecordData({
  String? supplierType,
  String? thumbnail,
}) {
  final firestoreData = serializers.toFirestore(
    SuppliersRecord.serializer,
    SuppliersRecord(
      (s) => s
        ..supplierType = supplierType
        ..thumbnail = thumbnail,
    ),
  );

  return firestoreData;
}

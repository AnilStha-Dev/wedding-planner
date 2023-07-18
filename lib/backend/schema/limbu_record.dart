import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'limbu_record.g.dart';

abstract class LimbuRecord implements Built<LimbuRecord, LimbuRecordBuilder> {
  static Serializer<LimbuRecord> get serializer => _$limbuRecordSerializer;

  String? get photo1;

  String? get photo2;

  String? get photo3;

  String? get photo5;

  String? get photo6;

  String? get limbu;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LimbuRecordBuilder builder) => builder
    ..photo1 = ''
    ..photo2 = ''
    ..photo3 = ''
    ..photo5 = ''
    ..photo6 = ''
    ..limbu = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('limbu');

  static Stream<LimbuRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LimbuRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LimbuRecord._();
  factory LimbuRecord([void Function(LimbuRecordBuilder) updates]) =
      _$LimbuRecord;

  static LimbuRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLimbuRecordData({
  String? photo1,
  String? photo2,
  String? photo3,
  String? photo5,
  String? photo6,
  String? limbu,
}) {
  final firestoreData = serializers.toFirestore(
    LimbuRecord.serializer,
    LimbuRecord(
      (l) => l
        ..photo1 = photo1
        ..photo2 = photo2
        ..photo3 = photo3
        ..photo5 = photo5
        ..photo6 = photo6
        ..limbu = limbu,
    ),
  );

  return firestoreData;
}

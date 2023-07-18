import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'venue_record.g.dart';

abstract class VenueRecord implements Built<VenueRecord, VenueRecordBuilder> {
  static Serializer<VenueRecord> get serializer => _$venueRecordSerializer;

  @BuiltValueField(wireName: 'VenueName')
  String? get venueName;

  @BuiltValueField(wireName: 'VenueImage')
  String? get venueImage;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VenueRecordBuilder builder) => builder
    ..venueName = ''
    ..venueImage = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Venue');

  static Stream<VenueRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VenueRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VenueRecord._();
  factory VenueRecord([void Function(VenueRecordBuilder) updates]) =
      _$VenueRecord;

  static VenueRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVenueRecordData({
  String? venueName,
  String? venueImage,
}) {
  final firestoreData = serializers.toFirestore(
    VenueRecord.serializer,
    VenueRecord(
      (v) => v
        ..venueName = venueName
        ..venueImage = venueImage,
    ),
  );

  return firestoreData;
}

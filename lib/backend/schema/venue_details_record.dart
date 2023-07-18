import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'venue_details_record.g.dart';

abstract class VenueDetailsRecord
    implements Built<VenueDetailsRecord, VenueDetailsRecordBuilder> {
  static Serializer<VenueDetailsRecord> get serializer =>
      _$venueDetailsRecordSerializer;

  @BuiltValueField(wireName: 'Venuename')
  String? get venuename;

  @BuiltValueField(wireName: 'Venueimg')
  String? get venueimg;

  @BuiltValueField(wireName: 'Venuedetails')
  String? get venuedetails;

  @BuiltValueField(wireName: 'VenuePhone')
  int? get venuePhone;

  @BuiltValueField(wireName: 'VenueMap')
  LatLng? get venueMap;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VenueDetailsRecordBuilder builder) => builder
    ..venuename = ''
    ..venueimg = ''
    ..venuedetails = ''
    ..venuePhone = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('VenueDetails');

  static Stream<VenueDetailsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VenueDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VenueDetailsRecord._();
  factory VenueDetailsRecord(
          [void Function(VenueDetailsRecordBuilder) updates]) =
      _$VenueDetailsRecord;

  static VenueDetailsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVenueDetailsRecordData({
  String? venuename,
  String? venueimg,
  String? venuedetails,
  int? venuePhone,
  LatLng? venueMap,
}) {
  final firestoreData = serializers.toFirestore(
    VenueDetailsRecord.serializer,
    VenueDetailsRecord(
      (v) => v
        ..venuename = venuename
        ..venueimg = venueimg
        ..venuedetails = venuedetails
        ..venuePhone = venuePhone
        ..venueMap = venueMap,
    ),
  );

  return firestoreData;
}

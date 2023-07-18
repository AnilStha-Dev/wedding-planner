// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venue_details_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VenueDetailsRecord> _$venueDetailsRecordSerializer =
    new _$VenueDetailsRecordSerializer();

class _$VenueDetailsRecordSerializer
    implements StructuredSerializer<VenueDetailsRecord> {
  @override
  final Iterable<Type> types = const [VenueDetailsRecord, _$VenueDetailsRecord];
  @override
  final String wireName = 'VenueDetailsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, VenueDetailsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.venuename;
    if (value != null) {
      result
        ..add('Venuename')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.venueimg;
    if (value != null) {
      result
        ..add('Venueimg')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.venuedetails;
    if (value != null) {
      result
        ..add('Venuedetails')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.venuePhone;
    if (value != null) {
      result
        ..add('VenuePhone')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.venueMap;
    if (value != null) {
      result
        ..add('VenueMap')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  VenueDetailsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VenueDetailsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Venuename':
          result.venuename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Venueimg':
          result.venueimg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Venuedetails':
          result.venuedetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'VenuePhone':
          result.venuePhone = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'VenueMap':
          result.venueMap = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$VenueDetailsRecord extends VenueDetailsRecord {
  @override
  final String? venuename;
  @override
  final String? venueimg;
  @override
  final String? venuedetails;
  @override
  final int? venuePhone;
  @override
  final LatLng? venueMap;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VenueDetailsRecord(
          [void Function(VenueDetailsRecordBuilder)? updates]) =>
      (new VenueDetailsRecordBuilder()..update(updates))._build();

  _$VenueDetailsRecord._(
      {this.venuename,
      this.venueimg,
      this.venuedetails,
      this.venuePhone,
      this.venueMap,
      this.ffRef})
      : super._();

  @override
  VenueDetailsRecord rebuild(
          void Function(VenueDetailsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VenueDetailsRecordBuilder toBuilder() =>
      new VenueDetailsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VenueDetailsRecord &&
        venuename == other.venuename &&
        venueimg == other.venueimg &&
        venuedetails == other.venuedetails &&
        venuePhone == other.venuePhone &&
        venueMap == other.venueMap &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, venuename.hashCode);
    _$hash = $jc(_$hash, venueimg.hashCode);
    _$hash = $jc(_$hash, venuedetails.hashCode);
    _$hash = $jc(_$hash, venuePhone.hashCode);
    _$hash = $jc(_$hash, venueMap.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VenueDetailsRecord')
          ..add('venuename', venuename)
          ..add('venueimg', venueimg)
          ..add('venuedetails', venuedetails)
          ..add('venuePhone', venuePhone)
          ..add('venueMap', venueMap)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VenueDetailsRecordBuilder
    implements Builder<VenueDetailsRecord, VenueDetailsRecordBuilder> {
  _$VenueDetailsRecord? _$v;

  String? _venuename;
  String? get venuename => _$this._venuename;
  set venuename(String? venuename) => _$this._venuename = venuename;

  String? _venueimg;
  String? get venueimg => _$this._venueimg;
  set venueimg(String? venueimg) => _$this._venueimg = venueimg;

  String? _venuedetails;
  String? get venuedetails => _$this._venuedetails;
  set venuedetails(String? venuedetails) => _$this._venuedetails = venuedetails;

  int? _venuePhone;
  int? get venuePhone => _$this._venuePhone;
  set venuePhone(int? venuePhone) => _$this._venuePhone = venuePhone;

  LatLng? _venueMap;
  LatLng? get venueMap => _$this._venueMap;
  set venueMap(LatLng? venueMap) => _$this._venueMap = venueMap;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VenueDetailsRecordBuilder() {
    VenueDetailsRecord._initializeBuilder(this);
  }

  VenueDetailsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _venuename = $v.venuename;
      _venueimg = $v.venueimg;
      _venuedetails = $v.venuedetails;
      _venuePhone = $v.venuePhone;
      _venueMap = $v.venueMap;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VenueDetailsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VenueDetailsRecord;
  }

  @override
  void update(void Function(VenueDetailsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VenueDetailsRecord build() => _build();

  _$VenueDetailsRecord _build() {
    final _$result = _$v ??
        new _$VenueDetailsRecord._(
            venuename: venuename,
            venueimg: venueimg,
            venuedetails: venuedetails,
            venuePhone: venuePhone,
            venueMap: venueMap,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

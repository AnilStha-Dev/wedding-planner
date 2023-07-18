// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venue_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VenueRecord> _$venueRecordSerializer = new _$VenueRecordSerializer();

class _$VenueRecordSerializer implements StructuredSerializer<VenueRecord> {
  @override
  final Iterable<Type> types = const [VenueRecord, _$VenueRecord];
  @override
  final String wireName = 'VenueRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VenueRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.venueName;
    if (value != null) {
      result
        ..add('VenueName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.venueImage;
    if (value != null) {
      result
        ..add('VenueImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  VenueRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VenueRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'VenueName':
          result.venueName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'VenueImage':
          result.venueImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$VenueRecord extends VenueRecord {
  @override
  final String? venueName;
  @override
  final String? venueImage;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VenueRecord([void Function(VenueRecordBuilder)? updates]) =>
      (new VenueRecordBuilder()..update(updates))._build();

  _$VenueRecord._({this.venueName, this.venueImage, this.ffRef}) : super._();

  @override
  VenueRecord rebuild(void Function(VenueRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VenueRecordBuilder toBuilder() => new VenueRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VenueRecord &&
        venueName == other.venueName &&
        venueImage == other.venueImage &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, venueName.hashCode);
    _$hash = $jc(_$hash, venueImage.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VenueRecord')
          ..add('venueName', venueName)
          ..add('venueImage', venueImage)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VenueRecordBuilder implements Builder<VenueRecord, VenueRecordBuilder> {
  _$VenueRecord? _$v;

  String? _venueName;
  String? get venueName => _$this._venueName;
  set venueName(String? venueName) => _$this._venueName = venueName;

  String? _venueImage;
  String? get venueImage => _$this._venueImage;
  set venueImage(String? venueImage) => _$this._venueImage = venueImage;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VenueRecordBuilder() {
    VenueRecord._initializeBuilder(this);
  }

  VenueRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _venueName = $v.venueName;
      _venueImage = $v.venueImage;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VenueRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VenueRecord;
  }

  @override
  void update(void Function(VenueRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VenueRecord build() => _build();

  _$VenueRecord _build() {
    final _$result = _$v ??
        new _$VenueRecord._(
            venueName: venueName, venueImage: venueImage, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

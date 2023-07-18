// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bahunchettri_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BahunchettriRecord> _$bahunchettriRecordSerializer =
    new _$BahunchettriRecordSerializer();

class _$BahunchettriRecordSerializer
    implements StructuredSerializer<BahunchettriRecord> {
  @override
  final Iterable<Type> types = const [BahunchettriRecord, _$BahunchettriRecord];
  @override
  final String wireName = 'BahunchettriRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BahunchettriRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.photo1;
    if (value != null) {
      result
        ..add('photo1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo2;
    if (value != null) {
      result
        ..add('photo2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo3;
    if (value != null) {
      result
        ..add('photo3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo5;
    if (value != null) {
      result
        ..add('photo5')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo6;
    if (value != null) {
      result
        ..add('photo6')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bahunchettri;
    if (value != null) {
      result
        ..add('bahunchettri')
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
  BahunchettriRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BahunchettriRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'photo1':
          result.photo1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo2':
          result.photo2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo3':
          result.photo3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo5':
          result.photo5 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo6':
          result.photo6 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bahunchettri':
          result.bahunchettri = serializers.deserialize(value,
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

class _$BahunchettriRecord extends BahunchettriRecord {
  @override
  final String? photo1;
  @override
  final String? photo2;
  @override
  final String? photo3;
  @override
  final String? photo5;
  @override
  final String? photo6;
  @override
  final String? bahunchettri;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BahunchettriRecord(
          [void Function(BahunchettriRecordBuilder)? updates]) =>
      (new BahunchettriRecordBuilder()..update(updates))._build();

  _$BahunchettriRecord._(
      {this.photo1,
      this.photo2,
      this.photo3,
      this.photo5,
      this.photo6,
      this.bahunchettri,
      this.ffRef})
      : super._();

  @override
  BahunchettriRecord rebuild(
          void Function(BahunchettriRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BahunchettriRecordBuilder toBuilder() =>
      new BahunchettriRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BahunchettriRecord &&
        photo1 == other.photo1 &&
        photo2 == other.photo2 &&
        photo3 == other.photo3 &&
        photo5 == other.photo5 &&
        photo6 == other.photo6 &&
        bahunchettri == other.bahunchettri &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, photo1.hashCode);
    _$hash = $jc(_$hash, photo2.hashCode);
    _$hash = $jc(_$hash, photo3.hashCode);
    _$hash = $jc(_$hash, photo5.hashCode);
    _$hash = $jc(_$hash, photo6.hashCode);
    _$hash = $jc(_$hash, bahunchettri.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BahunchettriRecord')
          ..add('photo1', photo1)
          ..add('photo2', photo2)
          ..add('photo3', photo3)
          ..add('photo5', photo5)
          ..add('photo6', photo6)
          ..add('bahunchettri', bahunchettri)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BahunchettriRecordBuilder
    implements Builder<BahunchettriRecord, BahunchettriRecordBuilder> {
  _$BahunchettriRecord? _$v;

  String? _photo1;
  String? get photo1 => _$this._photo1;
  set photo1(String? photo1) => _$this._photo1 = photo1;

  String? _photo2;
  String? get photo2 => _$this._photo2;
  set photo2(String? photo2) => _$this._photo2 = photo2;

  String? _photo3;
  String? get photo3 => _$this._photo3;
  set photo3(String? photo3) => _$this._photo3 = photo3;

  String? _photo5;
  String? get photo5 => _$this._photo5;
  set photo5(String? photo5) => _$this._photo5 = photo5;

  String? _photo6;
  String? get photo6 => _$this._photo6;
  set photo6(String? photo6) => _$this._photo6 = photo6;

  String? _bahunchettri;
  String? get bahunchettri => _$this._bahunchettri;
  set bahunchettri(String? bahunchettri) => _$this._bahunchettri = bahunchettri;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BahunchettriRecordBuilder() {
    BahunchettriRecord._initializeBuilder(this);
  }

  BahunchettriRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _photo1 = $v.photo1;
      _photo2 = $v.photo2;
      _photo3 = $v.photo3;
      _photo5 = $v.photo5;
      _photo6 = $v.photo6;
      _bahunchettri = $v.bahunchettri;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BahunchettriRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BahunchettriRecord;
  }

  @override
  void update(void Function(BahunchettriRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BahunchettriRecord build() => _build();

  _$BahunchettriRecord _build() {
    final _$result = _$v ??
        new _$BahunchettriRecord._(
            photo1: photo1,
            photo2: photo2,
            photo3: photo3,
            photo5: photo5,
            photo6: photo6,
            bahunchettri: bahunchettri,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

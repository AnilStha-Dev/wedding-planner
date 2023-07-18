// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'limbu_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LimbuRecord> _$limbuRecordSerializer = new _$LimbuRecordSerializer();

class _$LimbuRecordSerializer implements StructuredSerializer<LimbuRecord> {
  @override
  final Iterable<Type> types = const [LimbuRecord, _$LimbuRecord];
  @override
  final String wireName = 'LimbuRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LimbuRecord object,
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
    value = object.limbu;
    if (value != null) {
      result
        ..add('limbu')
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
  LimbuRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LimbuRecordBuilder();

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
        case 'limbu':
          result.limbu = serializers.deserialize(value,
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

class _$LimbuRecord extends LimbuRecord {
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
  final String? limbu;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LimbuRecord([void Function(LimbuRecordBuilder)? updates]) =>
      (new LimbuRecordBuilder()..update(updates))._build();

  _$LimbuRecord._(
      {this.photo1,
      this.photo2,
      this.photo3,
      this.photo5,
      this.photo6,
      this.limbu,
      this.ffRef})
      : super._();

  @override
  LimbuRecord rebuild(void Function(LimbuRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LimbuRecordBuilder toBuilder() => new LimbuRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LimbuRecord &&
        photo1 == other.photo1 &&
        photo2 == other.photo2 &&
        photo3 == other.photo3 &&
        photo5 == other.photo5 &&
        photo6 == other.photo6 &&
        limbu == other.limbu &&
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
    _$hash = $jc(_$hash, limbu.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LimbuRecord')
          ..add('photo1', photo1)
          ..add('photo2', photo2)
          ..add('photo3', photo3)
          ..add('photo5', photo5)
          ..add('photo6', photo6)
          ..add('limbu', limbu)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LimbuRecordBuilder implements Builder<LimbuRecord, LimbuRecordBuilder> {
  _$LimbuRecord? _$v;

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

  String? _limbu;
  String? get limbu => _$this._limbu;
  set limbu(String? limbu) => _$this._limbu = limbu;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LimbuRecordBuilder() {
    LimbuRecord._initializeBuilder(this);
  }

  LimbuRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _photo1 = $v.photo1;
      _photo2 = $v.photo2;
      _photo3 = $v.photo3;
      _photo5 = $v.photo5;
      _photo6 = $v.photo6;
      _limbu = $v.limbu;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LimbuRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LimbuRecord;
  }

  @override
  void update(void Function(LimbuRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LimbuRecord build() => _build();

  _$LimbuRecord _build() {
    final _$result = _$v ??
        new _$LimbuRecord._(
            photo1: photo1,
            photo2: photo2,
            photo3: photo3,
            photo5: photo5,
            photo6: photo6,
            limbu: limbu,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

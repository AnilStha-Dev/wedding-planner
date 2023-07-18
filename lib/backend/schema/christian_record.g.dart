// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'christian_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChristianRecord> _$christianRecordSerializer =
    new _$ChristianRecordSerializer();

class _$ChristianRecordSerializer
    implements StructuredSerializer<ChristianRecord> {
  @override
  final Iterable<Type> types = const [ChristianRecord, _$ChristianRecord];
  @override
  final String wireName = 'ChristianRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChristianRecord object,
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
    value = object.christian;
    if (value != null) {
      result
        ..add('christian')
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
  ChristianRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChristianRecordBuilder();

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
        case 'christian':
          result.christian = serializers.deserialize(value,
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

class _$ChristianRecord extends ChristianRecord {
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
  final String? christian;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChristianRecord([void Function(ChristianRecordBuilder)? updates]) =>
      (new ChristianRecordBuilder()..update(updates))._build();

  _$ChristianRecord._(
      {this.photo1,
      this.photo2,
      this.photo3,
      this.photo5,
      this.photo6,
      this.christian,
      this.ffRef})
      : super._();

  @override
  ChristianRecord rebuild(void Function(ChristianRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChristianRecordBuilder toBuilder() =>
      new ChristianRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChristianRecord &&
        photo1 == other.photo1 &&
        photo2 == other.photo2 &&
        photo3 == other.photo3 &&
        photo5 == other.photo5 &&
        photo6 == other.photo6 &&
        christian == other.christian &&
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
    _$hash = $jc(_$hash, christian.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChristianRecord')
          ..add('photo1', photo1)
          ..add('photo2', photo2)
          ..add('photo3', photo3)
          ..add('photo5', photo5)
          ..add('photo6', photo6)
          ..add('christian', christian)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChristianRecordBuilder
    implements Builder<ChristianRecord, ChristianRecordBuilder> {
  _$ChristianRecord? _$v;

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

  String? _christian;
  String? get christian => _$this._christian;
  set christian(String? christian) => _$this._christian = christian;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChristianRecordBuilder() {
    ChristianRecord._initializeBuilder(this);
  }

  ChristianRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _photo1 = $v.photo1;
      _photo2 = $v.photo2;
      _photo3 = $v.photo3;
      _photo5 = $v.photo5;
      _photo6 = $v.photo6;
      _christian = $v.christian;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChristianRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChristianRecord;
  }

  @override
  void update(void Function(ChristianRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChristianRecord build() => _build();

  _$ChristianRecord _build() {
    final _$result = _$v ??
        new _$ChristianRecord._(
            photo1: photo1,
            photo2: photo2,
            photo3: photo3,
            photo5: photo5,
            photo6: photo6,
            christian: christian,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

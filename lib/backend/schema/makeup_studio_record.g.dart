// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'makeup_studio_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MakeupStudioRecord> _$makeupStudioRecordSerializer =
    new _$MakeupStudioRecordSerializer();

class _$MakeupStudioRecordSerializer
    implements StructuredSerializer<MakeupStudioRecord> {
  @override
  final Iterable<Type> types = const [MakeupStudioRecord, _$MakeupStudioRecord];
  @override
  final String wireName = 'MakeupStudioRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, MakeupStudioRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.studioName;
    if (value != null) {
      result
        ..add('StudioName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.makeupimg;
    if (value != null) {
      result
        ..add('Makeupimg')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.studiodetails;
    if (value != null) {
      result
        ..add('Studiodetails')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.studiophone;
    if (value != null) {
      result
        ..add('Studiophone')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  MakeupStudioRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MakeupStudioRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'StudioName':
          result.studioName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Makeupimg':
          result.makeupimg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Studiodetails':
          result.studiodetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Studiophone':
          result.studiophone = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$MakeupStudioRecord extends MakeupStudioRecord {
  @override
  final String? studioName;
  @override
  final String? makeupimg;
  @override
  final String? studiodetails;
  @override
  final int? studiophone;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MakeupStudioRecord(
          [void Function(MakeupStudioRecordBuilder)? updates]) =>
      (new MakeupStudioRecordBuilder()..update(updates))._build();

  _$MakeupStudioRecord._(
      {this.studioName,
      this.makeupimg,
      this.studiodetails,
      this.studiophone,
      this.ffRef})
      : super._();

  @override
  MakeupStudioRecord rebuild(
          void Function(MakeupStudioRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MakeupStudioRecordBuilder toBuilder() =>
      new MakeupStudioRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MakeupStudioRecord &&
        studioName == other.studioName &&
        makeupimg == other.makeupimg &&
        studiodetails == other.studiodetails &&
        studiophone == other.studiophone &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, studioName.hashCode);
    _$hash = $jc(_$hash, makeupimg.hashCode);
    _$hash = $jc(_$hash, studiodetails.hashCode);
    _$hash = $jc(_$hash, studiophone.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MakeupStudioRecord')
          ..add('studioName', studioName)
          ..add('makeupimg', makeupimg)
          ..add('studiodetails', studiodetails)
          ..add('studiophone', studiophone)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MakeupStudioRecordBuilder
    implements Builder<MakeupStudioRecord, MakeupStudioRecordBuilder> {
  _$MakeupStudioRecord? _$v;

  String? _studioName;
  String? get studioName => _$this._studioName;
  set studioName(String? studioName) => _$this._studioName = studioName;

  String? _makeupimg;
  String? get makeupimg => _$this._makeupimg;
  set makeupimg(String? makeupimg) => _$this._makeupimg = makeupimg;

  String? _studiodetails;
  String? get studiodetails => _$this._studiodetails;
  set studiodetails(String? studiodetails) =>
      _$this._studiodetails = studiodetails;

  int? _studiophone;
  int? get studiophone => _$this._studiophone;
  set studiophone(int? studiophone) => _$this._studiophone = studiophone;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MakeupStudioRecordBuilder() {
    MakeupStudioRecord._initializeBuilder(this);
  }

  MakeupStudioRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _studioName = $v.studioName;
      _makeupimg = $v.makeupimg;
      _studiodetails = $v.studiodetails;
      _studiophone = $v.studiophone;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MakeupStudioRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MakeupStudioRecord;
  }

  @override
  void update(void Function(MakeupStudioRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MakeupStudioRecord build() => _build();

  _$MakeupStudioRecord _build() {
    final _$result = _$v ??
        new _$MakeupStudioRecord._(
            studioName: studioName,
            makeupimg: makeupimg,
            studiodetails: studiodetails,
            studiophone: studiophone,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

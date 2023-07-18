// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wedding_types_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeddingTypesRecord> _$weddingTypesRecordSerializer =
    new _$WeddingTypesRecordSerializer();

class _$WeddingTypesRecordSerializer
    implements StructuredSerializer<WeddingTypesRecord> {
  @override
  final Iterable<Type> types = const [WeddingTypesRecord, _$WeddingTypesRecord];
  @override
  final String wireName = 'WeddingTypesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WeddingTypesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.weddingName;
    if (value != null) {
      result
        ..add('WeddingName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thumbnail;
    if (value != null) {
      result
        ..add('Thumbnail')
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
  WeddingTypesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeddingTypesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'WeddingName':
          result.weddingName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Thumbnail':
          result.thumbnail = serializers.deserialize(value,
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

class _$WeddingTypesRecord extends WeddingTypesRecord {
  @override
  final String? weddingName;
  @override
  final String? thumbnail;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WeddingTypesRecord(
          [void Function(WeddingTypesRecordBuilder)? updates]) =>
      (new WeddingTypesRecordBuilder()..update(updates))._build();

  _$WeddingTypesRecord._({this.weddingName, this.thumbnail, this.ffRef})
      : super._();

  @override
  WeddingTypesRecord rebuild(
          void Function(WeddingTypesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeddingTypesRecordBuilder toBuilder() =>
      new WeddingTypesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeddingTypesRecord &&
        weddingName == other.weddingName &&
        thumbnail == other.thumbnail &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, weddingName.hashCode);
    _$hash = $jc(_$hash, thumbnail.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeddingTypesRecord')
          ..add('weddingName', weddingName)
          ..add('thumbnail', thumbnail)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WeddingTypesRecordBuilder
    implements Builder<WeddingTypesRecord, WeddingTypesRecordBuilder> {
  _$WeddingTypesRecord? _$v;

  String? _weddingName;
  String? get weddingName => _$this._weddingName;
  set weddingName(String? weddingName) => _$this._weddingName = weddingName;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WeddingTypesRecordBuilder() {
    WeddingTypesRecord._initializeBuilder(this);
  }

  WeddingTypesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weddingName = $v.weddingName;
      _thumbnail = $v.thumbnail;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeddingTypesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeddingTypesRecord;
  }

  @override
  void update(void Function(WeddingTypesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeddingTypesRecord build() => _build();

  _$WeddingTypesRecord _build() {
    final _$result = _$v ??
        new _$WeddingTypesRecord._(
            weddingName: weddingName, thumbnail: thumbnail, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

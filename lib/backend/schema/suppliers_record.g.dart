// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suppliers_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SuppliersRecord> _$suppliersRecordSerializer =
    new _$SuppliersRecordSerializer();

class _$SuppliersRecordSerializer
    implements StructuredSerializer<SuppliersRecord> {
  @override
  final Iterable<Type> types = const [SuppliersRecord, _$SuppliersRecord];
  @override
  final String wireName = 'SuppliersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SuppliersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.supplierType;
    if (value != null) {
      result
        ..add('SupplierType')
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
  SuppliersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SuppliersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'SupplierType':
          result.supplierType = serializers.deserialize(value,
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

class _$SuppliersRecord extends SuppliersRecord {
  @override
  final String? supplierType;
  @override
  final String? thumbnail;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SuppliersRecord([void Function(SuppliersRecordBuilder)? updates]) =>
      (new SuppliersRecordBuilder()..update(updates))._build();

  _$SuppliersRecord._({this.supplierType, this.thumbnail, this.ffRef})
      : super._();

  @override
  SuppliersRecord rebuild(void Function(SuppliersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuppliersRecordBuilder toBuilder() =>
      new SuppliersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuppliersRecord &&
        supplierType == other.supplierType &&
        thumbnail == other.thumbnail &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, supplierType.hashCode);
    _$hash = $jc(_$hash, thumbnail.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SuppliersRecord')
          ..add('supplierType', supplierType)
          ..add('thumbnail', thumbnail)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SuppliersRecordBuilder
    implements Builder<SuppliersRecord, SuppliersRecordBuilder> {
  _$SuppliersRecord? _$v;

  String? _supplierType;
  String? get supplierType => _$this._supplierType;
  set supplierType(String? supplierType) => _$this._supplierType = supplierType;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SuppliersRecordBuilder() {
    SuppliersRecord._initializeBuilder(this);
  }

  SuppliersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _supplierType = $v.supplierType;
      _thumbnail = $v.thumbnail;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuppliersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SuppliersRecord;
  }

  @override
  void update(void Function(SuppliersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SuppliersRecord build() => _build();

  _$SuppliersRecord _build() {
    final _$result = _$v ??
        new _$SuppliersRecord._(
            supplierType: supplierType, thumbnail: thumbnail, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

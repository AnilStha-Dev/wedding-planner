// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photographers_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PhotographersRecord> _$photographersRecordSerializer =
    new _$PhotographersRecordSerializer();

class _$PhotographersRecordSerializer
    implements StructuredSerializer<PhotographersRecord> {
  @override
  final Iterable<Type> types = const [
    PhotographersRecord,
    _$PhotographersRecord
  ];
  @override
  final String wireName = 'PhotographersRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PhotographersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.photographerName;
    if (value != null) {
      result
        ..add('PhotographerName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagePhoto;
    if (value != null) {
      result
        ..add('ImagePhoto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photographerdetails;
    if (value != null) {
      result
        ..add('Photographerdetails')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photographerphone;
    if (value != null) {
      result
        ..add('Photographerphone')
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
  PhotographersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhotographersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'PhotographerName':
          result.photographerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ImagePhoto':
          result.imagePhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Photographerdetails':
          result.photographerdetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Photographerphone':
          result.photographerphone = serializers.deserialize(value,
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

class _$PhotographersRecord extends PhotographersRecord {
  @override
  final String? photographerName;
  @override
  final String? imagePhoto;
  @override
  final String? photographerdetails;
  @override
  final int? photographerphone;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PhotographersRecord(
          [void Function(PhotographersRecordBuilder)? updates]) =>
      (new PhotographersRecordBuilder()..update(updates))._build();

  _$PhotographersRecord._(
      {this.photographerName,
      this.imagePhoto,
      this.photographerdetails,
      this.photographerphone,
      this.ffRef})
      : super._();

  @override
  PhotographersRecord rebuild(
          void Function(PhotographersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhotographersRecordBuilder toBuilder() =>
      new PhotographersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhotographersRecord &&
        photographerName == other.photographerName &&
        imagePhoto == other.imagePhoto &&
        photographerdetails == other.photographerdetails &&
        photographerphone == other.photographerphone &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, photographerName.hashCode);
    _$hash = $jc(_$hash, imagePhoto.hashCode);
    _$hash = $jc(_$hash, photographerdetails.hashCode);
    _$hash = $jc(_$hash, photographerphone.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PhotographersRecord')
          ..add('photographerName', photographerName)
          ..add('imagePhoto', imagePhoto)
          ..add('photographerdetails', photographerdetails)
          ..add('photographerphone', photographerphone)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PhotographersRecordBuilder
    implements Builder<PhotographersRecord, PhotographersRecordBuilder> {
  _$PhotographersRecord? _$v;

  String? _photographerName;
  String? get photographerName => _$this._photographerName;
  set photographerName(String? photographerName) =>
      _$this._photographerName = photographerName;

  String? _imagePhoto;
  String? get imagePhoto => _$this._imagePhoto;
  set imagePhoto(String? imagePhoto) => _$this._imagePhoto = imagePhoto;

  String? _photographerdetails;
  String? get photographerdetails => _$this._photographerdetails;
  set photographerdetails(String? photographerdetails) =>
      _$this._photographerdetails = photographerdetails;

  int? _photographerphone;
  int? get photographerphone => _$this._photographerphone;
  set photographerphone(int? photographerphone) =>
      _$this._photographerphone = photographerphone;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PhotographersRecordBuilder() {
    PhotographersRecord._initializeBuilder(this);
  }

  PhotographersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _photographerName = $v.photographerName;
      _imagePhoto = $v.imagePhoto;
      _photographerdetails = $v.photographerdetails;
      _photographerphone = $v.photographerphone;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PhotographersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PhotographersRecord;
  }

  @override
  void update(void Function(PhotographersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PhotographersRecord build() => _build();

  _$PhotographersRecord _build() {
    final _$result = _$v ??
        new _$PhotographersRecord._(
            photographerName: photographerName,
            imagePhoto: imagePhoto,
            photographerdetails: photographerdetails,
            photographerphone: photographerphone,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

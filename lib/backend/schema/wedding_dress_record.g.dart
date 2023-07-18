// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wedding_dress_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeddingDressRecord> _$weddingDressRecordSerializer =
    new _$WeddingDressRecordSerializer();

class _$WeddingDressRecordSerializer
    implements StructuredSerializer<WeddingDressRecord> {
  @override
  final Iterable<Type> types = const [WeddingDressRecord, _$WeddingDressRecord];
  @override
  final String wireName = 'WeddingDressRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WeddingDressRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.botiqueName;
    if (value != null) {
      result
        ..add('BotiqueName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dressImage;
    if (value != null) {
      result
        ..add('DressImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.boutiquedetails;
    if (value != null) {
      result
        ..add('Boutiquedetails')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.boutiquephone;
    if (value != null) {
      result
        ..add('Boutiquephone')
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
  WeddingDressRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeddingDressRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'BotiqueName':
          result.botiqueName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'DressImage':
          result.dressImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Boutiquedetails':
          result.boutiquedetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Boutiquephone':
          result.boutiquephone = serializers.deserialize(value,
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

class _$WeddingDressRecord extends WeddingDressRecord {
  @override
  final String? botiqueName;
  @override
  final String? dressImage;
  @override
  final String? boutiquedetails;
  @override
  final int? boutiquephone;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WeddingDressRecord(
          [void Function(WeddingDressRecordBuilder)? updates]) =>
      (new WeddingDressRecordBuilder()..update(updates))._build();

  _$WeddingDressRecord._(
      {this.botiqueName,
      this.dressImage,
      this.boutiquedetails,
      this.boutiquephone,
      this.ffRef})
      : super._();

  @override
  WeddingDressRecord rebuild(
          void Function(WeddingDressRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeddingDressRecordBuilder toBuilder() =>
      new WeddingDressRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeddingDressRecord &&
        botiqueName == other.botiqueName &&
        dressImage == other.dressImage &&
        boutiquedetails == other.boutiquedetails &&
        boutiquephone == other.boutiquephone &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, botiqueName.hashCode);
    _$hash = $jc(_$hash, dressImage.hashCode);
    _$hash = $jc(_$hash, boutiquedetails.hashCode);
    _$hash = $jc(_$hash, boutiquephone.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeddingDressRecord')
          ..add('botiqueName', botiqueName)
          ..add('dressImage', dressImage)
          ..add('boutiquedetails', boutiquedetails)
          ..add('boutiquephone', boutiquephone)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WeddingDressRecordBuilder
    implements Builder<WeddingDressRecord, WeddingDressRecordBuilder> {
  _$WeddingDressRecord? _$v;

  String? _botiqueName;
  String? get botiqueName => _$this._botiqueName;
  set botiqueName(String? botiqueName) => _$this._botiqueName = botiqueName;

  String? _dressImage;
  String? get dressImage => _$this._dressImage;
  set dressImage(String? dressImage) => _$this._dressImage = dressImage;

  String? _boutiquedetails;
  String? get boutiquedetails => _$this._boutiquedetails;
  set boutiquedetails(String? boutiquedetails) =>
      _$this._boutiquedetails = boutiquedetails;

  int? _boutiquephone;
  int? get boutiquephone => _$this._boutiquephone;
  set boutiquephone(int? boutiquephone) =>
      _$this._boutiquephone = boutiquephone;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WeddingDressRecordBuilder() {
    WeddingDressRecord._initializeBuilder(this);
  }

  WeddingDressRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _botiqueName = $v.botiqueName;
      _dressImage = $v.dressImage;
      _boutiquedetails = $v.boutiquedetails;
      _boutiquephone = $v.boutiquephone;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeddingDressRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeddingDressRecord;
  }

  @override
  void update(void Function(WeddingDressRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeddingDressRecord build() => _build();

  _$WeddingDressRecord _build() {
    final _$result = _$v ??
        new _$WeddingDressRecord._(
            botiqueName: botiqueName,
            dressImage: dressImage,
            boutiquedetails: boutiquedetails,
            boutiquephone: boutiquephone,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

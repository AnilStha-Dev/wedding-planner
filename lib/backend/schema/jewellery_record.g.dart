// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jewellery_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<JewelleryRecord> _$jewelleryRecordSerializer =
    new _$JewelleryRecordSerializer();

class _$JewelleryRecordSerializer
    implements StructuredSerializer<JewelleryRecord> {
  @override
  final Iterable<Type> types = const [JewelleryRecord, _$JewelleryRecord];
  @override
  final String wireName = 'JewelleryRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, JewelleryRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.shopName;
    if (value != null) {
      result
        ..add('ShopName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shopImage;
    if (value != null) {
      result
        ..add('ShopImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shopDetails;
    if (value != null) {
      result
        ..add('ShopDetails')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shopPhone;
    if (value != null) {
      result
        ..add('ShopPhone')
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
  JewelleryRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JewelleryRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ShopName':
          result.shopName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ShopImage':
          result.shopImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ShopDetails':
          result.shopDetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ShopPhone':
          result.shopPhone = serializers.deserialize(value,
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

class _$JewelleryRecord extends JewelleryRecord {
  @override
  final String? shopName;
  @override
  final String? shopImage;
  @override
  final String? shopDetails;
  @override
  final int? shopPhone;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$JewelleryRecord([void Function(JewelleryRecordBuilder)? updates]) =>
      (new JewelleryRecordBuilder()..update(updates))._build();

  _$JewelleryRecord._(
      {this.shopName,
      this.shopImage,
      this.shopDetails,
      this.shopPhone,
      this.ffRef})
      : super._();

  @override
  JewelleryRecord rebuild(void Function(JewelleryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JewelleryRecordBuilder toBuilder() =>
      new JewelleryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JewelleryRecord &&
        shopName == other.shopName &&
        shopImage == other.shopImage &&
        shopDetails == other.shopDetails &&
        shopPhone == other.shopPhone &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, shopName.hashCode);
    _$hash = $jc(_$hash, shopImage.hashCode);
    _$hash = $jc(_$hash, shopDetails.hashCode);
    _$hash = $jc(_$hash, shopPhone.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JewelleryRecord')
          ..add('shopName', shopName)
          ..add('shopImage', shopImage)
          ..add('shopDetails', shopDetails)
          ..add('shopPhone', shopPhone)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class JewelleryRecordBuilder
    implements Builder<JewelleryRecord, JewelleryRecordBuilder> {
  _$JewelleryRecord? _$v;

  String? _shopName;
  String? get shopName => _$this._shopName;
  set shopName(String? shopName) => _$this._shopName = shopName;

  String? _shopImage;
  String? get shopImage => _$this._shopImage;
  set shopImage(String? shopImage) => _$this._shopImage = shopImage;

  String? _shopDetails;
  String? get shopDetails => _$this._shopDetails;
  set shopDetails(String? shopDetails) => _$this._shopDetails = shopDetails;

  int? _shopPhone;
  int? get shopPhone => _$this._shopPhone;
  set shopPhone(int? shopPhone) => _$this._shopPhone = shopPhone;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  JewelleryRecordBuilder() {
    JewelleryRecord._initializeBuilder(this);
  }

  JewelleryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shopName = $v.shopName;
      _shopImage = $v.shopImage;
      _shopDetails = $v.shopDetails;
      _shopPhone = $v.shopPhone;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JewelleryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JewelleryRecord;
  }

  @override
  void update(void Function(JewelleryRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JewelleryRecord build() => _build();

  _$JewelleryRecord _build() {
    final _$result = _$v ??
        new _$JewelleryRecord._(
            shopName: shopName,
            shopImage: shopImage,
            shopDetails: shopDetails,
            shopPhone: shopPhone,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_do_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ToDoListRecord> _$toDoListRecordSerializer =
    new _$ToDoListRecordSerializer();

class _$ToDoListRecordSerializer
    implements StructuredSerializer<ToDoListRecord> {
  @override
  final Iterable<Type> types = const [ToDoListRecord, _$ToDoListRecord];
  @override
  final String wireName = 'ToDoListRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ToDoListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.toDoDate;
    if (value != null) {
      result
        ..add('toDoDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.toDoName;
    if (value != null) {
      result
        ..add('toDoName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.toDoDescription;
    if (value != null) {
      result
        ..add('toDoDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.toDoState;
    if (value != null) {
      result
        ..add('toDoState')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.completedDate;
    if (value != null) {
      result
        ..add('completedDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
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
  ToDoListRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ToDoListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'toDoDate':
          result.toDoDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'toDoName':
          result.toDoName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'toDoDescription':
          result.toDoDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'toDoState':
          result.toDoState = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'completedDate':
          result.completedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
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

class _$ToDoListRecord extends ToDoListRecord {
  @override
  final DateTime? toDoDate;
  @override
  final String? toDoName;
  @override
  final String? toDoDescription;
  @override
  final bool? toDoState;
  @override
  final DateTime? completedDate;
  @override
  final DocumentReference<Object?>? user;
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ToDoListRecord([void Function(ToDoListRecordBuilder)? updates]) =>
      (new ToDoListRecordBuilder()..update(updates))._build();

  _$ToDoListRecord._(
      {this.toDoDate,
      this.toDoName,
      this.toDoDescription,
      this.toDoState,
      this.completedDate,
      this.user,
      this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.ffRef})
      : super._();

  @override
  ToDoListRecord rebuild(void Function(ToDoListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ToDoListRecordBuilder toBuilder() =>
      new ToDoListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ToDoListRecord &&
        toDoDate == other.toDoDate &&
        toDoName == other.toDoName &&
        toDoDescription == other.toDoDescription &&
        toDoState == other.toDoState &&
        completedDate == other.completedDate &&
        user == other.user &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, toDoDate.hashCode);
    _$hash = $jc(_$hash, toDoName.hashCode);
    _$hash = $jc(_$hash, toDoDescription.hashCode);
    _$hash = $jc(_$hash, toDoState.hashCode);
    _$hash = $jc(_$hash, completedDate.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ToDoListRecord')
          ..add('toDoDate', toDoDate)
          ..add('toDoName', toDoName)
          ..add('toDoDescription', toDoDescription)
          ..add('toDoState', toDoState)
          ..add('completedDate', completedDate)
          ..add('user', user)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ToDoListRecordBuilder
    implements Builder<ToDoListRecord, ToDoListRecordBuilder> {
  _$ToDoListRecord? _$v;

  DateTime? _toDoDate;
  DateTime? get toDoDate => _$this._toDoDate;
  set toDoDate(DateTime? toDoDate) => _$this._toDoDate = toDoDate;

  String? _toDoName;
  String? get toDoName => _$this._toDoName;
  set toDoName(String? toDoName) => _$this._toDoName = toDoName;

  String? _toDoDescription;
  String? get toDoDescription => _$this._toDoDescription;
  set toDoDescription(String? toDoDescription) =>
      _$this._toDoDescription = toDoDescription;

  bool? _toDoState;
  bool? get toDoState => _$this._toDoState;
  set toDoState(bool? toDoState) => _$this._toDoState = toDoState;

  DateTime? _completedDate;
  DateTime? get completedDate => _$this._completedDate;
  set completedDate(DateTime? completedDate) =>
      _$this._completedDate = completedDate;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ToDoListRecordBuilder() {
    ToDoListRecord._initializeBuilder(this);
  }

  ToDoListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _toDoDate = $v.toDoDate;
      _toDoName = $v.toDoName;
      _toDoDescription = $v.toDoDescription;
      _toDoState = $v.toDoState;
      _completedDate = $v.completedDate;
      _user = $v.user;
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ToDoListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ToDoListRecord;
  }

  @override
  void update(void Function(ToDoListRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ToDoListRecord build() => _build();

  _$ToDoListRecord _build() {
    final _$result = _$v ??
        new _$ToDoListRecord._(
            toDoDate: toDoDate,
            toDoName: toDoName,
            toDoDescription: toDoDescription,
            toDoState: toDoState,
            completedDate: completedDate,
            user: user,
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

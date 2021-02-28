// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enterprise.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Enterprise> _$enterpriseSerializer = new _$EnterpriseSerializer();

class _$EnterpriseSerializer implements StructuredSerializer<Enterprise> {
  @override
  final Iterable<Type> types = const [Enterprise, _$Enterprise];
  @override
  final String wireName = 'Enterprise';

  @override
  Iterable<Object> serialize(Serializers serializers, Enterprise object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.enterpriseName != null) {
      result
        ..add('enterprise_name')
        ..add(serializers.serialize(object.enterpriseName,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.photo != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(object.photo,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Enterprise deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EnterpriseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'enterprise_name':
          result.enterpriseName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Enterprise extends Enterprise {
  @override
  final int id;
  @override
  final String enterpriseName;
  @override
  final String description;
  @override
  final String photo;

  factory _$Enterprise([void Function(EnterpriseBuilder) updates]) =>
      (new EnterpriseBuilder()..update(updates)).build();

  _$Enterprise._({this.id, this.enterpriseName, this.description, this.photo})
      : super._();

  @override
  Enterprise rebuild(void Function(EnterpriseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnterpriseBuilder toBuilder() => new EnterpriseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Enterprise &&
        id == other.id &&
        enterpriseName == other.enterpriseName &&
        description == other.description &&
        photo == other.photo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), enterpriseName.hashCode),
            description.hashCode),
        photo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Enterprise')
          ..add('id', id)
          ..add('enterpriseName', enterpriseName)
          ..add('description', description)
          ..add('photo', photo))
        .toString();
  }
}

class EnterpriseBuilder implements Builder<Enterprise, EnterpriseBuilder> {
  _$Enterprise _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _enterpriseName;
  String get enterpriseName => _$this._enterpriseName;
  set enterpriseName(String enterpriseName) =>
      _$this._enterpriseName = enterpriseName;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _photo;
  String get photo => _$this._photo;
  set photo(String photo) => _$this._photo = photo;

  EnterpriseBuilder();

  EnterpriseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _enterpriseName = _$v.enterpriseName;
      _description = _$v.description;
      _photo = _$v.photo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Enterprise other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Enterprise;
  }

  @override
  void update(void Function(EnterpriseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Enterprise build() {
    final _$result = _$v ??
        new _$Enterprise._(
            id: id,
            enterpriseName: enterpriseName,
            description: description,
            photo: photo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

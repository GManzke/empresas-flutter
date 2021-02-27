// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_credentials.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthCredentials> _$authCredentialsSerializer =
    new _$AuthCredentialsSerializer();

class _$AuthCredentialsSerializer
    implements StructuredSerializer<AuthCredentials> {
  @override
  final Iterable<Type> types = const [AuthCredentials, _$AuthCredentials];
  @override
  final String wireName = 'AuthCredentials';

  @override
  Iterable<Object> serialize(Serializers serializers, AuthCredentials object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'accessToken',
      serializers.serialize(object.accessToken,
          specifiedType: const FullType(String)),
      'client',
      serializers.serialize(object.client,
          specifiedType: const FullType(String)),
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AuthCredentials deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthCredentialsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'accessToken':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'client':
          result.client = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthCredentials extends AuthCredentials {
  @override
  final String accessToken;
  @override
  final String client;
  @override
  final String uid;

  factory _$AuthCredentials([void Function(AuthCredentialsBuilder) updates]) =>
      (new AuthCredentialsBuilder()..update(updates)).build();

  _$AuthCredentials._({this.accessToken, this.client, this.uid}) : super._() {
    if (accessToken == null) {
      throw new BuiltValueNullFieldError('AuthCredentials', 'accessToken');
    }
    if (client == null) {
      throw new BuiltValueNullFieldError('AuthCredentials', 'client');
    }
    if (uid == null) {
      throw new BuiltValueNullFieldError('AuthCredentials', 'uid');
    }
  }

  @override
  AuthCredentials rebuild(void Function(AuthCredentialsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthCredentialsBuilder toBuilder() =>
      new AuthCredentialsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthCredentials &&
        accessToken == other.accessToken &&
        client == other.client &&
        uid == other.uid;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, accessToken.hashCode), client.hashCode), uid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthCredentials')
          ..add('accessToken', accessToken)
          ..add('client', client)
          ..add('uid', uid))
        .toString();
  }
}

class AuthCredentialsBuilder
    implements Builder<AuthCredentials, AuthCredentialsBuilder> {
  _$AuthCredentials _$v;

  String _accessToken;
  String get accessToken => _$this._accessToken;
  set accessToken(String accessToken) => _$this._accessToken = accessToken;

  String _client;
  String get client => _$this._client;
  set client(String client) => _$this._client = client;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  AuthCredentialsBuilder();

  AuthCredentialsBuilder get _$this {
    if (_$v != null) {
      _accessToken = _$v.accessToken;
      _client = _$v.client;
      _uid = _$v.uid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthCredentials other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthCredentials;
  }

  @override
  void update(void Function(AuthCredentialsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthCredentials build() {
    final _$result = _$v ??
        new _$AuthCredentials._(
            accessToken: accessToken, client: client, uid: uid);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

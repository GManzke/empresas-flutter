// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$User extends User {
  @override
  final String investorName;
  @override
  final String email;

  factory _$User([void Function(UserBuilder) updates]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._({this.investorName, this.email}) : super._() {
    if (investorName == null) {
      throw new BuiltValueNullFieldError('User', 'investorName');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('User', 'email');
    }
  }

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        investorName == other.investorName &&
        email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, investorName.hashCode), email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('investorName', investorName)
          ..add('email', email))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User _$v;

  String _investorName;
  String get investorName => _$this._investorName;
  set investorName(String investorName) => _$this._investorName = investorName;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  UserBuilder();

  UserBuilder get _$this {
    if (_$v != null) {
      _investorName = _$v.investorName;
      _email = _$v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    final _$result =
        _$v ?? new _$User._(investorName: investorName, email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorState extends ErrorState {
  @override
  final String minor;
  @override
  final String major;

  factory _$ErrorState([void Function(ErrorStateBuilder) updates]) =>
      (new ErrorStateBuilder()..update(updates)).build();

  _$ErrorState._({this.minor, this.major}) : super._();

  @override
  ErrorState rebuild(void Function(ErrorStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorStateBuilder toBuilder() => new ErrorStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorState && minor == other.minor && major == other.major;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, minor.hashCode), major.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ErrorState')
          ..add('minor', minor)
          ..add('major', major))
        .toString();
  }
}

class ErrorStateBuilder implements Builder<ErrorState, ErrorStateBuilder> {
  _$ErrorState _$v;

  String _minor;
  String get minor => _$this._minor;
  set minor(String minor) => _$this._minor = minor;

  String _major;
  String get major => _$this._major;
  set major(String major) => _$this._major = major;

  ErrorStateBuilder();

  ErrorStateBuilder get _$this {
    if (_$v != null) {
      _minor = _$v.minor;
      _major = _$v.major;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ErrorState;
  }

  @override
  void update(void Function(ErrorStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ErrorState build() {
    final _$result = _$v ?? new _$ErrorState._(minor: minor, major: major);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

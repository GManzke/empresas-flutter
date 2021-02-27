// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final OperationState operationState;
  @override
  final ErrorState errorState;
  @override
  final UserState userState;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.operationState, this.errorState, this.userState})
      : super._();

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        operationState == other.operationState &&
        errorState == other.errorState &&
        userState == other.userState;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, operationState.hashCode), errorState.hashCode),
        userState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('operationState', operationState)
          ..add('errorState', errorState)
          ..add('userState', userState))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  OperationState _operationState;
  OperationState get operationState => _$this._operationState;
  set operationState(OperationState operationState) =>
      _$this._operationState = operationState;

  ErrorStateBuilder _errorState;
  ErrorStateBuilder get errorState =>
      _$this._errorState ??= new ErrorStateBuilder();
  set errorState(ErrorStateBuilder errorState) =>
      _$this._errorState = errorState;

  UserStateBuilder _userState;
  UserStateBuilder get userState =>
      _$this._userState ??= new UserStateBuilder();
  set userState(UserStateBuilder userState) => _$this._userState = userState;

  AppStateBuilder() {
    AppState._initializeBuilder(this);
  }

  AppStateBuilder get _$this {
    if (_$v != null) {
      _operationState = _$v.operationState;
      _errorState = _$v.errorState?.toBuilder();
      _userState = _$v.userState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              operationState: operationState,
              errorState: _errorState?.build(),
              userState: _userState?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'errorState';
        _errorState?.build();
        _$failedField = 'userState';
        _userState?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

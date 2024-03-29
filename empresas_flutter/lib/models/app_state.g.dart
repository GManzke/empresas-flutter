// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final BuiltList<Enterprise> enterpriseList;
  @override
  final ErrorState errorState;
  @override
  final UserState userState;
  @override
  final bool isLoading;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {this.enterpriseList, this.errorState, this.userState, this.isLoading})
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
        enterpriseList == other.enterpriseList &&
        errorState == other.errorState &&
        userState == other.userState &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, enterpriseList.hashCode), errorState.hashCode),
            userState.hashCode),
        isLoading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('enterpriseList', enterpriseList)
          ..add('errorState', errorState)
          ..add('userState', userState)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  ListBuilder<Enterprise> _enterpriseList;
  ListBuilder<Enterprise> get enterpriseList =>
      _$this._enterpriseList ??= new ListBuilder<Enterprise>();
  set enterpriseList(ListBuilder<Enterprise> enterpriseList) =>
      _$this._enterpriseList = enterpriseList;

  ErrorStateBuilder _errorState;
  ErrorStateBuilder get errorState =>
      _$this._errorState ??= new ErrorStateBuilder();
  set errorState(ErrorStateBuilder errorState) =>
      _$this._errorState = errorState;

  UserStateBuilder _userState;
  UserStateBuilder get userState =>
      _$this._userState ??= new UserStateBuilder();
  set userState(UserStateBuilder userState) => _$this._userState = userState;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  AppStateBuilder() {
    AppState._initializeBuilder(this);
  }

  AppStateBuilder get _$this {
    if (_$v != null) {
      _enterpriseList = _$v.enterpriseList?.toBuilder();
      _errorState = _$v.errorState?.toBuilder();
      _userState = _$v.userState?.toBuilder();
      _isLoading = _$v.isLoading;
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
              enterpriseList: _enterpriseList?.build(),
              errorState: _errorState?.build(),
              userState: _userState?.build(),
              isLoading: isLoading);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'enterpriseList';
        _enterpriseList?.build();
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

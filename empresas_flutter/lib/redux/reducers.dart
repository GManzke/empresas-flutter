import 'package:empresas_flutter/features/enterprise_list/redux/enterprise_list_reducers.dart';
import 'package:empresas_flutter/features/login/redux/login_reducers.dart';
import 'package:empresas_flutter/models/app_state.dart';
import 'package:redux/redux.dart';

import 'actions.dart';

final appReducers = combineReducers<AppState>([
  TypedReducer<AppState, StartLoadingAction>(_startLoadingReducer),
  TypedReducer<AppState, StopLoadingAction>(_stopLoadingReducer),
  TypedReducer<AppState, UpdateErrorAction>(_errorReducer),
  enterpriseListReducers,
  loginReducers,
]);

AppState _startLoadingReducer(AppState oldState, action) =>
    oldState.rebuild((b) => b.isLoading = true);

AppState _stopLoadingReducer(AppState oldState, action) =>
    oldState.rebuild((b) => b.isLoading = false);

AppState _errorReducer(AppState oldState, action) =>
    oldState.rebuild((b) => b.errorState.replace(action.errorState));

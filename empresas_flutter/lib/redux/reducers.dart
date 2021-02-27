import 'package:empresas_flutter/features/login/redux/login_reducers.dart';
import 'package:empresas_flutter/models/app_state.dart';
import 'package:redux/redux.dart';

import 'actions.dart';

final appReducers = combineReducers<AppState>([
  TypedReducer<AppState, UpdateOperationStateAction>(_operationStateReducer),
  TypedReducer<AppState, UpdateErrorAction>(_errorReducer),
  loginReducers,
]);

AppState _operationStateReducer(AppState oldState, action) =>
    oldState.rebuild((b) => b.operationState = action.operationState);

AppState _errorReducer(AppState oldState, action) =>
    oldState.rebuild((b) => b.errorState.replace(action.errorState));

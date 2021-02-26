import 'package:empresas_flutter/models/app_state.dart';
import 'package:redux/redux.dart';

import '../actions/actions.dart';

final operationStateReducer = combineReducers<AppState>([
  TypedReducer<AppState, UpdateOperationStateAction>(_operationStateReducer)
]);

AppState _operationStateReducer(AppState oldState, action) =>
    oldState.rebuild((b) => b.operationState = action.operationState);

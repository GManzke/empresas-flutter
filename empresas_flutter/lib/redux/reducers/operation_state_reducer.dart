import 'package:empresas_flutter/models/operation_state.dart';
import 'package:redux/redux.dart';

import '../actions/actions.dart';

final operationStateReducer = combineReducers<OperationState>([
  TypedReducer<OperationState, UpdateOperationStateAction>(
      _operationStateReducer)
]);

OperationState _operationStateReducer(_, action) => action.operationState;

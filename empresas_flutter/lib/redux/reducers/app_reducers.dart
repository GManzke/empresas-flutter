import 'package:empresas_flutter/models/app_state.dart';

import 'operation_state_reducer.dart';
import 'user_reducer.dart';

AppState appReducers(AppState state, action) {
  return state.rebuild((b) => b
    ..operationState = operationStateReducer(state.operationState, action)
    ..user.replace(userReducer(state.user, action) ?? state.user));
}

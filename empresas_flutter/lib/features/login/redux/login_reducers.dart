import 'package:empresas_flutter/models/app_state.dart';
import 'package:redux/redux.dart';

import 'login_actions.dart';

final loginReducers = combineReducers<AppState>([
  TypedReducer<AppState, UpdateUserAction>(_userReducer),
]);

AppState _userReducer(AppState oldState, action) =>
    oldState.rebuild((b) => b.userState.replace(action.userState));

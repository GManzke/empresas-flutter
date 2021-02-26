import 'package:empresas_flutter/models/app_state.dart';
import 'package:redux/redux.dart';

import '../actions/actions.dart';

final userReducer = combineReducers<AppState>(
    [TypedReducer<AppState, UpdateUserAction>(_userReducer)]);

AppState _userReducer(AppState oldState, action) =>
    oldState.rebuild((b) => b.user.replace(action.user));

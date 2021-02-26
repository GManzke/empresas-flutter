import 'package:empresas_flutter/models/user.dart';
import 'package:redux/redux.dart';

import '../actions/actions.dart';

final userReducer =
    combineReducers<User>([TypedReducer<User, UpdateUserAction>(_userReducer)]);

User _userReducer(_, action) => action.user.toBuilder();

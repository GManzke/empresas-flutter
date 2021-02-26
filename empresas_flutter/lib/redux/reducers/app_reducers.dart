import 'package:empresas_flutter/models/app_state.dart';
import 'package:redux/redux.dart';

import 'operation_state_reducer.dart';
import 'user_reducer.dart';

final appReducers =
    combineReducers<AppState>([operationStateReducer, userReducer]);

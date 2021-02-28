import 'package:empresas_flutter/features/enterprise_list/redux/enterprise_list_actions.dart';
import 'package:empresas_flutter/models/app_state.dart';
import 'package:redux/redux.dart';

final enterpriseListReducers = combineReducers<AppState>([
  TypedReducer<AppState, UpdateEnterpriseList>(_updateEnterpriseListReducer),
]);

AppState _updateEnterpriseListReducer(AppState oldState, action) =>
    oldState.rebuild((b) => b.enterpriseList.replace(action.enterpriseList));

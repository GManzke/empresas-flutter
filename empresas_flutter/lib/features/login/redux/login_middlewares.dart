import 'dart:convert';

import 'package:empresas_flutter/extensions/store_extension.dart';
import 'package:empresas_flutter/features/login/redux/login_actions.dart';
import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/models/user_state.dart';
import 'package:empresas_flutter/navigation/app_routes.dart';
import 'package:empresas_flutter/navigation/redux/navigation_actions.dart';
import 'package:empresas_flutter/redux/actions.dart';
import 'package:empresas_flutter/repository/repository.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createLogInMiddleware(Repository repository) => [
      TypedMiddleware<AppState, AuthenticateUserAction>(
          _authenticateUserMiddleware(repository)),
    ];

Middleware<AppState> _authenticateUserMiddleware(Repository repository) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    try {
      store.dispatch(StartLoadingAction());
      final response = await repository.authenticateUser(
          password: action.password, email: action.email);

      final bodyData = json.decode(response.body);

      if (bodyData['success'] == true) {
        store.dispatch(UpdateUserAction(UserState((b) => b
          ..investorName = bodyData['investor']['investor_name']
          ..email = 'email')));
        store.dispatch(NavigateReplaceAction(AppRoutes.enterprise_list));
      } else {
        store.operationFail(
            major: 'Credenciais inválidas, verifique e tente novamente');
      }
    } catch (e) {
      print(e);
      store.operationFail(
          major:
              'Não foi possível realizar o login, tente novamente mais tarde');
    } finally {
      store.dispatch(StopLoadingAction());
    }
  };
}

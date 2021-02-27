import 'dart:convert';

import 'package:empresas_flutter/extensions/store_extension.dart';
import 'package:empresas_flutter/features/login/redux/login_actions.dart';
import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/models/user_state.dart';
import 'package:empresas_flutter/repository/repository.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createLogInMiddleware(Repository repository) => [
      TypedMiddleware<AppState, AuthenticateUserAction>(
          _authenticateUserMiddleware(repository)),
    ];

Middleware<AppState> _authenticateUserMiddleware(Repository repository) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    try {
      store.operationPending();
      final response = await repository.authenticateUser(
          password: action.password, email: action.email);

      final bodyData = json.decode(response.body);

      if (bodyData['success'] == 200) {
        store.dispatch(UpdateUserAction(UserState((b) => b
          ..investorName = bodyData['investor']['investor_name']
          ..email = 'email')));
      } else {
        store.operationFail(
            major: 'Credenciais inválidas, verifique e tente novamente');
      }
    } catch (e) {
      print(e);
      store.operationFail(
          major:
              'Não foi possível realizar o login, tente novamente mais tarde');
    }
  };
}

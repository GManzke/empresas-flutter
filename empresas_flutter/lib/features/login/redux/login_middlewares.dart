import 'dart:convert';

import 'package:empresas_flutter/auth/auth_credentials.dart';
import 'package:empresas_flutter/auth/auth_credentials_actions.dart';
import 'package:empresas_flutter/extensions/store_extension.dart';
import 'package:empresas_flutter/features/login/redux/login_actions.dart';
import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/models/user_state.dart';
import 'package:empresas_flutter/navigation/app_routes.dart';
import 'package:empresas_flutter/navigation/redux/navigation_actions.dart';
import 'package:empresas_flutter/redux/actions.dart';
import 'package:empresas_flutter/repository/repository.dart';
import 'package:empresas_flutter/repository/storage.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createLogInMiddleware(Repository repository) => [
      TypedMiddleware<AppState, AuthenticateUserAction>(
          _authenticateUserMiddleware(repository)),
      TypedMiddleware<AppState, LoadUserFromStorageAction>(
          _loadUserFromStorageMiddleware()),
      TypedMiddleware<AppState, PersistUserAction>(
          _persistUserStateMiddleware()),
      TypedMiddleware<AppState, ClearUserAction>(_clearUserStateMiddleware()),
    ];

Middleware<AppState> _authenticateUserMiddleware(Repository repository) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    try {
      store.dispatch(StartLoadingAction());
      final response = await repository.authenticateUser(
          password: action.password, email: action.email);

      final bodyData = json.decode(response.body);

      if (bodyData['success'] == true) {
        final user = UserState((b) => b
          ..investorName = bodyData['investor']['investor_name']
          ..email = 'email');

        store.dispatch(UpdateUserAction(user));

        store.dispatch(PersistUserAction(user));

        store.dispatch(PersistAuthCredentialsAction(AuthCredentials((b) => b
          ..accessToken = response.headers['access-token']
          ..client = response.headers['client']
          ..uid = response.headers['uid'])));

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

Middleware<AppState> _loadUserFromStorageMiddleware() {
  return (Store<AppState> store, action, NextDispatcher next) async {
    try {
      final user = await userStateStorage.load();

      if (user == null) {
        return store.dispatch(NavigateReplaceAction(AppRoutes.login));
      }

      store.dispatch(UpdateUserAction(user));
      store.dispatch(NavigateReplaceAction(AppRoutes.enterprise_list));
    } catch (e) {
      print(e);
      store.operationFail(major: 'Não foi possível carregar as informações');
    } finally {
      store.dispatch(StopLoadingAction());
    }
  };
}

Middleware<AppState> _persistUserStateMiddleware() =>
    (Store<AppState> store, action, NextDispatcher next) =>
        userStateStorage.save(action.userState);

Middleware<AppState> _clearUserStateMiddleware() =>
    (Store<AppState> store, action, NextDispatcher next) =>
        userStateStorage.delete();

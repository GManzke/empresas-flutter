import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/repository/storage.dart';
import 'package:redux/redux.dart';

import 'auth_credentials_actions.dart';

List<Middleware<AppState>> createAuthCredentialsMiddleware() => [
      TypedMiddleware<AppState, PersistAuthCredentialsAction>(
          _persistAuthCredentialsMiddleware()),
      TypedMiddleware<AppState, ClearAuthCredentialsAction>(
          _clearAuthCredentialsMiddleware()),
    ];

//TODO: Verificar se é necessário o await

Middleware<AppState> _persistAuthCredentialsMiddleware() {
  return (Store<AppState> store, action, NextDispatcher next) async =>
      await authCredentialsStorage.save(action.authCredentials);
}

Middleware<AppState> _clearAuthCredentialsMiddleware() {
  return (Store<AppState> store, action, NextDispatcher next) async =>
      await authCredentialsStorage.delete();
}

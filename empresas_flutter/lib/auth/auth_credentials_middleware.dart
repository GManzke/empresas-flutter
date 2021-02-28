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

Middleware<AppState> _persistAuthCredentialsMiddleware() {
  return (Store<AppState> store, action, NextDispatcher next) =>
      authCredentialsStorage.save(action.authCredentials);
}

Middleware<AppState> _clearAuthCredentialsMiddleware() {
  return (Store<AppState> store, action, NextDispatcher next) =>
      authCredentialsStorage.delete();
}

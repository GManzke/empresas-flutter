import 'package:empresas_flutter/auth/auth_credentials_middleware.dart';
import 'package:empresas_flutter/features/login/redux/middleware.dart';
import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/repository/repository.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createApplicationMiddleware() {
  final repository = Repository();
  return []..addAll(createLogInMiddleware(repository))..addAll(createAuthCredentialsMiddleware());
}

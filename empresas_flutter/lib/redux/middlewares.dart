import 'package:empresas_flutter/auth/auth_credentials_middleware.dart';
import 'package:empresas_flutter/features/login/redux/login_middlewares.dart';
import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/navigation/redux/navigation_middlewares.dart';
import 'package:empresas_flutter/repository/repository.dart';
import 'package:redux/redux.dart';

import '../main.dart';

List<Middleware<AppState>> createApplicationMiddleware() {
  final repository = Repository();
  return []
    ..addAll(createLogInMiddleware(repository))
    ..addAll(createAuthCredentialsMiddleware())
    ..addAll(createNavigationMiddleware(navigatorKey));
}

import 'dart:convert';

import 'package:empresas_flutter/configuration/app_config.dart';
import 'package:http/http.dart';

mixin LoginRepository {
  Future<Response> authenticateUser({String email, String password}) {
    return post('${AppConfig.baseUrl}/users/auth/sign_in',
        headers: {'Content-Type': 'application/json'},
        body: json.encode({"email": email, "password": password}));
  }
}

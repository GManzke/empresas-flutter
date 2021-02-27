import 'package:empresas_flutter/repository/storage.dart';

import 'auth_credentials.dart';

final authCredentialsManager = AuthCredentialsManager();

class AuthCredentialsManager {
  bool _isInit = false;
  AuthCredentials _authCredentials;

  Future<void> _init() async {
    _authCredentials = await authCredentialsStorage.load();
    _isInit = true;
  }

  Future<AuthCredentials> credentials() async {
    try {
      if (!_isInit) await _init();
      return _authCredentials;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<void> clear() async {
    await authCredentialsStorage.delete();
    _authCredentials = null;
    _isInit = false;
  }
}

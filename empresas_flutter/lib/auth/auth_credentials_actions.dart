import 'auth_credentials.dart';

class PersistAuthCredentialsAction {
  final AuthCredentials authCredentials;

  PersistAuthCredentialsAction(this.authCredentials);
}

class ClearAuthCredentialsAction {}

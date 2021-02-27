import 'package:empresas_flutter/models/user_state.dart';

class AuthenticateUserAction {
  final String password;
  final String email;

  AuthenticateUserAction({this.password, this.email});
}

class UpdateUserAction {
  final UserState userState;

  UpdateUserAction(this.userState);
}

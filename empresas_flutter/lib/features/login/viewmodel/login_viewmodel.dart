import 'package:empresas_flutter/features/login/redux/login_actions.dart';
import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/utils/viewmodel.dart';
import 'package:redux/src/store.dart';

class LoginViewModel extends ViewModel<AppState> {
  String _password;
  String _email;

  LoginViewModel(Store<AppState> store) : super(store);

  void authenticateUser() => store
      .dispatch(AuthenticateUserAction(email: _email, password: _password));

  void onSaved(String inputId, String value) {
    if (inputId == 'email') {
      _email = value;
    } else {
      _password = value;
    }
  }
}

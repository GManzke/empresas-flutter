import 'package:empresas_flutter/features/login/components/login_button.dart';
import 'package:empresas_flutter/features/login/viewmodel/login_viewmodel.dart';
import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/utils/base_layout.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

class LoginView extends BaseLayout<LoginViewModel, AppState> {
  final _formKey = GlobalKey<FormState>();

  @override
  LoginViewModel convertViewModel(Store<AppState> store) =>
      LoginViewModel(store);

  @override
  Widget layout(BuildContext ctx, LoginViewModel vm, BoxConstraints cts) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            onSaved: (value) => vm.onSaved('email', value),
          ),
          LoginButton(
            onLoginPressed: () => authenticatePressed(vm),
          )
        ],
      ),
    );
  }

  void authenticatePressed(LoginViewModel vm) {
    _formKey.currentState.save();
    vm.authenticateUser();
  }
}

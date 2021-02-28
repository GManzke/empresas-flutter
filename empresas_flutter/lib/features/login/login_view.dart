import 'package:empresas_flutter/extensions/constraints_extension.dart';
import 'package:empresas_flutter/features/login/components/login_button.dart';
import 'package:empresas_flutter/features/login/components/login_top_banner.dart';
import 'package:empresas_flutter/features/login/viewmodel/login_viewmodel.dart';
import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/utils/base_layout.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:redux/redux.dart';

import 'components/login_email_field.dart';
import 'components/login_password_field.dart';

class LoginView extends BaseLayout<LoginViewModel, AppState> {
  final _formKey = GlobalKey<FormState>();

  @override
  LoginViewModel convertViewModel(Store<AppState> store) =>
      LoginViewModel(store);

  @override
  Widget layout(BuildContext ctx, LoginViewModel vm, BoxConstraints cts) {
    _hasError(vm, ctx);
    return Column(
      children: [
        LoginTopBanner(cts: cts),
        Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(cts.padding(0.06)),
            child: Column(
              children: [
                LoginEmailField(
                  onSaved: vm.onSaved,
                ),
                SizedBox(
                  height: cts.padding(0.04),
                ),
                LoginPasswordField(
                  onSaved: vm.onSaved,
                ),
                SizedBox(
                  height: cts.padding(0.08),
                ),
                LoginButton(
                  onLoginPressed: () => authenticatePressed(vm),
                  isLoading: vm.isLoading,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  void authenticatePressed(LoginViewModel vm) {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      vm.authenticateUser();
    }
  }

  void _hasError(LoginViewModel vm, BuildContext ctx) {
    if (vm.hasError) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        showSimpleNotification(Text(vm.error.major), background: Colors.red);
        vm.clearError();
      });
    }
  }
}

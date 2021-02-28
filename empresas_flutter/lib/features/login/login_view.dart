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
    return Stack(
      children: [
        SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding:
                EdgeInsets.only(bottom: MediaQuery.of(ctx).viewInsets.bottom),
            child: Column(
              children: [
                LoginTopBanner(cts: cts),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: cts.padding(0.04)),
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
                          onLoginPressed: () => authenticatePressed(vm, ctx),
                          isLoading: vm.isLoading,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        if (vm.isLoading)
          Container(
            width: cts.maxWidth,
            height: cts.maxHeight,
            color: Colors.black.withOpacity(0.5),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
      ],
    );
  }

  void authenticatePressed(LoginViewModel vm, BuildContext ctx) {
    FocusScope.of(ctx).unfocus();
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

import 'package:empresas_flutter/features/login/redux/login_actions.dart';
import 'package:empresas_flutter/features/main/loader_viewmodel.dart';
import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/utils/base_layout.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

class LoaderView extends BaseLayout<LoaderViewModel, AppState> {
  @override
  LoaderViewModel convertViewModel(Store<AppState> store) =>
      LoaderViewModel(store);

  @override
  void onInit(Store<AppState> store) {
    store.dispatch(LoadUserFromStorageAction());
    super.onInit(store);
  }

  @override
  Widget layout(BuildContext ctx, LoaderViewModel vm, BoxConstraints cts) =>
      Center(
        child: CircularProgressIndicator(),
      );
}

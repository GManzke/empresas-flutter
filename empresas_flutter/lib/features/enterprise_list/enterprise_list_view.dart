import 'package:empresas_flutter/utils/base_layout.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

import '../../models/app_state.dart';
import 'viewmodel/enterprise_list_viewmodel.dart';

class EnterpriseListView extends BaseLayout<EnterpriseListViewModel, AppState> {
  @override
  EnterpriseListViewModel convertViewModel(Store<AppState> store) =>
      EnterpriseListViewModel(store);

  @override
  Widget layout(
      BuildContext ctx, EnterpriseListViewModel vm, BoxConstraints cts) {
    return Container();
  }
}

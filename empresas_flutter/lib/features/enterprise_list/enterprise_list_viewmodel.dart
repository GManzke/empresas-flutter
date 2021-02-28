import 'package:empresas_flutter/utils/viewmodel.dart';
import 'package:redux/redux.dart';

import '../../models/app_state.dart';

class EnterpriseListViewModel extends ViewModel<AppState> {
  EnterpriseListViewModel(Store<AppState> store) : super(store);
}

import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/utils/viewmodel.dart';
import 'package:redux/redux.dart';

class EnterpriseListViewModel extends ViewModel<AppState> {
  EnterpriseListViewModel(Store<AppState> store) : super(store);
}

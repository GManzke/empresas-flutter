import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/navigation/redux/navigation_actions.dart';
import 'package:empresas_flutter/utils/viewmodel.dart';
import 'package:redux/redux.dart';

class EnterpriseDetailViewModel extends ViewModel<AppState> {
  EnterpriseDetailViewModel(Store<AppState> store) : super(store);

  void navigateBack() => store.dispatch(NavigatePopAction());
}

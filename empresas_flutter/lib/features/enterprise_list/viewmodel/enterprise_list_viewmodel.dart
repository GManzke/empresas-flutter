import 'package:built_collection/built_collection.dart';
import 'package:empresas_flutter/features/enterprise_list/redux/enterprise_list_actions.dart';
import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/models/enterprise.dart';
import 'package:empresas_flutter/navigation/app_routes.dart';
import 'package:empresas_flutter/navigation/redux/navigation_actions.dart';
import 'package:empresas_flutter/redux/actions.dart';
import 'package:empresas_flutter/utils/error_viewmodel.dart';
import 'package:empresas_flutter/utils/viewmodel.dart';
import 'package:redux/redux.dart';

class EnterpriseListViewModel extends ViewModel<AppState>
    with ErrorHandlerViewModel {
  EnterpriseListViewModel(Store<AppState> store) : super(store);

  void searchEnterprise(String name) =>
      store.dispatch(SearchEnterpriseAction(name));

  void goToDetails(Enterprise info) => store
      .dispatch(NavigatePushAction(AppRoutes.enterprise_detail, args: info));

  void logOut() => store.dispatch(LogOutAction());

  BuiltList<Enterprise> get enterpriseList => store.state.enterpriseList;

  bool get isLoading => store.state.isLoading;
}

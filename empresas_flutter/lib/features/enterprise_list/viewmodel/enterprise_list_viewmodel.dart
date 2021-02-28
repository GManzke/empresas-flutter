import 'package:built_collection/built_collection.dart';
import 'package:empresas_flutter/features/enterprise_list/redux/enterprise_list_actions.dart';
import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/models/enterprise.dart';
import 'package:empresas_flutter/utils/viewmodel.dart';
import 'package:redux/redux.dart';

class EnterpriseListViewModel extends ViewModel<AppState> {
  EnterpriseListViewModel(Store<AppState> store) : super(store);

  void searchEnterprise(String name) =>
      store.dispatch(SearchEnterpriseAction(name));

  BuiltList<Enterprise> get enterpriseList => store.state.enterpriseList;
}

import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/utils/viewmodel.dart';
import 'package:redux/redux.dart';


class LoaderViewModel extends ViewModel<AppState> {
  LoaderViewModel(Store<AppState> store) : super(store);
}

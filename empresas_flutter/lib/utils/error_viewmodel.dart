import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/models/error_state.dart';
import 'package:empresas_flutter/redux/actions.dart';
import 'package:empresas_flutter/utils/viewmodel.dart';

mixin ErrorHandlerViewModel on ViewModel<AppState> {
  void clearError() => store.dispatch(UpdateErrorAction(ErrorState()));

  bool get hasError => store.state.errorState.major != null;

  ErrorState get error => store.state.errorState;
}

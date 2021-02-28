import 'package:empresas_flutter/models/error_state.dart';

class StartLoadingAction {}

class StopLoadingAction {}

class UpdateErrorAction {
  final ErrorState errorState;

  UpdateErrorAction(this.errorState);
}

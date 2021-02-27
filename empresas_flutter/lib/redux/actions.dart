import 'package:empresas_flutter/auth/auth_credentials.dart';
import 'package:empresas_flutter/models/error_state.dart';
import 'package:empresas_flutter/models/operation_state.dart';
import 'package:empresas_flutter/models/user_state.dart';

class UpdateOperationStateAction {
  final OperationState operationState;

  UpdateOperationStateAction(this.operationState);
}

class UpdateErrorAction {
  final ErrorState errorState;

  UpdateErrorAction(this.errorState);
}
class UpdateUserAction {
  final UserState userState;

  UpdateUserAction(this.userState);
}

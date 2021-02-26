import 'package:empresas_flutter/models/operation_state.dart';
import 'package:empresas_flutter/models/user.dart';

class UpdateOperationStateAction {
  final OperationState operationState;

  UpdateOperationStateAction(this.operationState);
}

class UpdateUserAction {
  final User user;

  UpdateUserAction(this.user);
}

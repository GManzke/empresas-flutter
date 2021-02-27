import 'package:empresas_flutter/models/error_state.dart';
import 'package:empresas_flutter/models/operation_state.dart';
import 'package:empresas_flutter/redux/actions.dart';
import 'package:flutter/cupertino.dart';
import 'package:redux/redux.dart';

extension StoreExtension on Store {
  void operationPending() {
    this.dispatch(
        UpdateOperationStateAction(OperationState.OPERATION_SUCCEEDED));
  }

  void operationSuccess() {
    this.dispatch(
        UpdateOperationStateAction(OperationState.OPERATION_SUCCEEDED));
  }

  void operationFail(
      {String minor = 'Ocorreu um erro', @required String major}) {
    this.dispatch(UpdateErrorAction(ErrorState((b) => b
      ..minor = minor
      ..major = major)));
    this.dispatch(UpdateOperationStateAction(OperationState.OPERATION_FAILED));
  }
}
//TODO: use ..

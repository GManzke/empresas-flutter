import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/models/operation_state.dart';
import 'package:empresas_flutter/models/user_state.dart';
import 'package:empresas_flutter/redux/actions.dart';
import 'package:empresas_flutter/redux/reducers.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:redux/redux.dart';

main() {
  Store<AppState> store;

  setUp(() => store =
      Store<AppState>(appReducers, initialState: AppState(), middleware: []));

  group('OperationState reducers', () {
    test('Should change operation state to pending', () {
      store.dispatch(
          UpdateOperationStateAction(OperationState.OPERATION_PENDING));

      expect(store.state.operationState, OperationState.OPERATION_PENDING);
    });

    test('Should change operation state to succeeded', () {
      store.dispatch(
          UpdateOperationStateAction(OperationState.OPERATION_SUCCEEDED));

      expect(store.state.operationState, OperationState.OPERATION_SUCCEEDED);
    });
  });

  group('User reducers', () {
    test('Should add user to the store', () {
      final investorName = 'Usuário de teste';
      final email = 'teste@gmail.com';

      store.dispatch(UpdateUserAction(UserState((b) => b
        ..investorName = investorName
        ..email = email)));

      expect(store.state.userState?.investorName, investorName);
      expect(store.state.userState?.email, email);
    });
  });
}

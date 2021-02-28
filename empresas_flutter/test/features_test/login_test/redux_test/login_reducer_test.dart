import 'package:empresas_flutter/features/login/redux/login_actions.dart';
import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/models/user_state.dart';
import 'package:empresas_flutter/redux/reducers.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:redux/redux.dart';

main() {
  Store<AppState> store;

  setUp(() => store =
      Store<AppState>(appReducers, initialState: AppState(), middleware: []));

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

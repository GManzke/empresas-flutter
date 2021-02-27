import 'package:empresas_flutter/features/login/redux/actions.dart';
import 'package:empresas_flutter/features/login/redux/middleware.dart';
import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/redux/reducers.dart';
import 'package:empresas_flutter/repository/repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:redux/redux.dart';

class MockRepository extends Mock implements Repository {}

main() {
  final repository = MockRepository();
  Store<AppState> store;

  setUp(() {
    store = Store<AppState>(appReducers,
        initialState: AppState(),
        middleware: createLogInMiddleware(repository));
  });

  test('Should try to authenticate user', () {
    store.dispatch(AuthenticateUserAction(
        password: '12341234', email: 'testeapple@ioasys.com.br'));

    verify(repository.authenticateUser(
        password: anyNamed('password'), email: anyNamed('email')));
  });
}

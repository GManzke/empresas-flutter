import 'package:empresas_flutter/features/enterprise_list/redux/enterprise_list_actions.dart';
import 'package:empresas_flutter/features/enterprise_list/redux/enterprise_list_middlewares.dart';
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
        middleware: createEnterpriseListMiddleware(repository));
  });

  test('Should try to fetch enterprises', () async {
    store.dispatch(SearchEnterpriseAction('a'));

    await untilCalled(repository.getEnterprises(
        accessToken: anyNamed('accessToken'),
        client: anyNamed('client'),
        name: anyNamed('name'),
        uid: anyNamed('uid')));
  });
}

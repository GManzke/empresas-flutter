import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/redux/actions.dart';
import 'package:empresas_flutter/redux/reducers.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:redux/redux.dart';

main() {
  Store<AppState> store;

  setUp(() => store =
      Store<AppState>(appReducers, initialState: AppState(), middleware: []));

  group('Loading reducers', () {
    test('Should start loading', () {
      store.dispatch(StartLoadingAction());

      expect(store.state.isLoading, true);
    });

    test('Should stop loading', () {
      store.dispatch(StopLoadingAction());

      expect(store.state.isLoading, false);
    });
  });
}

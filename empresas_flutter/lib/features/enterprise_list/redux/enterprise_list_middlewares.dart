import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:empresas_flutter/auth/auth_credentials_manager.dart';
import 'package:empresas_flutter/extensions/store_extension.dart';
import 'package:empresas_flutter/features/enterprise_list/redux/enterprise_list_actions.dart';
import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/models/enterprise.dart';
import 'package:empresas_flutter/redux/actions.dart';
import 'package:empresas_flutter/repository/repository.dart';
import 'package:empresas_flutter/serializer/serializers.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createEnterpriseListMiddleware(
        Repository repository) =>
    [
      TypedMiddleware<AppState, SearchEnterpriseAction>(
          _searchEnterpriseMiddleware(repository)),
    ];

Middleware<AppState> _searchEnterpriseMiddleware(Repository repository) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    try {
      store.dispatch(StartLoadingAction());
      final credentials = await authCredentialsManager.credentials();
      final response = await repository.getEnterprises(
        accessToken: credentials?.accessToken,
        client: credentials?.client,
        uid: credentials?.uid,
        name: action.name,
      );

      switch (response.statusCode) {
        case 200:
          final list = json.decode(response.body)['enterprises'];

          final enterpriseList = BuiltList<Enterprise>(list.map((enterprise) =>
              serializers.deserializeWith(Enterprise.serializer, enterprise)));

          store.dispatch(UpdateEnterpriseList(enterpriseList));
          break;
        case 401:
          store.operationFail(major: 'Sessão expirada, faça login novamente');
          store.dispatch(LogOutAction());
          break;
        default:
          store.operationFail(major: 'Não foi possível carregar as empresas');
          break;
      }
    } catch (e) {
      print(e);
      store.operationFail(
          major:
              'Não foi possível carregar as empresas, tente novamente mais tarde');
    } finally {
      store.dispatch(StopLoadingAction());
    }
  };
}

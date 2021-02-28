import 'package:empresas_flutter/configuration/app_config.dart';
import 'package:http/http.dart';

mixin EnterpriseListRepository {
  Future<Response> getEnterprises(
      {String accessToken,
      String client,
      String type,
      String name,
      String uid}) {
    final uri = Uri.https(AppConfig.authority, AppConfig.path,
        {'enterprise_types': type, 'name': name});
    return get(uri, headers: {
      'Content-Type': 'application/json',
      'access-token': accessToken,
      'client': client,
      'uid': uid
    });
  }
}

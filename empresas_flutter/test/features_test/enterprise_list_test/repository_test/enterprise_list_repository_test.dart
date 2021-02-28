import 'dart:io';

import 'package:empresas_flutter/repository/repository.dart';
import 'package:flutter_test/flutter_test.dart';

class _MyHttpOverrides extends HttpOverrides {}

main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = _MyHttpOverrides();
  final repository = Repository();

  test('Should get enterprises', () async {
    final authResponse = await repository.authenticateUser(
        password: '12341234', email: 'testeapple@ioasys.com.br');

    final response = await repository.getEnterprises(
        name: 'a',
        accessToken: authResponse.headers['access-token'],
        client: authResponse.headers['client'],
        uid: authResponse.headers['uid']);

    expect(response.statusCode, 200);
  });
}

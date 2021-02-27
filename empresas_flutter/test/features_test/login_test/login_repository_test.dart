import 'dart:convert';
import 'dart:io';

import 'package:empresas_flutter/repository/repository.dart';
import 'package:flutter_test/flutter_test.dart';

class _MyHttpOverrides extends HttpOverrides {}

main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = _MyHttpOverrides();

  test('Should authenticate user', () async {
    final response = await Repository().authenticateUser(
        password: '12341234', email: 'testeapple@ioasys.com.br');

    final data = json.decode(response.body);

    expect(response.statusCode, 200);
    expect(data['success'], true);
  });
}

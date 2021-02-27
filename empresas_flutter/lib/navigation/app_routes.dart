import 'package:empresas_flutter/features/main/LoaderView.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const enterprise_detail = '/enterprise_detail';
  static const enterprise_list = '/enterprise_list';
  static const loader = '/loader';
  static const login = '/login';

  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      default:
        return MaterialPageRoute(builder: (_) => LoaderView());
    }
  }
}
